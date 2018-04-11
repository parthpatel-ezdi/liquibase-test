alter table EZTRANS_ADMIN.hospital_mst change column timezone_label timezone_label varchar(127);
alter table EZTRANS_ADMIN.hospital_mst change column delivery_type delivery_type enum('EMR-Upload','EMR-Interface','Non-EMR') default 'EMR-Interface';
alter table EZTRANS_ADMIN.hospital_mst change column bucket_category_id bucket_category_id int(10) unsigned;
alter table EZTRANS_ADMIN.hospital_mst change column workflow_category_id workflow_category_id int(10) unsigned;
alter table EZTRANS_ADMIN.hospital_mst change column delivery_app delivery_app varchar(31);
alter table EZTRANS_ADMIN.hospital_mst change column include_header_footer include_header_footer tinyint(1);

alter table EZTRANS_ADMIN.hospital_mst change column business_type business_type varchar(31) not null DEFAULT 'Hospital';
alter table EZTRANS_ADMIN.hospital_mst change column blank_replace_value blank_replace_value varchar(31) not null default '______';
alter table EZTRANS_ADMIN.hospital_mst change column resend_report_emr resend_report_emr enum('Always resend','Never resend','Always ask') not null;

alter table EZTRANS_ADMIN.hospital_mst change column schedule_type schedule_type enum('Manual', 'Automatic') NOT NULL default 'Automatic';

alter table EZTRANS_ADMIN.hospital_mst change column sstat sstat int(10) unsigned NOT NULL default 120;
alter table EZTRANS_ADMIN.hospital_mst change column stat stat int(10) unsigned NOT NULL default 240;
alter table EZTRANS_ADMIN.hospital_mst change column resend_report_emr resend_report_emr enum('Always resend','Never resend','Always ask') DEFAULT 'Never resend';
alter table EZTRANS_ADMIN.hospital_mst change column is_backend_sr_enabled is_backend_sr_enabled tinyint(1) NOT NULL default 0;
alter table EZTRANS_ADMIN.hospital_mst change column backend_sr_threshold backend_sr_threshold double NOT NULL default 0;
alter table EZTRANS_ADMIN.hospital_mst change column backend_sr_engine backend_sr_engine enum('NVOQ','GOOGLE','NA') NOT NULL default 'NA';
