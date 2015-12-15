-- Table: master

DROP TABLE master;

CREATE TABLE master
(
  n_number character varying(5) NOT NULL,
  serial_number character varying(30),
  mfr_mdl_code character(7),
  eng_mfr_mdl character(5),
  year_mfr character(4),
  type_registrant character(1),
  name character varying(50),
  street character varying(33),
  street2 character varying(33),
  city character varying(18),
  state character(2),
  zip_code character varying(10),
  region character(1),
  county character varying(3),
  country character varying(2),
  last_action_date character varying(8),
  cert_issue_date character varying(8),
  certification character varying(10),
  type_aircraft character(1),
  type_engine character varying(2),
  status_code character varying(2),
  mode_s_code character varying(8),
  fract_owner character(1),
  air_worth_date character varying(8),
  other_names_1 character varying(50),
  other_names_2 character varying(50),
  other_names_3 character varying(50),
  other_names_4 character varying(50),
  other_names_5 character varying(50),
  expiration_date character varying(8),
  unique_id character varying(8),
  kit_mfr character varying(30),
  kit_model character varying(20),
  mode_s_code_hex character varying(10),
  pad character(1),
  CONSTRAINT master_pkey PRIMARY KEY (n_number)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE master
  OWNER TO faadbuser;

-- Table: acftref

DROP TABLE acftref;

CREATE TABLE acftref
(
  code character(7) NOT NULL,
  mfr character varying(30),
  model character varying(20),
  type_acft character(5),
  type_eng character(4),
  ac_cat character(1),
  build_cert_ind character(1),
  no_eng character varying(2),
  no_seats character varying(3),
  ac_weight character varying(7),
  speed character varying(4),
  pad character(1),
  CONSTRAINT acftref_pkey PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE acftref
  OWNER TO faadbuser;

-- Table: engine

DROP TABLE engine;

CREATE TABLE engine
(
  code character(5) NOT NULL,
  mfr character varying(10),
  model character varying(13),
  type character varying(2),
  horsepower character varying(5),
  thrust character varying(6),
  pad character(1),
  CONSTRAINT engine_pkey PRIMARY KEY (code)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE engine
  OWNER TO faadbuser;

-- Table: docindex

DROP TABLE docindex;

CREATE TABLE docindex
(
  type_collateral character(1),
  collateral character varying(37),
  party character varying(50),
  doc_id character varying(12),
  drdate character varying(8),
  processing_date character varying(8),
  corr_date character varying(8),
  corr_id character(1),
  serial_id character varying(30),
  pad character(1)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE docindex
  OWNER TO faadbuser;

-- Table: reserved

DROP TABLE reserved;

CREATE TABLE reserved
(
  n_number character(5) NOT NULL,
  registrant character varying(50),
  street character varying(33),
  street2 character varying(33),
  city character varying(18),
  state character(2),
  zip_code character varying(10),
  rsv_date character varying(8),
  tr character varying(2),
  exp_date character varying(8),
  n_num_chg character(5),
  pad character(1),
  CONSTRAINT reserved_pkey PRIMARY KEY (n_number)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE reserved
  OWNER TO faadbuser;

-- Table: dealer

DROP TABLE dealer;

CREATE TABLE dealer
(
  certificate_number character varying(7) NOT NULL,
  ownership character(1),
  certificate_date character varying(8),
  expiration_date character varying(8),
  expiration_flag character(1),
  certificate_issue_count character varying(4),
  name character varying(50),
  street character varying(33),
  street2 character varying(33),
  city character varying(18),
  state_abbrev character(2),
  zip_code character varying(10),
  other_names_count character varying(2),
  other_name1 character varying(50),
  other_name2 character varying(50),
  other_name3 character varying(50),
  other_name4 character varying(50),
  other_name5 character varying(50),
  other_name6 character varying(50),
  other_name7 character varying(50),
  other_name8 character varying(50),
  other_name9 character varying(50),
  other_name10 character varying(50),
  other_name11 character varying(50),
  other_name12 character varying(50),
  other_name13 character varying(50),
  other_name14 character varying(50),
  other_name15 character varying(50),
  other_name16 character varying(50),
  other_name17 character varying(50),
  other_name18 character varying(50),
  other_name19 character varying(50),
  other_name20 character varying(50),
  other_name21 character varying(50),
  other_name22 character varying(50),
  other_name23 character varying(50),
  other_name24 character varying(50),
  other_name25 character varying(50),
  pad character(1),
  CONSTRAINT dealer_pkey PRIMARY KEY (certificate_number)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE dealer
  OWNER TO faadbuser;

-- Table: dereg

DROP TABLE dereg;

CREATE TABLE dereg
(
  n_number character(5),
  serial_number character varying(30),
  mfr_mdl_code character varying(7),
  status_code character varying(2),
  name character varying(50),
  street character varying(33),
  street2 character varying(33),
  city character varying(18),
  state_abbrev character(2),
  zip_code character varying(10),
  eng_mfr_mdl character varying(5),
  year_mfr character(4),
  certification character varying(10),
  region character(1),
  county_mail character varying(3),
  country_mail character(2),
  air_worth_date character varying(8),
  cancel_date character varying(8),
  mode_s_code character varying(8),
  indicator_group character(1),
  exp_country character varying(18),
  last_act_date character varying(8),
  cert_issue_date character varying(8),
  street_physical character varying(33),
  street2_physical character varying(33),
  city_physical character varying(18),
  state_abbrev_physical character(2),
  zip_code_physical character varying(10),
  county_physical character varying(3),
  country_physical character(2),
  other_names_1 character varying(50),
  other_names_2 character varying(50),
  other_names_3 character varying(50),
  other_names_4 character varying(50),
  other_names_ character varying(50),
  kit_mfr character varying(30),
  kit_model character varying(20),
  mode_s_code_hex character varying(10),
  pad character(1)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE dereg
  OWNER TO faadbuser;
