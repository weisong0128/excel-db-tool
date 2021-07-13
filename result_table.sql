create table wx_register
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
nickname varchar(32),
mobilephone varchar(32),
sex int,
qq int,
email varchar(32),
register_time timestamp,
location varchar(32),
first_action_time timestamp,
last_action_time timestamp,
icon varchar(255)
);

create table wx_remarks
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
bbz_nickname varchar(32),
bzz_accountname varchar(32),
last_time timestamp
);

create table wx_location_last
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
location_type varchar(32),
location_detail varchar(64),
action_time timestamp
);

create table wx_usernet
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
auth_accout varchar(64),
auth_type varchar(32),
auth_type_desc varchar(32),
first_time timestamp,
last_time timestamp,
day int,
is_use varchar(32),
telhome varchar(32),
telhome_desc varchar(32),
telco varchar(32),
telco_desc varchar(32)
);

create table wx_location_active
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
location_type varchar(32),
location varchar(64),
location_detail varchar(64)
);

create table wx_usermobile
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
name varchar(64),
sex varchar(64),
age int,
hplace varchar(64),
idno varchar(64)
);

create table wx_usertag
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
tag varchar(255)
);

create table wx_contacts
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
nickname varchar(64),
remark varchar(64),
action_time timestamp,
is_sensitive varchar(64)
);

create table wx_contacts_group
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
groupid varchar(64),
groupname varchar(64),
remark varchar(64),
action_time timestamp
);

create table wx_sensitivemsg
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
mgnr varchar(64),
mglx int,
from_userid varchar(64),
from_remark varchar(64),
mgxx varchar(64),
action_time timestamp,
mgxxlx int,
to_userid varchar(64),
groupid varchar(64)
);

create table wx_msg
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
auth_accout varchar(64),
auth_type varchar(32),
auth_type_desc varchar(32),
from_userid varchar(64),
from_remark varchar(64),
action_time timestamp,
media_type int,
content text,
from_src_ip varchar(64),
from_location varchar(64),
to_userid varchar(64)
);

create table wx_multimedia_privatecall
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
auth_accout varchar(64),
auth_type varchar(32),
auth_type_desc varchar(32),
call_type int,
action_type int,
begin_time timestamp,
end_time timestamp,
videocontent text,
audiocontent text,
to_accountalias varchar(64),
to_user_phone varchar(32),
attachment_time int,
begin_hour int
);

create table wx_groupmsg
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
auth_accout varchar(64),
auth_type varchar(32),
auth_type_desc varchar(32),
groupid varchar(64),
groupname varchar(64),
from_userid varchar(64),
from_remark varchar(64),
action_time timestamp,
media_type int,
content text,
from_src_ip varchar(64),
from_location varchar(64),
group_cnt int
);

create table wx_multimedia_groupcall
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
auth_accout varchar(64),
auth_type varchar(32),
auth_type_desc varchar(32),
call_type int,
action_type int,
begin_time timestamp,
end_time timestamp,
attachment_time int,
group_id varchar(32),
group_name varchar(64),
videocontent text,
audiocontent text,
begin_hour int
);

create table wx_friendcircle
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
media_type int,
create_time timestamp,
content text,
content_url text,
comment_cnt int,
like_cnt int,
from_client_ip varchar,
from_client_address text
);

create table wx_friendcircle_opt
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
media_type int,
create_time timestamp,
content text,
content_url text,
comment_cnt int,
like_cnt int,
from_user_id int,
remark_name varchar(32),
from_client_ip varchar(32),
from_client_address text
);

create table wx_friendcircle_comment
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
msg_id int,
comment_account varchar(32),
comment_name varchar(32),
comment_content text,
comment_time timestamp
);

create table wx_friendcircle_like
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
msg_id int,
like_account varchar(32),
like_name varchar(32),
like_time timestamp
);

create table wx_payment
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
auth_accout varchar(64),
auth_type varchar(32),
auth_type_desc varchar(32),
action_time timestamp not null,
action_type int not null,
telco varchar(64) not null
);

create table wx_local_loginout_log
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
auth_accout varchar(64),
auth_type varchar(32),
auth_type_desc varchar(32),
action_time timestamp not null,
action_type int not null,
telco varchar(32) not null,
src_ip varchar(32),
src_port int,
imei varchar(32),
mac varchar(32)
);

create table wx_cloud_loginout_log
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
auth_accout varchar(64),
auth_type varchar(32),
auth_type_desc varchar(32),
action_time timestamp not null,
action_type int not null,
telco varchar(32) not null,
src_ip varchar(32),
src_port int
);

create table wx_location
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
auth_accout varchar(64),
auth_type varchar(32),
auth_type_desc varchar(32),
action_type int not null,
action_time timestamp not null,
time_seg int not null,
location_info varchar(255) not null,
longitude numeric(12,6),
latitude numeric(12,6),
addr varchar(64) not null,
telco varchar(64) not null,
resourceid varchar(32) not null,
resourceid_desc varchar(32)
);

create table wx_relation_good_friend
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
relate_userid varchar(32),
relate_accountalias varchar(64) not null,
is_qianke int,
is_zaitao int,
is_xidu int,
is_shedu int,
is_liudong int,
common_friend_cnt int,
common_group_cnt int,
common_adsl_cnt int,
ip_accomp_cnt int,
call_contact_cnt int,
transfer_cnt int,
red_envelope_cnt int,
);

create table wx_relation_common_friend
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
relate_userid varchar(32),
relate_accountalias varchar(64) not null,
is_qianke int,
is_zaitao int,
is_xidu int,
is_shedu int,
is_liudong int,
common_friend_cnt int,
common_group_cnt int,
common_adsl_cnt int,
ip_accomp_cnt int,
call_contact_cnt int,
transfer_cnt int,
red_envelope_cnt int,
);

create table wx_relation_common_group
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
relate_userid varchar(32),
relate_accountalias varchar(64) not null,
is_qianke int,
is_zaitao int,
is_xidu int,
is_shedu int,
is_liudong int,
common_friend_cnt int,
common_group_cnt int,
common_adsl_cnt int,
ip_accomp_cnt int,
call_contact_cnt int,
transfer_cnt int,
red_envelope_cnt int,
);

create table wx_relation_common_adsl
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
relate_userid varchar(32),
relate_accountalias varchar(64) not null,
is_qianke int,
is_zaitao int,
is_xidu int,
is_shedu int,
is_liudong int,
common_adsl_days int,
common_friend_cnt int,
common_group_cnt int,
common_adsl_cnt int,
ip_accomp_cnt int,
call_contact_cnt int,
transfer_cnt int,
red_envelope_cnt int,
);

create table wx_relation_ip_accomp
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
relate_userid varchar(32),
relate_accountalias varchar(64) not null,
is_qianke int,
is_zaitao int,
is_xidu int,
is_shedu int,
is_liudong int,
ip_accomp_ips int,
ip_accomp_days int,
ip_accomp_cnt int,
ip_accomp_addrs int,
);

create table wx_call_contact_detail
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
relate_userid varchar(32),
relate_accountalias varchar(64) not null,
action_time timestamp not null,
call_contact_id varchar,
call_contact_begin_time timestamp,
call_contact_end_time timestamp,
call_contact_way varchar(32),
call_contact_duration int,
);

create table wx_transfer_detail
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
relate_userid varchar(32),
relate_accountalias varchar(64) not null,
action_time timestamp not null,
transfer_id varchar(32),
transfer_occur_time timestamp,
transfer_type varchar(32),
transfer_amount money,
);

create table wx_red_envelope_detail
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
relate_userid varchar(32),
relate_accountalias varchar(64) not null,
action_time timestamp not null,
red_envelope_id varchar(32),
red_envelope_occur_time timestamp,
red_envelope_type varchar(32),
red_envelope_amount money,
);

create table wx_common_group_detail
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
relate_userid varchar(32),
relate_accountalias varchar(64) not null,
action_time timestamp not null,
common_group_id varchar(32),
common_group_name varchar(32),
common_group_create_time timestamp,
);

create table wx_common_friend_detail
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
relate_userid varchar(32),
relate_accountalias varchar(64) not null,
action_time timestamp not null,
common_friend_wx_id varchar(32),
common_friend_wx_name varchar(32),
common_friend_wx_create_time timestamp,
);

create table wx_common_adsl_detail
(
id bigserial primary key not null,
userid varchar(64),
accountalias varchar(64),
job_id varchar(32),
data_source varchar(32),
data_source_desc varchar(32),
relate_userid varchar(32),
relate_accountalias varchar(64) not null,
action_time timestamp not null,
common_adsl_id varchar(32),
common_adsl_begin_time timestamp,
common_adsl_end_time timestamp,
common_adsl_duration int,
);

