-- ===============================================================================================
-- DataSource: CRM ---=:> Customer Relationship Manager
-- ===============================================================================================



-- Table: silver.crm_cust_info
-- DROP TABLE IF EXISTS silver.crm_cust_info;
------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS silver.crm_cust_info
(
    cst_id bigint,
    "cst_key " character varying(50) COLLATE pg_catalog."default",
    cst_firstname character varying(50) COLLATE pg_catalog."default",
    cst_lastname character varying(50) COLLATE pg_catalog."default",
    cst_marital_status character varying(50) COLLATE pg_catalog."default",
    cst_gndr character varying(50) COLLATE pg_catalog."default",
    cst_create_date date
	, audit_col_dwh_create_date date not null default CURRENT_DATE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS silver.crm_cust_info
    OWNER to postgres;





-- Table: silver.crm_prd_info
-- DROP TABLE IF EXISTS silver.crm_prd_info;
------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS silver.crm_prd_info
(
    prd_id integer,
    prd_key character varying(50) COLLATE pg_catalog."default",
    prd_nm character varying(50) COLLATE pg_catalog."default",
    prd_cost integer,
    prd_line character varying(50) COLLATE pg_catalog."default",
    prd_start_dt timestamp without time zone,
    prd_end_dt timestamp without time zone
	, audit_col_dwh_create_date date not null default CURRENT_DATE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS silver.crm_prd_info
    OWNER to postgres;






-- Table: silver.crm_sales_details
-- DROP TABLE IF EXISTS silver.crm_sales_details;
------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS silver.crm_sales_details
(
    sls_ord_num character varying(50) COLLATE pg_catalog."default",
    sls_prd_key character varying(50) COLLATE pg_catalog."default",
    sls_cust_id integer,
    sls_order_dt integer,
    sls_ship_dt integer,
    sls_due_dt integer,
    sls_sales integer,
    sls_quantity integer,
    sls_price integer
	, audit_col_dwh_create_date date not null default CURRENT_DATE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS silver.crm_sales_details
    OWNER to postgres;




-- ===============================================================================================
-- DataSource: ERP ---=:> Enterprise Resource Planning
-- ===============================================================================================



-- Table: silver.erp_cust_az12
-- DROP TABLE IF EXISTS silver.erp_cust_az12;
------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS silver.erp_cust_az12
(
    cid character varying(50) COLLATE pg_catalog."default",
    bdate date,
    gen character varying(50) COLLATE pg_catalog."default"
	, audit_col_dwh_create_date date not null default CURRENT_DATE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS silver.erp_cust_az12
    OWNER to postgres;







-- Table: silver.erp_loc_a101
-- DROP TABLE IF EXISTS silver.erp_loc_a101;
------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS silver.erp_loc_a101
(
    cid character varying(50) COLLATE pg_catalog."default",
    cntry character varying(50) COLLATE pg_catalog."default"
	, audit_col_dwh_create_date date not null default CURRENT_DATE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS silver.erp_loc_a101
    OWNER to postgres;









-- Table: silver.erp_px_cat_g1v2
-- DROP TABLE IF EXISTS silver.erp_px_cat_g1v2;
------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS silver.erp_px_cat_g1v2
(
    id character varying(50) COLLATE pg_catalog."default",
    cat character varying(50) COLLATE pg_catalog."default",
    subcat character varying(50) COLLATE pg_catalog."default",
    maintenance character varying(50) COLLATE pg_catalog."default"
	, audit_col_dwh_create_date date not null default CURRENT_DATE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS silver.erp_px_cat_g1v2
    OWNER to postgres;


    
