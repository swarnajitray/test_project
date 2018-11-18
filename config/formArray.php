<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
     */
    'items_per_page'             => 25,

    'status_code'                => [
        'http_response_ok'            => '200',
        'http_response_ok_no_content' => '204',
        'http_response_bad_request'   => '400',
        'http_response_unauthorized'  => '401',
        'http_response_invalid_login' => '403',
        'http_response_not_found'     => '404',
    ],

    
    'kitchen-details'            => [
        'kitchen_id'        => 'kitchen_id',
        'kitchen_name'      => 'kitchen_name',
        'country_id'        => 'country_id',
        'county_id'         => 'county_id',
        'address_1'         => 'address_1',
        'address_2'         => 'address_2',
        'email_address'     => 'email_address',
        'phone_number'      => 'phone_number',
        'text_phone_number' => 'text_phone_number',
    ],

    'kitchen-admin-details'      => [
        'mapedKitchen'     => "mapedKitchen",
        'kitchen_admin_id' => "kitchen_admin_id",
        'f_name'           => "f_name",
        'l_name'           => "l_name",
        'username'         => "username",
        'raw_psw'          => "raw_psw",
        'email'            => "email",
        'phone'            => "phone",
    ],

    'admin-user-details'         => [
        'mapedKitchen'  => "mapedKitchen",
        'admin_user_id' => "admin_user_id",
        'f_name'        => "f_name",
        'l_name'        => "l_name",
        'username'      => "username",
        'raw_psw'       => "raw_psw",
        'email'         => "email",
        'phone'         => "phone",
    ],

    'allergen-details'           => [
        'allergen_name' => "allergen_name",
        'allergen_id'   => "allergen_id",
    ],

    'nutrient-details'           => [
        'nutrient_name'          => "nutrient_name",
        'nutrient_id'            => "nutrient_id",
        'daily_amount_guideline' => "daily_amount_guideline",
    ],

    'school-details'             => [
        'school_id'            => "school_id",
        'kitchen_id'           => "kitchen_id",
        'county_id'            => "county_id",
        'school_name'          => "school_name",
        'address1'             => "address1",
        'address2'             => "address2",
        'is_private'           => "is_private",
        'allow_child_calendar' => "allow_child_calendar",
        'delivery_time'        => "delivery_time",
        'email_address'        => "email_address",
        'phone_number'         => "phone_number",
        'sandwich_station'     => "sandwich_station",
        'packing_station'      => "packing_station",
    ],

    'class-details'              => [
        'class_id'   => "class_id",
        'class_name' => "class_name",
        'school_id'  => "school_id",
        'teacher_id' => "teacher_id",
        'menu_id'    => "menu_id",
    ],

    'supplier-details'           => [
        'mapedKitchen' => "mapedKitchen",
        'supplier_id'  => "supplier_id",
        'name'         => "name",
        'address'      => "address",
        'email'        => "email",
        'phone_number' => "phone_number",
        'note'         => "note",
    ],

    'ingredient-details'         => [
        'ingredient_id'               => "ingredient_id",
        'name'                        => "name",
        'ingredient_delivery_portion' => "ingredient_delivery_portion",
        'portion_weight'              => "portion_weight",
        'supplier_id'                 => "supplier_id",
    ],

    'menu-details'               => [
        'menu_id'       => "menu_id",
        'kitchen_id'    => "kitchen_id",
        'menu_name'     => "menu_name",
        'internal_name' => "internal_name",
    ],

    'menu-template-details'      => [
        'menu_template_id' => "menu_template_id",
        'kitchen_id'       => "kitchen_id",
        'template_name'    => "template_name",
    ],

    'product-group-details'      => [
        'product_group_id'   => "product_group_id",
        'kitchen_id'         => "kitchen_id",
        'product_group_name' => "product_group_name",
        'icon_image_id'      => "icon_image_id",
    ],

    'product-details'            => [
        'product_id'          => "product_id",
        'kitchen_id'          => "kitchen_id",
        'product_name'        => "product_name",
        'product_group_id'    => "product_group_id",
        'price'               => "price",
        'vat_rate'            => "vat_rate",
        'sale_price'          => "sale_price",
        'discount_sale_price' => "discount_sale_price",
    ],

    'menu-menu-template-details' => [
        'map_id'                       => "map_id",
        'menu_template_name'           => "menu_template_name",
        'menu_template_price'          => "menu_template_price",
        'menu_template_discount_price' => "menu_template_discount_price",
        'icon_image_id'                => "icon_image_id",
    ],

    'menu-product-group-details' => [
        'map_id'                => "map_id",
        'max_number_of_product' => "max_number_of_product",
    ],

    'student-details'            => [
        'student_id' => "student_id",
        'f_name'     => "f_name",
        'l_name'     => "l_name",
        'username'   => "username",
        'raw_psw'    => "raw_psw",
        'school_id'  => "school_id",
        'class_id'   => "class_id",
        'email'      => "email",
        'phone'      => "phone",
        'is_active'  => "is_active",
    ],

    'teacher-details'            => [
        'teacher_id' => "teacher_id",
        'f_name'     => "f_name",
        'l_name'     => "l_name",
        'username'   => "username",
        'raw_psw'    => "raw_psw",
        'school_id'  => "school_id",
        'email'      => "email",
        'phone'      => "phone",
    ],

    'school-admin-details'       => [
        'school_admin_id' => "school_admin_id",
        'f_name'          => "f_name",
        'l_name'          => "l_name",
        'username'   => "username",
        'raw_psw'         => "raw_psw",
        'school_id'       => "school_id",
        'email'           => "email",
        'phone'           => "phone",
    ],
    'pdf_crowd'                  => [
        'user_name' => env('PDF_CROWD_USER_NAME'),
        'api_key'   => env('PDF_CROWD_API_KEY'),
    ],
    'pdf_report'          =>[
        0=>[
            'id'        =>1,
            'name'      =>'Regular reports'
        ],
        2=>[
            'id'=>2,
            'name'=>'Micro reports'
        ],
        3=>[
            'id'=>3,
            'name'=>'Error reports'
        ],
        4=>[
            'id'=>4,
            'name'=>'Calendar reports'
            ],
        5=>[
            'id'=>5,
            'name'=>'Products reports'
        ],
        6=>[
            'id'=>6,
            'name'=>'Suppliers reports'
        ],
        7=>[
            'id'=>7,
            'name'=>'Schools reports'
        ]
    ],



];
