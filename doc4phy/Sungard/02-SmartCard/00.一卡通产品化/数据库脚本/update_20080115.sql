DROP VIEW YKT_CUR.V_CIF_SHOP_TMP;

/* Formatted on 2008/01/15 14:56 (Formatter Plus v4.8.8) */
CREATE OR REPLACE FORCE VIEW ykt_cur.v_cif_shop_tmp (shop_id,
                                                     cut_id,
                                                     dept_id,
                                                     shop_name,
                                                     shop_type,
                                                     is_indep,
                                                     is_leaf,
                                                     shop_state,
                                                     shop_manager,
                                                     man,
                                                     sex,
                                                     nation,
                                                     man_id,
                                                     tel,
                                                     address,
                                                     is_getfee,
                                                     ratio,
                                                     manager_type,
                                                     duty_type,
                                                     reg_time,
                                                     comments,
                                                     fat_shop_name,
                                                     area,
                                                     classdept_no,
                                                     b_act_id,
                                                     b_act_name,
													 RAKEOFF_RATIO,
													 RAKEOFF_TYPE
                                                    )
AS
   SELECT a.shop_id, a.cut_id, a.dept_id, a.shop_name, a.shop_type,
          a.is_indep, a.is_leaf, a.shop_state, a.shop_manager, a.man, a.sex,
          a.nation, a.man_id, a.tel, a.address, a.is_getfee, a.ratio,
          a.manager_type, a.duty_type, a.reg_time, a.comments,
          a.fat_shop_name, b.area, b.classdept_no,a.b_act_id,a.b_act_name,
		  a.RAKEOFF_RATIO,a.RAKEOFF_TYPE
     FROM (SELECT c.shop_id, c.cut_id, c.dept_id, c.shop_name, c.shop_type,
                  c.is_indep, c.is_leaf, c.shop_state, c.shop_manager, c.man,
                  c.sex, c.nation, c.man_id, c.tel, c.address, c.is_getfee,
                  c.ratio, c.manager_type, c.duty_type, c.reg_time,
                  c.comments, d.shop_name AS fat_shop_name,c.b_act_id,c.b_act_name,
				  c.RAKEOFF_RATIO,c.RAKEOFF_TYPE
             FROM ykt_cur.t_cif_shop c LEFT OUTER JOIN ykt_cur.t_cif_shop d
                  ON c.dept_id = d.shop_id
                  ) a,
          (SELECT e.shop_id, f.area, f.classdept_no
             FROM ykt_cur.t_cif_shop e LEFT OUTER JOIN ykt_cur.t_cif_customer f
                  ON e.cut_id = f.cut_id
                  ) b
    WHERE a.shop_id = b.shop_id;

	
DROP VIEW YKT_CUR.V_CIF_SHOP;

/* Formatted on 2008/01/15 14:59 (Formatter Plus v4.8.8) */
CREATE OR REPLACE FORCE VIEW ykt_cur.v_cif_shop (nu,
                                                 shop_id,
                                                 cut_id,
                                                 dept_id,
                                                 shop_name,
                                                 shop_type,
                                                 is_indep,
                                                 is_leaf,
                                                 shop_state,
                                                 shop_manager,
                                                 man,
                                                 sex,
                                                 nation,
                                                 man_id,
                                                 tel,
                                                 address,
                                                 is_getfee,
                                                 ratio,
                                                 manager_type,
                                                 duty_type,
                                                 reg_time,
                                                 comments,
                                                 fat_shop_name,
                                                 area,
                                                 classdept_no,
                                                 b_act_id,
                                                 b_act_name,
												 depth_level,
												 RAKEOFF_RATIO,
												 RAKEOFF_TYPE
                                                )
AS
   SELECT     REPLACE (SYS_CONNECT_BY_PATH (dept_id, ':'), ':', '') AS nu,
              shop_id, cut_id, dept_id, shop_name, shop_type, is_indep,
              is_leaf, shop_state, shop_manager, man, sex, nation, man_id,
              tel, address, is_getfee, ratio, manager_type, duty_type,
              reg_time, comments, fat_shop_name, area, classdept_no,b_act_id,
              b_act_name,level depth_level,RAKEOFF_RATIO,RAKEOFF_TYPE
         FROM ykt_cur.v_cif_shop_tmp t
   CONNECT BY PRIOR shop_id = dept_id
   START WITH shop_id = 1;



CREATE TABLE YKT_CUR.T_TIF_REPORT_FILE
(
  BALA_DATE  VARCHAR2(8 BYTE),
  FLAG		 INTEGER NOT NULL,
  SERIAL_NO  INTEGER                            NOT NULL,
  STATUS     INTEGER                            DEFAULT 0                     NOT NULL,
  PRIMARY KEY (BALA_DATE,FLAG)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          16K
            NEXT             16K
            MINEXTENTS       1
            MAXEXTENTS       505
            PCTINCREASE      50
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS;


