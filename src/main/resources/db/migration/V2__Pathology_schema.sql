create table bootdb.patient(
	patient_id BIGINT PRIMARY KEY AUTO_INCREMENT,
	date_of_birth DATETIME NOT NULL,
	gender VARCHAR(10) NOT NULL
);

create table bootdb.cancer(
	cancer_id BIGINT PRIMARY KEY AUTO_INCREMENT,
	date_diagnosed DATETIME NOT NULL,
	cancer_type VARCHAR(50) NOT NULL,
	patient_id BIGINT NOT NULL,
	FOREIGN KEY (patient_id) REFERENCES bootdb.patient (patient_id)
);

create table bootdb.lesion(
	lesion_id BIGINT PRIMARY KEY AUTO_INCREMENT,
	her2_status BIT(1) NOT NULL,
	pgr_status BIT(1) NOT NULL,
	er_status BIT(1) NOT NULL,
	cancer_id BIGINT NOT NULL,
	FOREIGN KEY (cancer_id) REFERENCES bootdb.cancer (cancer_id)
);