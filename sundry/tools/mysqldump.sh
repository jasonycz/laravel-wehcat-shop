#!bin/sh  
mysqldump -t laravel-shop admin_menu admin_permissions admin_role_menu admin_role_permissions admin_role_users admin_roles admin_user_permissions admin_users > ../../database/admin.sql
