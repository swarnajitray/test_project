# This is is done by nirob date(11-12-2018)
from  config.dbconnection import Dbconnection as Dbc
from  config.dbconnectionmongo import MongodbDbconnection as MongoDb
import pandas as pd
import json
import pymysql
import pytz
import datetime
import numpy
numpy.warnings.filterwarnings('ignore')
class unapproveUserModel():
    #start the connection
    def __init__(self):
        #FOR mysql CONNECTION
        self.db = Dbc.get_connection()
        self.cur = self.db.cursor(pymysql.cursors.DictCursor)
        #FOR MONGODB CONNECTION
        self.mongodb = MongoDb.get_connection_mongo()

    #find unapprove user list
    def findUnapproveUser(self):
        now = datetime.datetime.now()
        start_date = now.date()
        #start_date = '2016-12-11'
        temp_end_date = pd.to_datetime(start_date) + pd.DateOffset(days=-3)
        end_date = temp_end_date.strftime('%Y-%m-%d')
        #end_date = '2018-12-12'
        query = "SELECT `u`.`id`, `u`.`is_email_id_verified`, CONCAT_WS(' ', `up`.`f_name`, `up`.`m_name`, up.l_name) AS name, `u`.`mobile_number`, `u`.`email_id`, `mp`.`city_name` AS `education_city`, `up`.`permanent_city`, `col`.`college_name`, `edu`.`name_of_institution`, IF(up.date_of_birth IS NULL, '-', up.date_of_birth) AS date_of_birth, `u`.`user_since_timestamp`, IF(uapv.complete_approval_timestamp IS NULL, '-', uapv.complete_approval_timestamp) AS date_of_approval, IF(u.profile_update_timestamp IS NULL, '-', u.profile_update_timestamp) AS profile_update_timestamp, `md`.`degree_name`, CONCAT_WS(' ', `a`.`f_name`, a.l_name) AS last_assigned, `sc`.`subcat_name` AS `last_status` FROM `tbl_users` AS `u` LEFT JOIN `tbl_user_profile_basics` AS `up` ON `up`.`fk_user_id` = `u`.`id` LEFT JOIN `tbl_user_approvals` AS `uapv` ON `uapv`.`fk_user_id` = `u`.`id` LEFT JOIN `tbl_user_profile_educations` AS `edu` ON `edu`.`fk_user_id` = `u`.`id` AND `edu`.`show_in_profile`=1 LEFT JOIN `master_colleges` AS `col` ON `col`.`id` = `edu`.`fk_college_id` AND `edu`.`show_in_profile`= 1 LEFT JOIN `master_pincodes` AS `mp` ON `mp`.`id` = `edu`.`fk_pincode_id` LEFT JOIN `master_degrees` AS `md` ON `md`.`id` = `edu`.`fk_degree_id` LEFT JOIN `tbl_call_reports` AS `cr` ON `cr`.`fk_user_id` = `u`.`id` LEFT JOIN `tbl_admins` AS `a` ON `a`.`id` = `cr`.`fk_caller_id` LEFT JOIN `tbl_call_sub_categories` AS `sc` ON `sc`.`id` = `cr`.`call_status_category`"

        if(str(start_date) != '0000-00-00'):
            st_date = self.convertAdminTImezoneToUTC(str(start_date)+" 00:00:00")
        else:
            st_date= None
        if(str(end_date) != '0000-00-00'):
            en_date = self.convertAdminTImezoneToUTC(str(end_date)+" 23:59:59")
        else:
            en_date= None

        try:

            if(str(st_date) !='' and en_date is None):
                self.cur.execute(query + " WHERE u.profile_update_timestamp >= '"+str(st_date)+"' AND `uapv`.`complete_approval_timestamp` IS NULL AND `u`.`is_test_user` = 'N' AND `uapv`.`fk_user_id` IS NULL ORDER BY `u`.`id` ASC")
                allData = self.cur.fetchall()
                return allData
            elif((st_date is None) and str(en_date) !=''):
                self.cur.execute(query + " WHERE u.profile_update_timestamp <= '"+str(en_date)+"' AND `uapv`.`complete_approval_timestamp` IS NULL AND `u`.`is_test_user` = 'N' AND `uapv`.`fk_user_id` IS NULL ORDER BY `u`.`id` ASC")
                allData = self.cur.fetchall()
                return allData
            elif((st_date is not None) and (en_date is not None)):
                self.cur.execute(query + " WHERE u.profile_update_timestamp >= '"+str(st_date)+"' AND u.profile_update_timestamp <= '"+str(en_date)+"' AND `uapv`.`complete_approval_timestamp` IS NULL AND `u`.`is_test_user` = 'N' AND `uapv`.`fk_user_id` IS NULL ORDER BY `u`.`id` ASC LIMIT 0, 50")
                allData = self.cur.fetchall()
            #print(self.cur._last_executed)
            #print(allData)
            mainarr = []
            for adres in allData:
                newarr = {}
                if(adres["id"] is not None):
                    newarr["user_id"] = adres["id"]
                newarr['is_email_id_verified'] = adres['is_email_id_verified']
                if(adres["name"] == ''):
                    profileDetails = self.getProfiledetails(adres["id"])
                    if(profileDetails is None):
                        newarr["name"] =  adres["name"]
                        newarr["permanent_city"] = adres["permanent_city"]
                        newarr["date_of_birth"] = adres["date_of_birth"]
                    else:
                        newarr["name"] = profileDetails["name"]
                        newarr["permanent_city"] = profileDetails["permanent_city"]
                        newarr["date_of_birth"] = profileDetails["date_of_birth"]
                else:
                    newarr["name"] =  adres["name"]
                    newarr["permanent_city"] = adres["permanent_city"]
                    newarr["date_of_birth"] = adres["date_of_birth"]
                if(adres["college_name"] is None):
                    newarr["college_name"]=adres["college_name"]
                else:
                    newarr["college_name"] = adres["name_of_institution"]
                newarr["mobile_number"] = adres["mobile_number"]
                newarr["email_id"] = adres["email_id"]
                newarr["user_since_timestamp"] = adres["user_since_timestamp"]
                newarr["profile_update_timestamp"] = adres["profile_update_timestamp"]
                newarr["last_assigned"] = adres["last_assigned"]
                newarr["last_status"] = adres["last_status"]
                #get collegedetails with id
                if(newarr["college_name"] is None):
                    try:
                        c_details = self.collegeDetails(adres["id"])
                        if(c_details is not None):
                            if(c_details["college_name"] is not None):
                                newarr["college_name"] =c_details["college_name"]
                            else:newarr["college_name"] = c_details["name_of_institution"]
                        else:newarr["degree_name"] = adres["degree_name"]
                        if(c_details is not None):
                            newarr["degree_name"] = adres["degree_name"]
                    except Exception as e:
                        print('error in getting college details')
                newarr["current_caller"] = self.getAdminName(adres["id"], 'caller_id')
                newarr["approver"] = self.getAdminName(adres["id"], 'approver_id')
                newarr["last_disposition"] = self.getLastDisposition(adres["id"])
                # return in main array
                mainarr.append(newarr)
            return mainarr
        except Exception as e:
            #print("error for report fetch" +self.cur._last_executed)
            print('error'+str(e))
            return 0

    # convert datetime
    def convertAdminTImezoneToUTC(self, d):
        offset='+00:00'
        serverTimezone='+05:30'
        sql="select CONVERT_TZ('"+str(d)+"', '"+str(serverTimezone)+"', '"+str(offset)+"') as timezoneDate"
        self.cur.execute(sql)
        allData = self.cur.fetchone()
        return allData["timezoneDate"]

    #get profile profileDetails
    def getProfiledetails(self, id):
        sql = "SELECT CONCAT_WS(' ', `tpb`.`f_name`, `tpb`.`m_name`, tpb.l_name) AS name, `tpb`.`permanent_city`, IF(tpb.date_of_birth IS NULL, '-', tpb.date_of_birth) AS date_of_birth FROM `tbl_user_tmp_profile_basics` AS `tpb` WHERE `tpb`.`fk_user_id` = '"+str(id)+"'"
        try:
            self.cur.execute(sql)
            allData = self.cur.fetchone()
            return allData
        except Exception as e:
            print('profile details fetch error')
            return 0
        #print(self.cur._last_executed)

    # get college details
    def collegeDetails(self, id):
        sql ='SELECT `mp`.`city_name`, `col`.`college_name`, `tpe`.`name_of_institution`, `md`.`degree_name` FROM `tbl_user_tmp_profile_educations` AS `tpe` LEFT JOIN `master_colleges` AS `col` ON `col`.`id` = `tpe`.`fk_college_id` AND `tpe`.`show_in_profile`=1 LEFT JOIN `master_pincodes` AS `mp` ON `mp`.`id` = `tpe`.`fk_pincode_id` LEFT JOIN `master_degrees` AS `md` ON `md`.`id` = `tpe`.`fk_degree_id` WHERE `tpe`.`fk_user_id` = "'+str(id)+'" AND `tpe`.`show_in_profile` = 1'
        try:
            self.cur.execute(sql)
            allData = self.cur.fetchone()
            #print(allData)
            return allData
        except Exception as e:
            print('college details fetch error')
            return 0
        #print(self.cur._last_executed)

    #get admin approve status
    def getAdminName(self, user_id, type):
        sql = "SELECT CONCAT_WS(' ', `ta`.`f_name`, ta.l_name) AS name FROM `tbl_call_approver_assignment` AS `ca` INNER JOIN `tbl_admins` AS `ta` ON `ta`.`id` = `ca`.`"+str(type)+"` WHERE `ca`.`fk_user_id` = '"+str(user_id)+"'"
        try:
            self.cur.execute(sql)
            allData = self.cur.fetchone()
            if(allData is not None):
                return allData["name"]
        except Exception as e:
            print('user approve result fetching error')
        #print(self.cur._last_executed)

    # get last disposition
    def getLastDisposition(self, user_id):
        sql = "SELECT `cssc`.`subcat_name` FROM `tbl_call_sub_sub_categories` AS `cssc` WHERE cssc.id = (SELECT tucs.fk_sub_sub_cat_id FROM tbl_user_caller_status AS tucs WHERE tucs.fk_user_id = '"+str(user_id)+"'  ORDER BY tucs.added_timestamp DESC LIMIT 0,1)"
        try:
            self.cur.execute(sql)
            allData = self.cur.fetchone()
            if(allData is not None):
                return allData["subcat_name"]
        except Exception as e:
            print('last dipositon result fetching error')
        #print(self.cur._last_executed)

    # Aadhaar status
    def getAadhaarStatus(self, user_id, template_id):
        sql = "SELECT front_file_name, back_file_name FROM tbl_user_tmp_profile_kycs WHERE fk_kyc_template_id='"+str(template_id)+"' AND fk_user_id='"+str(user_id)+"'"
        try:
            self.cur.execute(sql)
            allData = self.cur.fetchone()
            #print(self.cur._last_executed)
            count = self.cur.rowcount
            if(count > 0):
                return allData
            else:
                sql2 = "SELECT front_file_name, back_file_name FROM tbl_user_profile_kycs WHERE fk_kyc_template_id='"+str(template_id)+"' AND fk_user_id='"+str(user_id)+"'"
                try:
                    self.cur.execute(sql2)
                    #print(self.cur._last_executed)
                    allData = self.cur.fetchone()
                    count = self.cur.rowcount
                    if(count > 0):
                        return allData
                    else:
                        return 0
                except Exception as e:
                    print('tbl_user_profile_kycs error' + str(e))
        except Exception as e:
            print('tbl_user_tmp_profile_kycs error' + str(e))

    # Selfie status 
    def getSelfieStatus(self, user_id):
        sql2 = "SELECT has_profile_picture FROM tbl_user_tmp_profile_basics WHERE fk_user_id='"+str(user_id)+"'"
        try:
            self.cur.execute(sql2)
            allData2 = self.cur.fetchone()
            #print(self.cur._last_executed)
            count = self.cur.rowcount
            if(count > 0):
                return allData2
            else:
                return 0
        except Exception as e:
            print('tbl_user_tmp_profile_basics error' + str(e))

    # Video status 
    def getVideoStatus(self, user_id):
        sql2 = "SELECT COUNT(id) AS total_cnt FROM tbl_user_tmp_profile_basics  WHERE fk_user_id='"+str(user_id)+"'"
        try:
            self.cur.execute(sql2)
            allData2 = self.cur.fetchone()
            #print(self.cur._last_executed)
            count = self.cur.rowcount
            if(count > 0):
                return allData2
            else:
                return 0
        except Exception as e:
            print('tbl_user_tmp_profile_basics video error' + str(e))

    # Aadhaar Status
    def getAadhaarPercent(self, user_id):
        sql = "SELECT kyc_data, is_front_file_uploaded, is_back_file_uploaded FROM tbl_user_tmp_profile_kycs WHERE fk_kyc_template_id=3 AND fk_user_id='"+str(user_id)+"'"
        try:
            self.cur.execute(sql)
            allData = self.cur.fetchone()
            #print(self.cur._last_executed)
            count = self.cur.rowcount
            if(count > 0):
                return allData
            else:
                return 0
        except Exception as e:
            print('aadhar model error' + str(e))

    # Personal details
    def getPersonalDetails(self, user_id):
        # fetch data from profile basic
        mainData = {}
        sql2 = "SELECT f_name, l_name, date_of_birth, fk_marital_status_id, fathers_name, permanent_street1, permanent_zipcode, fk_residence_status_id, residence_street1, residence_zipcode FROM tbl_user_tmp_profile_basics WHERE fk_user_id ='"+str(user_id)+"'"
        try:
            self.cur.execute(sql2)
            allData2 = self.cur.fetchone()
            count = self.cur.rowcount
            if(count > 0):
                mainData.update(allData2.copy())
            else:
                mainData['f_name'] = None
                mainData['l_name'] = None
                mainData['date_of_birth'] = None
                mainData['fk_marital_status_id'] = None
                mainData['fathers_name'] = None
                mainData['permanent_street1'] = None
                mainData['permanent_zipcode'] = None
                mainData['fk_residence_status_id'] = None
                mainData['residence_street1'] = None
                mainData['residence_zipcode'] = None
        except Exception as e:
            print('tbl_user_tmp_profile_basics for personaldetails error ' + str(e))

        # fetch what's up data 
        sql3 = "SELECT alternate_mobile_no FROM tbl_user_alternative_mobile WHERE fk_user_id ='"+str(user_id)+"'"
        try:
            self.cur.execute(sql3)
            allData3 = self.cur.fetchone()
            count = self.cur.rowcount
            if(count > 0):
                mainData['whatsup'] = 'Y'
            else:
                mainData['whatsup'] = 'N'
            #mainData += mainData['whatsup']
        except Exception as e:
            print('whatsup detais error' + str(e))

        return mainData

    # get Student details
    def getStudentDetails(self, user_id):
        mainData = {}
        # fetch data from profile basic
        sql2 = "SELECT fk_college_id, fk_pincode_id, year_of_joining, year_of_graduation, fk_degree_type_id, fk_degree_id, fk_field_of_study_id, fk_attendence_id, type_of_grade FROM tbl_user_tmp_profile_educations WHERE fk_user_id ='"+str(user_id)+"'"
        try:
            self.cur.execute(sql2)
            allData2 = self.cur.fetchone()
            #print(self.cur._last_executed)
            count = self.cur.rowcount
            if(count > 0):
                #print(allData2)
                mainData.update(allData2.copy())
            else:
                mainData['fk_college_id'] = None
                mainData['fk_pincode_id'] = None
                mainData['year_of_joining'] = None
                mainData['year_of_graduation'] = None
                mainData['fk_degree_type_id'] = None
                mainData['fk_degree_id'] = None
                mainData['fk_field_of_study_id'] = None
                mainData['fk_attendence_id'] = None
                mainData['type_of_grade'] = None
        except Exception as e:
            print('tbl_user_tmp_profile_educations for studentdetails error ' + str(e))

        # fetch profile kyc data 
        sql3 = "SELECT id FROM tbl_user_tmp_profile_kycs WHERE fk_user_id ='"+str(user_id)+"' AND fk_kyc_template_id=6"
        try:
            self.cur.execute(sql3)
            allData3 = self.cur.fetchone()
            count = self.cur.rowcount
            if(count > 0):
                mainData['profile_kyc'] = 'Y'
            else:
                mainData['profile_kyc'] = 'N'
        except Exception as e:
            print('profile kyc studentdetails error' + str(e))
        return mainData 

    # get bit's ifo
    def getBitsInfo(self, user_id):
        mainData = {}
        sql2 = "SELECT is_email_id_verified, is_facebook_like, is_referal_shared FROM tbl_users WHERE id ='"+str(user_id)+"'"
        try:
            self.cur.execute(sql2)
            allData2 = self.cur.fetchone()
            #print(self.cur._last_executed)
            count = self.cur.rowcount
            if(count > 0):
                #print(allData2)
                mainData.update(allData2.copy())
            else:
                mainData['fk_college_id'] = None
                mainData['fk_pincode_id'] = None
                mainData['year_of_joining'] = None
        except Exception as e:
            print('bits user data error' + str(e))
        return mainData 

    # get user approval details
    def userApprovalDetails(self, user_id):
        sql3 = "SELECT fk_user_id FROM tbl_user_approvals WHERE fk_user_id='"+str(user_id)+"'"
        try:
            self.cur.execute(sql3)
            allData = self.cur.fetchone()
            count = self.cur.rowcount
            if(count > 0):
                return 1
            else:
                return 0
        except Exception as e:
            print('user approval error' + str(e))

    #close the connection
    def __del__(self):
        self.cur.close()
        Dbc.close_connection(self.db)
