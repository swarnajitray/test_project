# This is is done by nirob date(11-12-2018)
from tmp_unapproveuser.unapprovemodel import unapproveUserModel as usermodel
import pandas as pd
import openpyxl
from pandas import ExcelWriter
from pandas import ExcelFile
import datetime
from config import helper as helper
#configaration file attach
import config.config as cf
#for deleting a file form a folder
import os
class unapproveController():
    def __init__(self):
        self.model = usermodel()

    # fetch data for report table
    def fetchReportData(self):
        all_unapprove_user = self.model.findUnapproveUser()
        # print(all_unapprove_user)
        # exit()
        id = []
        name = []
        mobile_number =[]
        email_id = []
        user_since_timestamp =[]
        profile_update_timestamp =[]  
        email_verified_status = []
        student_id_front = []
        student_id_back = []
        aadhaar_front = []
        aadhaar_back = []
        take_a_selfie = []
        selfie_video = []
        aadhaar_verification = []
        personal_information = []
        student_information = []
        bits_and_pieces = []
        current_caller =[]
        last_disposition =[]
        last_assigned =[]
        last_status = []       
        dic = {}
        #print(all_unapprove_user)
        if(all_unapprove_user):
            for dtfrm in all_unapprove_user:
                # Name
                if (len (dtfrm["name"]) > 0):
                    name.append (str(dtfrm["name"]))
                else:
                    name.append ("-")
                # Mobile number
                if(dtfrm["mobile_number"] is None):
                    mobile_number.append("-")
                else:
                    mobile_number.append(str(dtfrm["mobile_number"]))
                #email id
                if(dtfrm["email_id"] is None):
                    email_id.append("-")
                else:
                    email_id.append(str(dtfrm["email_id"]))
                # Date of Registration
                if(dtfrm["user_since_timestamp"] is None):
                    user_since_timestamp.append("-")
                else:
                    user_since_timestamp.append(str(dtfrm["user_since_timestamp"].strftime("%Y-%m-%d %H:%M:%S")))
                #Profile Update Timestamp
                if(dtfrm["profile_update_timestamp"] is None):
                    profile_update_timestamp.append("-")
                else:
                    profile_update_timestamp.append(str(dtfrm["profile_update_timestamp"]))
                #Email Verified Status
                if(dtfrm['is_email_id_verified'] is None):
                    tmp_is_email_id_verified = 'No'
                elif(dtfrm['is_email_id_verified'] == 0):
                    tmp_is_email_id_verified = 'No'
                elif(dtfrm['is_email_id_verified'] == 1):
                    tmp_is_email_id_verified = 'Yes'
                try:
                    email_verified_status.append(str(tmp_is_email_id_verified))
                except Exception as e:
                    print('Email verified error' + str(e))
                #Student ID Front
                tmp_student_id_front = '0%'
                tmp_student_id_back = '0%'
                try:
                    aadhaar_sts = self.model.getAadhaarStatus(dtfrm['user_id'], 6)
                    #print(aadhaar_sts)
                    #exit()
                    if(aadhaar_sts !=0):
                        if(aadhaar_sts['front_file_name'] is None):
                            tmp_student_id_front = '0%'
                        elif(aadhaar_sts['front_file_name'] is not None):
                            tmp_student_id_front = '100%'

                        if(aadhaar_sts['back_file_name'] is None):
                            tmp_student_id_back = '0%'
                        elif(aadhaar_sts['back_file_name'] is not None):
                            tmp_student_id_back ='100%'
                except Exception as e:
                    print('get student status error' + str(e))

                try:
                    student_id_front.append(str(tmp_student_id_front))
                except Exception as e:
                    print('student front error' + str(e))
                #Student ID Back
                try:
                    student_id_back.append(str(tmp_student_id_back))
                except Exception as e:
                    print('student front error' + str(e))
                #Aadhaar Front
                tmp_aadhaar_front = '0%'
                tmp_aadhaar_back = '0%'
                try:
                    aadhaar_sts = self.model.getAadhaarStatus(dtfrm['user_id'], 3)
                    #print(aadhaar_sts)
                    if(aadhaar_sts !=0):
                        if(aadhaar_sts['front_file_name'] is None):
                            tmp_aadhaar_front = '0%'
                        elif(aadhaar_sts['front_file_name'] is not None):
                            tmp_aadhaar_front = '100%'

                        if(aadhaar_sts['back_file_name'] is None):
                            tmp_aadhaar_back ='0%'
                        elif(aadhaar_sts['back_file_name'] is not None):
                            tmp_aadhaar_back ='100%'
                except Exception as e:
                    print('get aadhaar status error' + str(e))

                try:
                    aadhaar_front.append(str(tmp_aadhaar_front))
                except Exception as e:
                    print('aadhaar front error' + str(e))
                #Aadhaar Back  
                try:
                    aadhaar_back.append(str(tmp_aadhaar_back))
                except Exception as e:
                    print('aadhaar Back error' + str(e))
                #Take a Selfie
                tmp_take_a_selfie = '0%'
                try:
                    selfie_sts = self.model.getSelfieStatus(dtfrm['user_id'])
                    if(selfie_sts == 0):
                        tmp_take_a_selfie = '0%'
                    elif(selfie_sts['has_profile_picture'] == 0):
                        tmp_take_a_selfie = '0%'
                    elif(selfie_sts['has_profile_picture'] == 1):
                        tmp_take_a_selfie = '100%'

                    take_a_selfie.append(str(tmp_take_a_selfie))
                except Exception as e:
                    print('selfie status error' + str(e))
                #Selfie Video
                tmp_selfie_video = '0%'
                try:
                    video_sts = self.model.getVideoStatus(dtfrm['user_id'])
                    if(video_sts == 0):
                        tmp_selfie_video = '0%'
                    elif(video_sts['total_cnt'] > 0):
                        tmp_selfie_video = '100%'
                    selfie_video.append(str(tmp_selfie_video))
                except Exception as e:
                    print('Video status error' + str(e))
                #Aadhaar Verification
                tmp_aadhaar_verification = 0
                try:
                    aadhaar_per_sts = self.model.getAadhaarPercent(dtfrm['user_id'])
                    if(aadhaar_per_sts !=0):
                        if(aadhaar_per_sts['kyc_data'] is not None):
                            tmp_aadhaar_verification +=float(40)
                        if(aadhaar_per_sts['is_front_file_uploaded'] == 1):
                            tmp_aadhaar_verification +=float(30)
                        if(aadhaar_per_sts['is_back_file_uploaded'] == 1):
                            tmp_aadhaar_verification +=float(30)
                    tmp_aadhaar_verification = str(tmp_aadhaar_verification)+'%'
                    aadhaar_verification.append(str(tmp_aadhaar_verification))
                except Exception as e:
                    print('Aadhaar Verification error' + str(e))
                #Personal Information
                tmp_personal_information = 0
                personal_information_sts = self.model.getPersonalDetails(dtfrm['user_id'])
                #print(personal_information_sts)
                if(personal_information_sts):
                    if(personal_information_sts['f_name'] is not None):
                        tmp_personal_information += float(10)
                    if(personal_information_sts['l_name'] is not None):
                        tmp_personal_information += float(10)
                    if(personal_information_sts['date_of_birth'] is not None):
                        tmp_personal_information += float(10)
                    if(personal_information_sts['fathers_name'] is not None):
                        tmp_personal_information += float(10)
                    if(personal_information_sts['permanent_street1'] is not None):
                        tmp_personal_information += float(10)
                    if(personal_information_sts['permanent_zipcode'] is not None):
                        tmp_personal_information += float(10)
                    if(personal_information_sts['residence_street1'] is not None):
                        tmp_personal_information += float(5)
                    if(personal_information_sts['residence_zipcode'] is not None):
                        tmp_personal_information += float(5)
                    if(personal_information_sts['fk_marital_status_id'] is not None and personal_information_sts['fk_marital_status_id'] !=0):
                        tmp_personal_information += float(10)
                    if(personal_information_sts['fk_residence_status_id'] is not None and personal_information_sts['fk_residence_status_id'] !=0):
                        tmp_personal_information += float(10)
                    if(str(personal_information_sts['whatsup']) == 'Y' ):
                        tmp_personal_information += float(10)
                #print(tmp_personal_information)
                tmp_personal_information = str(tmp_personal_information)+'%'
                personal_information.append(str(tmp_personal_information))
                #Student Information
                tmp_student_information = 0
                student_information_sts = self.model.getStudentDetails(dtfrm['user_id'])
                #print(student_information_sts)
                if(student_information_sts):
                    if(student_information_sts['fk_college_id'] is not None and student_information_sts['fk_college_id'] != 0):
                        tmp_student_information += float(20)
                    if(student_information_sts['fk_pincode_id'] is not None and student_information_sts['fk_pincode_id'] != 0):
                        tmp_student_information += float(10)
                    if(student_information_sts['year_of_joining'] is not None):
                        tmp_student_information += float(10)
                    if(student_information_sts['year_of_graduation'] is not None):
                        tmp_student_information += float(10)
                    if(student_information_sts['fk_degree_type_id'] is not None and student_information_sts['fk_degree_type_id'] != 0):
                        tmp_student_information += float(5)
                    if(student_information_sts['fk_degree_id'] is not None and student_information_sts['fk_degree_id'] != 0):
                        tmp_student_information += float(5)
                    if(student_information_sts['fk_field_of_study_id'] is not None and student_information_sts['fk_field_of_study_id'] != 0):
                        tmp_student_information += float(5)
                    if(student_information_sts['fk_attendence_id'] is not None and student_information_sts['fk_attendence_id'] != 0):
                        tmp_student_information += float(5)
                    if(student_information_sts['type_of_grade'] is not None):
                        tmp_student_information += float(10)
                    if(str(student_information_sts['profile_kyc']) == 'Y'):
                        tmp_student_information += float(20)
                tmp_student_information = str(tmp_student_information)+'%'
                student_information.append(str(tmp_student_information))
                #Bit's and Pieces
                tmp_bits_and_pieces = 0
                user_approv = self.model.userApprovalDetails(dtfrm['user_id'])
                bit_info = self.model.getBitsInfo(dtfrm['user_id'])
                if(bit_info):
                    if(user_approv == 1):
                        if(bit_info['is_email_id_verified'] == 1):
                            tmp_bits_and_pieces += float(50)
                        if(bit_info['is_facebook_like'] == 1):
                            tmp_bits_and_pieces += float(50)
                    else:
                        if(bit_info['is_email_id_verified'] == 1):
                            tmp_bits_and_pieces += float(34)
                        if(bit_info['is_facebook_like'] == 1):
                            tmp_bits_and_pieces += float(33)
                        if(bit_info['is_referal_shared'] == 1):
                            tmp_bits_and_pieces += float(33)
                
                tmp_bits_and_pieces = str(tmp_bits_and_pieces)+'%'
                bits_and_pieces.append(tmp_bits_and_pieces)
                # Current Caller
                if(dtfrm["current_caller"] is None):
                    current_caller.append("-")
                else:
                    current_caller.append(dtfrm["current_caller"])
                # Last Disposition
                if(dtfrm["last_disposition"] is None):
                    last_disposition.append("-")
                else:
                    last_disposition.append(dtfrm["last_disposition"])
                #Last Assigned
                if(dtfrm["last_assigned"] ==''):
                    last_assigned.append("-")
                else:
                    last_assigned.append(dtfrm["last_assigned"])
                # Last Status
                if(dtfrm["last_status"] is None):
                    last_status.append("-")
                else:
                    last_status.append(dtfrm["last_status"])
                print('Data added')  
        else:
            print('No result found in the specific date')
            exit()

        dic = {
            "Name"                      : name,
            "Mobile"                    : mobile_number,
            "Email"                     : email_id,
            "Date of Registration"      : user_since_timestamp,
            "Profile Update Timestamp"  : profile_update_timestamp,
            "Email Verified Status"     : email_verified_status,
            "Student ID Front"          : student_id_front,
            "Student ID Back"           : student_id_back,
            "Aadhaar Front"             : aadhaar_front,
            "Aadhaar Back"              : aadhaar_back,
            "Take a Selfie"             : take_a_selfie,
            "Selfie Video"              : selfie_video,
            "Aadhaar Verification"      : aadhaar_verification,
            "Personal Information"      : personal_information,
            "Student Information"       : student_information,
            "Bit\'s and Pieces"          : bits_and_pieces,
            "Current Caller"            : current_caller,
            "Last Disposition"          : last_disposition,
            "Last Assigned"             : last_assigned,
            "Last Status"               : last_status
        }
        # print(dic)
        # exit()
        try:
            df = pd.DataFrame(dic,columns=['Name','Mobile','Email','Date of Registration','Profile Update Timestamp','Email Verified Status','Student ID Front','Student ID Back','Aadhaar Front','Aadhaar Back','Take a Selfie','Selfie Video','Aadhaar Verification','Personal Information','Student Information','Bit\'s and Pieces','Current Caller','Last Disposition','Last Assigned','Last Status'])
            #print(df)
        except Exception as e:
            print('csv make pands error'+str(e))

        #print(df)
        #exit()
        file = 'tmp_unapprove_user_list.csv'
        full_filename = cf.local_report_upload_url + file
        try:
            csv = df.to_csv(full_filename, index=False)
        except Exception as e:
            print('csv generate error'+str(e))
        # exit()
        # Upload a new file
        ts = datetime.datetime.now()
        st = ts.strftime('%Y-%m-%d-%H:%M:%S')
        s3uploadpath =  "admin_report/unapprove_user_list_report/"+str(file)
        try:
            s3furl = helper.uploadS3(full_filename, s3uploadpath)
            print(s3furl)
            if(s3furl is not None):
                print("Csv create successfully")
                if os.path.exists(full_filename):
                    os.remove(full_filename)
        except Exception as e:
            print('S3 upload error' +str(e))
