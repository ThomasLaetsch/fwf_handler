CREATE TABLE birth2018 (
	birth_year INT,
	birth_month INT,
	birth_time INT,
	birth_day_of_wk INT,
	birth_place INT,
	mothers_age_imputed CHAR(1),
	mothers_age INT,
	mothers_nativity INT,
	mothers_residence_status INT,
	mothers_race INT,
	mothers_race_imputed CHAR(1),
	mothers_hispanic_origin INT,
	mothers_hispanic_origin2 INT,
	paternity_acknow CHAR(1),
	mothers_marital_status INT,
	mothers_maristat_imputed CHAR(1),
	mothers_education INT,
	fathers_age INT,
	fathers_race INT,
	fathers_hispanic_origin INT,
	fathers_hispanic_origin2 INT,
	fathers_education INT,
	prior_living_births INT,
	prior_dead_births INT,
	prior_terminations INT,
	mo_since_last_live_birth INT,
	mo_since_last_other_birth INT,
	mo_prenatal_care_began INT,
	n_prenatal_visits INT,
	wic CHAR(1),
	cigs_tri1 INT,
	cigs_tri2 INT,
	cigs_tri3 INT,
	mothers_height INT,
	mothers_bmi FLOAT,
	pre_preg_lbs INT,
	delivery_lbs INT,
	pre_preg_diab CHAR(1),
	gest_diab CHAR(1),
	pre_preg_hypten CHAR(1),
	gest_hypten CHAR(1),
	hypten_ecl CHAR(1),
	prev_preterm_birth CHAR(1),
	infertility_treatment CHAR(1),
	fertil_enhance CHAR(1),
	asst_repro_tech CHAR(1),
	n_prev_cesar INT,
	no_risk_reported INT,
	gonorrhea CHAR(1),
	syphilis CHAR(1),
	chlamydia CHAR(1),
	hepB CHAR(1),
	hepC CHAR(1),
	no_infection_reported INT,
	success_ext_cep CHAR(1),
	fail_ext_cep CHAR(1),
	induced_labor CHAR(1),
	aug_labor CHAR(1),
	steriods CHAR(1),
	antibiotics CHAR(1),
	chorioamnionitis CHAR(1),
	anesthesia CHAR(1),
	fetal_present_at_birth INT,
	final_delivery_method INT,
	trial_of_labor_attempt CHAR(1),
	maternal_transfusion CHAR(1),
	perineal_laceration CHAR(1),
	rupt_uterus CHAR(1),
	unplanned_hyster CHAR(1),
	admit_to_IC CHAR(1),
	attendant_at_birth INT,
	mother_transferred CHAR(1),
	delivery_payment_source INT,
	APGAR_score_5min INT,
	APGAR_score_10min INT,
	plurality INT,
	pluarlity_imputed CHAR(1),
	sex_of_infant CHAR(1),
	sex_of_infant_imputed CHAR(1),
	last_norm_menses_mo INT,
	last_norm_menses_yr INT,
	combined_gestation_imputed CHAR(1),
	obst_est_of_gestation_used CHAR(1),
	combined_gestation_wk INT,
	obst_est_edit_wk INT,
	birth_weight_gm INT,
	assist_vent_immed CHAR(1),
	assist_vent_after6 CHAR(1),
	admit_NICU CHAR(1),
	surfactant CHAR(1),
	antibiotics_for_newborn CHAR(1),
	seizures CHAR(1),
	anencephaly CHAR(1),
	meningo_spina_bif CHAR(1),
	cyn_cong_heart_disease CHAR(1),
	cong_diaph_hernia CHAR(1),
	omphalocele CHAR(1),
	gastroschisis CHAR(1),
	limb_reduc_defect CHAR(1),
	cleft_lip_or_palate CHAR(1),
	cleft_palate_only CHAR(1),
	down_syndr CHAR(1),
	suspect_chromo_disorder CHAR(1),
	hypospadias CHAR(1),
	no_cong_anamolies_checked INT,
	infant_transferred CHAR(1),
	infant_living_at_report CHAR(1),
	infant_breastfed_at_discharge CHAR(1));

LOAD DATA INFILE 'path-to-2018-natality-data.txt' INTO TABLE birth2018
	(@var1)
	SET
	birth_year = SUBSTR(@var1,9,4),
	birth_month = SUBSTR(@var1,13,2),
	birth_time = SUBSTR(@var1,19,4),
	birth_day_of_wk = SUBSTR(@var1,23,1),
	birth_place = SUBSTR(@var1,32,1),
	mothers_age_imputed = SUBSTR(@var1,73,1),
	mothers_age = SUBSTR(@var1,75,2),
	mothers_nativity = SUBSTR(@var1,84,1),
	mothers_residence_status = SUBSTR(@var1,104,1),
	mothers_race = SUBSTR(@var1,105,2),
	mothers_race_imputed = SUBSTR(@var1,111,1),
	mothers_hispanic_origin = SUBSTR(@var1,112,1),
	mothers_hispanic_origin2 = SUBSTR(@var1,117,1),
	paternity_acknow = SUBSTR(@var1,119,1),
	mothers_marital_status = SUBSTR(@var1,120,1),
	mothers_maristat_imputed = SUBSTR(@var1,121,1),
	mothers_education = SUBSTR(@var1,124,1),
	fathers_age = SUBSTR(@var1,147,2),
	fathers_race = SUBSTR(@var1,151,2),
	fathers_hispanic_origin = SUBSTR(@var1,159,1),
	fathers_hispanic_origin2 = SUBSTR(@var1,162,1),
	fathers_education = SUBSTR(@var1,163,1),
	prior_living_births = SUBSTR(@var1,171,2),
	prior_dead_births = SUBSTR(@var1,173,2),
	prior_terminations = SUBSTR(@var1,175,2),
	mo_since_last_live_birth = SUBSTR(@var1,198,3),
	mo_since_last_other_birth = SUBSTR(@var1,206,3),
	mo_prenatal_care_began = SUBSTR(@var1,224,2),
	n_prenatal_visits = SUBSTR(@var1,238,2),
	wic = SUBSTR(@var1,251,1),
	cigs_tri1 = SUBSTR(@var1,255,2),
	cigs_tri2 = SUBSTR(@var1,257,2),
	cigs_tri3 = SUBSTR(@var1,259,2),
	mothers_height = SUBSTR(@var1,280,2),
	mothers_bmi = SUBSTR(@var1,283,4),
	pre_preg_lbs = SUBSTR(@var1,292,3),
	delivery_lbs = SUBSTR(@var1,299,3),
	pre_preg_diab = SUBSTR(@var1,313,1),
	gest_diab = SUBSTR(@var1,314,1),
	pre_preg_hypten = SUBSTR(@var1,315,1),
	gest_hypten = SUBSTR(@var1,316,1),
	hypten_ecl = SUBSTR(@var1,317,1),
	prev_preterm_birth = SUBSTR(@var1,318,1),
	infertility_treatment = SUBSTR(@var1,325,1),
	fertil_enhance = SUBSTR(@var1,326,1),
	asst_repro_tech = SUBSTR(@var1,327,1),
	n_prev_cesar = SUBSTR(@var1,332,2),
	no_risk_reported = SUBSTR(@var1,337,1),
	gonorrhea = SUBSTR(@var1,343,1),
	syphilis = SUBSTR(@var1,344,1),
	chlamydia = SUBSTR(@var1,345,1),
	hepB = SUBSTR(@var1,346,1),
	hepC = SUBSTR(@var1,347,1),
	no_infection_reported = SUBSTR(@var1,353,1),
	success_ext_cep = SUBSTR(@var1,360,1),
	fail_ext_cep = SUBSTR(@var1,361,1),
	induced_labor = SUBSTR(@var1,383,1),
	aug_labor = SUBSTR(@var1,384,1),
	steriods = SUBSTR(@var1,385,1),
	antibiotics = SUBSTR(@var1,386,1),
	chorioamnionitis = SUBSTR(@var1,387,1),
	anesthesia = SUBSTR(@var1,388,1),
	fetal_present_at_birth = SUBSTR(@var1,401,1),
	final_delivery_method = SUBSTR(@var1,402,1),
	trial_of_labor_attempt = SUBSTR(@var1,403,1),
	maternal_transfusion = SUBSTR(@var1,415,1),
	perineal_laceration = SUBSTR(@var1,416,1),
	rupt_uterus = SUBSTR(@var1,417,1),
	unplanned_hyster = SUBSTR(@var1,418,1),
	admit_to_IC = SUBSTR(@var1,419,1),
	attendant_at_birth = SUBSTR(@var1,433,1),
	mother_transferred = SUBSTR(@var1,434,1),
	delivery_payment_source = SUBSTR(@var1,435,1),
	APGAR_score_5min = SUBSTR(@var1,444,2),
	APGAR_score_10min = SUBSTR(@var1,448,2),
	plurality = SUBSTR(@var1,454,1),
	pluarlity_imputed = SUBSTR(@var1,456,1),
	sex_of_infant = SUBSTR(@var1,475,1),
	sex_of_infant_imputed = SUBSTR(@var1,476,1),
	last_norm_menses_mo = SUBSTR(@var1,477,2),
	last_norm_menses_yr = SUBSTR(@var1,481,4),
	combined_gestation_imputed = SUBSTR(@var1,488,1),
	obst_est_of_gestation_used = SUBSTR(@var1,489,1),
	combined_gestation_wk = SUBSTR(@var1,490,2),
	obst_est_edit_wk = SUBSTR(@var1,499,2),
	birth_weight_gm = SUBSTR(@var1,504,4),
	assist_vent_immed = SUBSTR(@var1,517,1),
	assist_vent_after6 = SUBSTR(@var1,518,1),
	admit_NICU = SUBSTR(@var1,519,1),
	surfactant = SUBSTR(@var1,520,1),
	antibiotics_for_newborn = SUBSTR(@var1,521,1),
	seizures = SUBSTR(@var1,522,1),
	anencephaly = SUBSTR(@var1,537,1),
	meningo_spina_bif = SUBSTR(@var1,538,1),
	cyn_cong_heart_disease = SUBSTR(@var1,539,1),
	cong_diaph_hernia = SUBSTR(@var1,540,1),
	omphalocele = SUBSTR(@var1,541,1),
	gastroschisis = SUBSTR(@var1,542,1),
	limb_reduc_defect = SUBSTR(@var1,549,1),
	cleft_lip_or_palate = SUBSTR(@var1,550,1),
	cleft_palate_only = SUBSTR(@var1,551,1),
	down_syndr = SUBSTR(@var1,552,1),
	suspect_chromo_disorder = SUBSTR(@var1,553,1),
	hypospadias = SUBSTR(@var1,554,1),
	no_cong_anamolies_checked = SUBSTR(@var1,561,1),
	infant_transferred = SUBSTR(@var1,567,1),
	infant_living_at_report = SUBSTR(@var1,568,1),
	infant_breastfed_at_discharge = SUBSTR(@var1,569,1);
