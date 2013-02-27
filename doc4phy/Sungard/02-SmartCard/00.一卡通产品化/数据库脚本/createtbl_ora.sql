/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     2007-6-11 13:41:19                           */
/*==============================================================*/



create sequence YKT_CUR.SQL060714091935410
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.SQL060714091935890
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.SQL060714091935900
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.SQL060714091936350
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.SQL060714091936520
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.SQL060714091936770
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.SQL060714091936780
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.SQL060714091936820
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.SQL060714091937210
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.SQL060724170205450
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.S_T_DOOR_DEVICE_HOLIDAY
increment by 1
start with 21
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.S_T_DOOR_GROUP
increment by 1
start with 121
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.S_T_DOOR_HOLIDAY
increment by 1
start with 121
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.S_T_DOOR_TIMES_GROUP
increment by 1
start with 121
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.S_T_DOOR_TIME_SECT
increment by 1
start with 81
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.S_T_DOOR_WEEKS
increment by 1
start with 121
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.S_T_GROUP
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.S_T_PIF_DEVICE_LOG
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.S_T_PIF_OPERATOR_LOG
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.S_T_PIF_SUBSYS_LOG
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.S_T_PIF_SUB_UPDATE
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.S_T_SUBSYS_LOG
increment by 1
start with 1
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.S_T_TIF_CUT_INFO_UPDATE
increment by 1
start with 361
  nomaxvalue
  nominvalue
nocycle
noorder;

create sequence YKT_CUR.S_T_TIF_MESLIST
increment by 1
start with 4701
  nomaxvalue
  nominvalue
nocycle
noorder;

/*==============================================================*/
/* Table: MAP_ALERT_TABLE                                       */
/*==============================================================*/
create table YKT_CUR.MAP_ALERT_TABLE  (
   ID                   NUMBER                          not null,
   PARAMETER            VARCHAR2(50),
   PHONEALERT           NUMBER,
   MAILALERT            NUMBER,
   NOTE                 NUMBER,
   constraint SYS_C006707 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: MAP_ANALYSIS_POINT                                    */
/*==============================================================*/
create table YKT_CUR.MAP_ANALYSIS_POINT  (
   ANALYSISNAME         VARCHAR2(50)                    not null,
   ANALYSISPOINT        VARCHAR2(14)                    not null,
   constraint SYS_C006710 primary key (ANALYSISNAME)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: MAP_CAUNBALANCE_TABLE                                 */
/*==============================================================*/
create table YKT_CUR.MAP_CAUNBALANCE_TABLE  (
   ACCOUNT_ID           CHAR(16)                        not null,
   ANALYSIS_TIME        CHAR(14)                        not null,
   ACT_TYPE             NUMBER,
   CUSTOMER_ID          NUMBER,
   CUT_NAME             VARCHAR2(60),
   CUT_TYPE             NUMBER,
   STUEMP_NO            VARCHAR2(20),
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   CARD_TYPE            NUMBER,
   SUBNO                VARCHAR2(20),
   PASSWORD             VARCHAR2(32),
   CURRENT_STATE        NUMBER,
   ISAUTOTRA            CHAR,
   LAST_BALA            NUMBER(20,6),
   LAST_FREEBALA        NUMBER(20,6),
   LAST_FROZEBALA       NUMBER(20,6),
   CUR_BALA             NUMBER(20,6),
   CUR_FREEBALA         NUMBER(20,6),
   CUR_FROZEBALA        NUMBER(20,6),
   OUT_BALA             NUMBER(20,6),
   IN_BALA              NUMBER(20,6),
   OUT_COUNT            NUMBER,
   IN_COUNT             NUMBER,
   CARD_BALANCE         NUMBER(15,6),
   NOBALA_NUM           NUMBER,
   CONSUME_COUNT        NUMBER,
   OPEN_DATE            VARCHAR2(10),
   OPEN_TIME            VARCHAR2(8),
   CLOSE_DATE           VARCHAR2(10),
   CLOSE_TIME           VARCHAR2(8),
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   COMMENTS             VARCHAR2(100),
   DEPOSIT_BALA         NUMBER(9,2),
   constraint SYS_C006713 primary key (ACCOUNT_ID, ANALYSIS_TIME)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: MAP_CONTACT_MONITOR_TABLE                             */
/*==============================================================*/
create table YKT_CUR.MAP_CONTACT_MONITOR_TABLE  (
   ID                   NUMBER                          not null,
   CONTACTNAME          VARCHAR2(50),
   MONITORNO            VARCHAR2(50),
   MONITORNAME          VARCHAR2(50),
   constraint SYS_C006715 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: MAP_CONTACT_TABLE                                     */
/*==============================================================*/
create table YKT_CUR.MAP_CONTACT_TABLE  (
   ID                   NUMBER                          not null,
   CONTACTNAME          VARCHAR2(50),
   CONTACTGENDER        VARCHAR2(3),
   CONTACTCOMPANY       VARCHAR2(30),
   WEEKDAYS             VARCHAR2(7),
   STARTTIME            VARCHAR2(26),
   ENDTIME              VARCHAR2(26),
   EMAIL                VARCHAR2(30),
   CELLPHONE            VARCHAR2(13),
   constraint SYS_C006717 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: MAP_DEVICE_TABLE                                      */
/*==============================================================*/
create table YKT_CUR.MAP_DEVICE_TABLE  (
   ANALYSIS_TIME        CHAR(14)                        not null,
   DEVICE_ID            NUMBER                          not null,
   DEVICE_NAME          VARCHAR2(50),
   DEVICE_TYPE          VARCHAR2(4),
   DEVPHY999_ID         VARCHAR2(8),
   FDEVPHY_ID           VARCHAR2(8),
   SUBSYSTEM_ID         NUMBER,
   AREA                 NUMBER,
   BSHEETVER            VARCHAR2(12),
   DEVICETIME           VARCHAR2(14),
   SERVERTIME           VARCHAR2(14),
   CONTACT_NAME         VARCHAR2(50),
   CPU                  NUMBER(5,2),
   MEMORY               NUMBER(5,2),
   HARDDISK             NUMBER(5,2),
   ERROR_REASON         NUMBER,
   constraint SYS_C006720 primary key (ANALYSIS_TIME, DEVICE_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: MAP_FATHERSETS_TABLE                                  */
/*==============================================================*/
create table YKT_CUR.MAP_FATHERSETS_TABLE  (
   ID                   NUMBER                          not null,
   SYSTEMID             VARCHAR2(10),
   SYSTEMNAME           VARCHAR2(50),
   STATUS               NUMBER,
   IP                   VARCHAR2(15),
   MACADDRESS           VARCHAR2(25),
   COORDX               NUMBER,
   COORDY               NUMBER,
   FEATURE              VARCHAR2(8),
   constraint SYS_C006722 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: MAP_FATHER_LINE                                       */
/*==============================================================*/
create table YKT_CUR.MAP_FATHER_LINE  (
   ID                   NUMBER                          not null,
   SPOINT               VARCHAR2(16),
   EPOINT               VARCHAR2(16),
   SPLAYER              NUMBER,
   EPLAYER              NUMBER,
   LINETYPE             NUMBER,
   LINECOLOR            NUMBER,
   LINESTYLE            NUMBER,
   LINESTATUS           NUMBER,
   constraint SYS_C006724 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: MAP_LINES_TABLE                                       */
/*==============================================================*/
create table YKT_CUR.MAP_LINES_TABLE  (
   ID                   NUMBER                          not null,
   POINT1               VARCHAR2(16),
   POINT2               VARCHAR2(16),
   LINETYPE             NUMBER,
   LINECOLOR            NUMBER,
   LINESTYLE            NUMBER,
   LINESTATUS           NUMBER,
   constraint SYS_C006726 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: MAP_PARAM_TABLE                                       */
/*==============================================================*/
create table YKT_CUR.MAP_PARAM_TABLE  (
   ID                   NUMBER                          not null,
   PARAMETER            VARCHAR2(50),
   VALUE                NUMBER(9,2),
   OTHER                VARCHAR2(30),
   constraint SYS_C006728 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: MAP_ROUTE_TEST                                        */
/*==============================================================*/
create table YKT_CUR.MAP_ROUTE_TEST  (
   ID                   NUMBER                          not null,
   SERIALNO             NUMBER,
   SETID                VARCHAR2(16),
   COORDX               NUMBER,
   COORDY               NUMBER,
   CUT_DATE             VARCHAR2(20),
   CUT_TIME             VARCHAR2(20),
   STUDNO               VARCHAR2(10),
   STU_NAME             VARCHAR2(30),
   constraint SYS_C006730 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: MAP_SERIALEXCEPT_TABLE                                */
/*==============================================================*/
create table YKT_CUR.MAP_SERIALEXCEPT_TABLE  (
   ANALYSIS_TIME        CHAR(14)                        not null,
   TX_DATE              CHAR(8)                         not null,
   TX_TIME              CHAR(6)                         not null,
   CARD_NO              NUMBER                          not null,
   DEVICE_ID            CHAR(8)                         not null,
   SERIAL_NO            NUMBER                          not null,
   PURSE_NO             NUMBER,
   IN_BALA              NUMBER,
   OUT_BALA             NUMBER,
   AMOUNT               NUMBER,
   TOTAL_CNT            NUMBER,
   TX_CODE              NUMBER                          not null,
   TX_MARK              NUMBER,
   COMU_VER             NUMBER,
   RUN_REASON           NUMBER,
   SYS_ID               NUMBER,
   STATUS               CHAR,
   COL_TIMESTAMP        CHAR(20),
   DEAL_DATE            CHAR(8),
   DEAL_TIME            CHAR(6),
   CONTACTNAME          VARCHAR2(30),
   ABNORMALTYPE         NUMBER,
   constraint SYS_C006738 primary key (SERIAL_NO, TX_DATE, TX_TIME, DEVICE_ID, CARD_NO, TX_CODE, ANALYSIS_TIME)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: MAP_SERIALOST_TABLE                                   */
/*==============================================================*/
create table YKT_CUR.MAP_SERIALOST_TABLE  (
   ANALYSISTIME         VARCHAR2(14)                    not null,
   SERIAL_NO            NUMBER                          not null,
   DEVICE_ID            CHAR(8)                         not null,
   TX_DATE              VARCHAR2(8)                     not null,
   TX_TIME              VARCHAR2(6)                     not null,
   CONTACTNAME          VARCHAR2(50),
   SERIAL_REASON        NUMBER                          not null,
   SERIAL_STATUS        NUMBER                          not null,
   constraint SYS_C006746 primary key (ANALYSISTIME, SERIAL_NO, DEVICE_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: MAP_SERIAL_TABLE                                      */
/*==============================================================*/
create table YKT_CUR.MAP_SERIAL_TABLE  (
   SERINO               NUMBER                          not null,
   SERI_TYPE            NUMBER,
   OTHER_SERI_NO        NUMBER,
   SERIAL_STATE         NUMBER,
   OPERATE_TIME         VARCHAR2(8),
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   OPERATE_DATE         VARCHAR2(10),
   DEVICE_ID            NUMBER,
   FDEVPHY_ID           VARCHAR2(8),
   DEVPHY999_ID         VARCHAR2(8),
   CARD_ID              NUMBER,
   TRADE_FEE            NUMBER(15,6),
   IN_BALANCE           NUMBER(9,2),
   OUT_BALANCE          NUMBER(9,2),
   REVISESERIAL_NO      NUMBER,
   ABNORMALTYPE         NUMBER,
   MAINDEVICE_ID        NUMBER,
   CONTACTNAME          VARCHAR2(50),
   constraint SYS_C006748 primary key (SERINO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: MAP_SETS_TABLE                                        */
/*==============================================================*/
create table YKT_CUR.MAP_SETS_TABLE  (
   ID                   NUMBER                          not null,
   SETSID               VARCHAR2(16),
   SETNAME              VARCHAR2(50),
   FATHERID             VARCHAR2(16),
   SETTYPE              VARCHAR2(8),
   SETSTATUS            NUMBER,
   XCOOR                NUMBER,
   YCOOR                NUMBER,
   FEATURE              VARCHAR2(30),
   constraint SYS_C006750 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: MAP_USER_TABLE                                        */
/*==============================================================*/
create table YKT_CUR.MAP_USER_TABLE  (
   ID                   NUMBER                          not null,
   USERNAME             VARCHAR2(30),
   NAME                 VARCHAR2(30),
   PASSWORD             VARCHAR2(32),
   GENDER               VARCHAR2(4),
   COMPANY              VARCHAR2(100),
   EMAIL                VARCHAR2(40),
   PHONE                VARCHAR2(30),
   USERROLE             VARCHAR2(4),
   LOGINTIME            VARCHAR2(14),
   USERSTATUS           NUMBER,
   ADDUSER              VARCHAR2(30),
   CREATETIME           VARCHAR2(14),
   constraint SYS_C006752 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_AIF_ACCOUNT                                         */
/*==============================================================*/
create table YKT_CUR.T_AIF_ACCOUNT  (
   ACCOUNT_ID           CHAR(16)                        not null,
   ACT_TYPE             NUMBER,
   CUSTOMER_ID          NUMBER,
   CUT_NAME             VARCHAR2(60),
   CUT_TYPE             NUMBER,
   STUEMP_NO            VARCHAR2(20),
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   CARD_TYPE            NUMBER,
   SUBNO                VARCHAR2(20),
   PASSWORD             VARCHAR2(32),
   CURRENT_STATE        NUMBER,
   ISAUTOTRA            CHAR,
   LAST_BALA            NUMBER(20,6),
   LAST_FREEBALA        NUMBER(20,6),
   LAST_FROZEBALA       NUMBER(20,6),
   CUR_BALA             NUMBER(20,6),
   CUR_FREEBALA         NUMBER(20,6),
   CUR_FROZEBALA        NUMBER(20,6),
   OUT_BALA             NUMBER(20,6),
   IN_BALA              NUMBER(20,6),
   OUT_COUNT            NUMBER,
   IN_COUNT             NUMBER,
   CARD_BALANCE         NUMBER(15,6),
   NOBALA_NUM           NUMBER,
   CONSUME_COUNT        NUMBER,
   OPEN_DATE            VARCHAR2(10),
   OPEN_TIME            VARCHAR2(8),
   CLOSE_DATE           VARCHAR2(10),
   CLOSE_TIME           VARCHAR2(8),
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   COMMENTS             VARCHAR2(100),
   DEPOSIT_BALA         NUMBER(9,2),
   constraint SYS_C006764 primary key (ACCOUNT_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_AIF_OUTSYS_ACT                                      */
/*==============================================================*/
create table YKT_CUR.T_AIF_OUTSYS_ACT  (
   S_ACT_ID             CHAR(16)                        not null,
   B_ACT_ID             VARCHAR2(40)                    not null,
   B_ACT_NAME           VARCHAR2(50),
   SYS_ID               NUMBER                          not null,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006768 primary key (S_ACT_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_AIF_TRADEACT                                        */
/*==============================================================*/
create table YKT_CUR.T_AIF_TRADEACT  (
   TRADE_NO             NUMBER                          not null,
   DBFLAG_1             NUMBER,
   DBFLAG_2             NUMBER,
   DBFLAG_3             NUMBER,
   DBFLAG_4             NUMBER,
   CRFLAG_1             NUMBER,
   CRFLAG_2             NUMBER,
   CRFLAG_3             NUMBER,
   CRFLAG_4             NUMBER,
   IDXDBACT1            NUMBER,
   IDXDBACT2            NUMBER,
   IDXDBACT3            NUMBER,
   IDXDBACT4            NUMBER,
   IDXCRACT1            NUMBER,
   IDXCRACT2            NUMBER,
   IDXCRACT3            NUMBER,
   IDXCRACT4            NUMBER,
   IDXAMT1              NUMBER,
   IDXAMT2              NUMBER,
   IDXAMT3              NUMBER,
   IDXAMT4              NUMBER,
   FEE_TYPE1            NUMBER,
   FEE_TYPE2            NUMBER,
   FEE_TYPE3            NUMBER,
   FEE_TYPE4            NUMBER,
   DBACTNO_1            CHAR(16),
   DBACTNO_2            CHAR(16),
   DBACTNO_3            CHAR(16),
   DBACTNO_4            CHAR(16),
   CRACTNO_1            CHAR(16),
   CRACTNO_2            CHAR(16),
   CRACTNO_3            CHAR(16),
   CRACTNO_4            CHAR(16),
   COMMENTS1            VARCHAR2(60),
   COMMENTS2            VARCHAR2(60),
   COMMENTS3            VARCHAR2(60),
   COMMENTS4            VARCHAR2(60),
   constraint SYS_C006770 primary key (TRADE_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_CUSTOMER                                        */
/*==============================================================*/
create table YKT_CUR.T_CIF_CUSTOMER  (
   CUT_ID               NUMBER                          not null,
   CUT_TYPE             NUMBER,
   CUT_STATE            NUMBER                          not null,
   CUT_NAME             VARCHAR2(60),
   PASSWORD             VARCHAR2(32),
   AREA                 NUMBER,
   LIB_CARDID           VARCHAR2(50),
   IS_HAVECARD          CHAR,
   STUEMP_NO            VARCHAR2(20),
   CLASSDEPT_NO         VARCHAR2(10),
   CLASSDEPT_NAME       VARCHAR2(50),
   S_CODE               VARCHAR2(100),
   MAN                  VARCHAR2(60),
   SEX                  CHAR,
   NATION               NUMBER,
   MAN_ID               VARCHAR2(20),
   TEL                  VARCHAR2(20),
   ADDRESS              VARCHAR2(150),
   REG_TIME             VARCHAR2(26),
   CAN_TIME             VARCHAR2(26),
   FEE_TYPE             NUMBER,
   BATCH_NO             VARCHAR2(14),
   CLASS_NO             VARCHAR2(10),
   MED_FEETYPE          VARCHAR2(5),
   IN_DATE              CHAR(10),
   BUILDING_NO          VARCHAR2(5),
   FLOOR_NO             VARCHAR2(5),
   ROOM_NO              VARCHAR2(5),
   UPD_DATE             CHAR(10),
   UPD_TIME             CHAR(8),
   SYN_TIME             CHAR(14),
   COMMENTS             VARCHAR2(150),
   HAS_POSTPONE_ROLE    CHAR(2),
   FROZEN_STATUS        NUMBER,
   DUTY_NAME            VARCHAR2(120),
   TEL2                 VARCHAR2(20),
   TEL3                 VARCHAR2(20),
   OA_ACCOUNT           VARCHAR2(50),
   E_MAIL               VARCHAR2(50),
   constraint SYS_C006774 primary key (CUT_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_CUSTOMER_TEST                                   */
/*==============================================================*/
create table YKT_CUR.T_CIF_CUSTOMER_TEST  (
   CUT_ID               NUMBER                          not null,
   CUT_TYPE             NUMBER,
   CUT_STATE            NUMBER                          not null,
   CUT_NAME             VARCHAR2(60),
   PASSWORD             VARCHAR2(32),
   AREA                 NUMBER,
   LIB_CARDID           VARCHAR2(50),
   IS_HAVECARD          CHAR,
   STUEMP_NO            VARCHAR2(20),
   CLASSDEPT_NO         VARCHAR2(10),
   CLASSDEPT_NAME       VARCHAR2(50),
   MAN                  VARCHAR2(60),
   SEX                  CHAR,
   NATION               NUMBER,
   MAN_ID               VARCHAR2(20),
   TEL                  VARCHAR2(20),
   ADDRESS              VARCHAR2(150),
   REG_TIME             VARCHAR2(26)                    not null,
   CAN_TIME             VARCHAR2(26),
   COMMENTS             VARCHAR2(150),
   S_CODE               VARCHAR2(100),
   CLASS_NO             VARCHAR2(10),
   BATCH_NO             VARCHAR2(14),
   IN_DATE              CHAR(10),
   BUILDING_NO          VARCHAR2(10),
   FLOOR_NO             VARCHAR2(10),
   ROOM_NO              VARCHAR2(10),
   MED_FEETYPE          VARCHAR2(5),
   FEE_TYPE             VARCHAR2(5),
   UPD_DATE             CHAR(10),
   UPD_TIME             CHAR(8),
   SYN_TIME             CHAR(14),
   constraint SYS_C006778 primary key (CUT_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_CUSTOMER_TMP                                    */
/*==============================================================*/
create table YKT_CUR.T_CIF_CUSTOMER_TMP  (
   BATCH_NO             CHAR(14)                        not null,
   SEQNO                NUMBER                          not null,
   STUEMP_NO            VARCHAR2(20),
   CUT_NAME             VARCHAR2(60),
   CUT_TYPE             NUMBER,
   FEE_TYPE             NUMBER,
   SEX                  CHAR,
   MAN_ID               VARCHAR2(20),
   PHONE                VARCHAR2(20),
   AREA                 NUMBER,
   DEPT_NO              VARCHAR2(10),
   S_CODE               VARCHAR2(10),
   CLASS_NO             VARCHAR2(10),
   IN_SCHOOL_DATE       CHAR(8),
   OUT_SCHOOL_DATE      CHAR(8),
   CARD_TYPE            NUMBER,
   OPER_CODE            VARCHAR2(10),
   STATUS               CHAR,
   constraint SYS_C006781 primary key (BATCH_NO, SEQNO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_CUST_CARD_ACCOUNT                               */
/*==============================================================*/
create table YKT_CUR.T_CIF_CUST_CARD_ACCOUNT  (
   CUSTOMER_ID          NUMBER,
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   ACCOUNT_ID           CHAR(16)                        not null,
   B_ACT_ID             VARCHAR2(40)                    not null,
   B_ACT_NAME           VARCHAR2(50),
   SYS_ID               NUMBER                          not null,
   BEGIN_DATE           VARCHAR2(10),
   BEGIN_TIME           VARCHAR2(8),
   END_TIME             VARCHAR2(8),
   END_DATE             VARCHAR2(10),
   COMMENTS             VARCHAR2(100)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_CUTTYPECARDTYPE                                 */
/*==============================================================*/
create table YKT_CUR.T_CIF_CUTTYPECARDTYPE  (
   CUT_TYPE             NUMBER                          not null,
   CARD_TYPE            NUMBER,
   VALIDDATE            NUMBER,
   constraint SYS_C006786 primary key (CUT_TYPE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_CUTTYPEFEE                                      */
/*==============================================================*/
create table YKT_CUR.T_CIF_CUTTYPEFEE  (
   CUT_TYPE             NUMBER                          not null,
   TYPE_NAME            VARCHAR2(50),
   IS_OUTFEE            CHAR,
   RATIO                NUMBER,
   VALIDDATE            NUMBER,
   DEPOSIT_FEE          NUMBER(9,2),
   COST_FEE             NUMBER(9,2),
   IN_FEE               NUMBER(9,2),
   IS_FIRSTCOSTFEE      NUMBER,
   IS_RETURNCOSTFEE     NUMBER,
   MAX_BALA             NUMBER(15,6),
   constraint SYS_C006788 primary key (CUT_TYPE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_CUTTYPETRADEFEE                                 */
/*==============================================================*/
create table YKT_CUR.T_CIF_CUTTYPETRADEFEE  (
   CUT_TYPE             NUMBER                          not null,
   TRADECODE            NUMBER                          not null,
   IS_DEPOSITFEE        NUMBER,
   DEPOSITFEE_FLAG      NUMBER,
   DEPOSITFEE_RATIO     NUMBER,
   DEPOSITFEE           NUMBER(9,2),
   IS_COSTFEE           NUMBER,
   COSTFEE_FLAG         NUMBER,
   COSTFEE_RATIO        NUMBER,
   COSTFEE              NUMBER(9,2),
   IS_BOARDFEE          NUMBER,
   BOARDFEE_FLAG        NUMBER,
   BOARDFEE_RATIO       NUMBER,
   BOARDFEE             NUMBER(9,2),
   IS_INFEE             NUMBER,
   INFEE_FLAG           NUMBER,
   INFEE_RATIO          NUMBER,
   INFEE                NUMBER(9,2),
   constraint SYS_C006793 primary key (CUT_TYPE, TRADECODE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_DEPT                                            */
/*==============================================================*/
create table YKT_CUR.T_CIF_DEPT  (
   DEPT_CODE            VARCHAR2(10)                    not null,
   IS_ACADEMY           CHAR,
   DEPT_NAME            VARCHAR2(100),
   E_NAME               VARCHAR2(100),
   PARENTDEPT_CODE      VARCHAR2(10),
   DEPT_LEVEL           NUMBER,
   IS_AVAILABILITY      CHAR,
   COMMENTS             VARCHAR2(100),
   DWGLM                VARCHAR2(6),
   RESERVE1             VARCHAR2(100),
   RESERVE2             VARCHAR2(100),
   RESERVE3             VARCHAR2(100),
   constraint SYS_C006795 primary key (DEPT_CODE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_EMPLOYEE                                        */
/*==============================================================*/
create table YKT_CUR.T_CIF_EMPLOYEE  (
   EMPLOYEE_ID          VARCHAR2(20)                    not null,
   EMP_STATE            NUMBER                          not null,
   TYPE_ID              NUMBER,
   EMP_NAME             VARCHAR2(60),
   SEX                  CHAR,
   POLITY               NUMBER,
   NATION2              NUMBER,
   IDCARD               VARCHAR2(20),
   LEVEL_NO             NUMBER,
   DEPARTMENT_NO        VARCHAR2(10),
   TEL                  VARCHAR2(20),
   ADDRESS              VARCHAR2(100),
   REG_TIME             VARCHAR2(26),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006800 primary key (EMPLOYEE_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_PHOTO                                           */
/*==============================================================*/
create table YKT_CUR.T_CIF_PHOTO  (
   CUT_ID               NUMBER                          not null,
   STUEMP_NO            VARCHAR2(20),
   PHOTO                BLOB,
   PHOTO_DATE           VARCHAR2(8),
   PHOTO_TIME           VARCHAR2(6),
   IF_CARD              CHAR(10)                       default '0',
   MAKECARD_DATE        VARCHAR2(8),
   MAKECARD_TIME        VARCHAR2(6),
   RES_1                VARCHAR2(10),
   RES_2                VARCHAR2(10),
   RES_3                VARCHAR2(100),
   PHOTO_EXACTTIME		VARCHAR(20),
   primary key (CUT_ID)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_PHOTO
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_PHOTOLIMIT                                      */
/*==============================================================*/
create table YKT_CUR.T_CIF_PHOTOLIMIT  (
   OPER_CODE            VARCHAR2(10)                    not null,
   OPER_NAME            VARCHAR2(20),
   BEGIN_DATE           VARCHAR2(15),
   END_DATE             VARCHAR2(15),
   PASSWORD             VARCHAR2(100),
   OPER_LIMIT           VARCHAR2(50),
   ENABLED              CHAR,
   MEMO                 VARCHAR2(100)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_SHOP                                            */
/*==============================================================*/
create table YKT_CUR.T_CIF_SHOP  (
   SHOP_ID              NUMBER                          not null,
   CUT_ID               NUMBER,
   DEPT_ID              NUMBER,
   SHOP_NAME            VARCHAR2(50),
   SHOP_TYPE            NUMBER,
   IS_INDEP             CHAR,
   IS_LEAF              CHAR,
   SHOP_STATE           NUMBER,
   SHOP_MANAGER         VARCHAR2(20),
   MAN                  VARCHAR2(60),
   SEX                  CHAR,
   NATION               NUMBER,
   MAN_ID               VARCHAR2(20),
   TEL                  VARCHAR2(20),
   ADDRESS              VARCHAR2(100),
   IS_GETFEE            CHAR,
   RATIO                NUMBER,
   MANAGER_TYPE         NUMBER,
   DUTY_TYPE            NUMBER,
   REG_TIME             VARCHAR2(26),
   COMMENTS             VARCHAR2(100),
   CAN_TIME             VARCHAR2(26),
   B_ACT_ID             VARCHAR2(40),
   B_ACT_NAME           VARCHAR2(60),
   constraint SYS_C006812 primary key (SHOP_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_SHOP_LOG                                        */
/*==============================================================*/
create table YKT_CUR.T_CIF_SHOP_LOG  (
   UPDATE_DATE          VARCHAR2(10)                    not null,
   SHOP_ID              NUMBER                          not null,
   CUT_ID               NUMBER,
   DEPT_ID              NUMBER,
   SHOP_NAME            VARCHAR2(50),
   SHOP_TYPE            NUMBER,
   IS_INDEP             CHAR,
   IS_LEAF              CHAR,
   SHOP_STATE           NUMBER,
   SHOP_MANAGER         VARCHAR2(20),
   MAN                  VARCHAR2(60),
   SEX                  CHAR,
   NATION               NUMBER,
   MAN_ID               VARCHAR2(20),
   TEL                  VARCHAR2(20),
   ADDRESS              VARCHAR2(150),
   IS_GETFEE            CHAR,
   RATIO                NUMBER,
   MANAGER_TYPE         NUMBER,
   DUTY_TYPE            NUMBER,
   REG_TIME             VARCHAR2(26),
   COMMENTS             VARCHAR2(150),
   constraint SYS_C006816 primary key (UPDATE_DATE, SHOP_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_SHOP_MEAL                                       */
/*==============================================================*/
create table YKT_CUR.T_CIF_SHOP_MEAL  (
   SHOP_ID              NUMBER                          not null,
   MEAL_ID              NUMBER                          not null,
   UPDATE_DATE          CHAR(8),
   UPDATE_OPER          CHAR(8),
   "COMMENT"            VARCHAR2(200),
   constraint SYS_C0012339 primary key (SHOP_ID, MEAL_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

comment on column YKT_CUR.T_CIF_SHOP_MEAL.UPDATE_DATE is
'更新时间';

/*==============================================================*/
/* Table: T_CIF_SHOP_POS                                        */
/*==============================================================*/
create table YKT_CUR.T_CIF_SHOP_POS  (
   ID                   NUMBER                          not null,
   DEVICE_ID            NUMBER                          not null,
   SHOP_ID              NUMBER,
   BEGIN_DATE           VARCHAR2(10),
   BEGIN_TIME           VARCHAR2(8),
   END_TIME             VARCHAR2(8),
   END_DATE             VARCHAR2(10),
   COMMENTS             VARCHAR2(100),
   FEE_CODE             NUMBER                         default 0 not null,
   constraint SYS_C006820 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_SHOP_POS_LOG                                    */
/*==============================================================*/
create table YKT_CUR.T_CIF_SHOP_POS_LOG  (
   UPDATE_DATE          VARCHAR2(10)                    not null,
   ID                   NUMBER                          not null,
   DEVICE_ID            NUMBER,
   SHOP_ID              NUMBER,
   BEGIN_DATE           VARCHAR2(10),
   BEGIN_TIME           VARCHAR2(8),
   END_TIME             VARCHAR2(8),
   END_DATE             VARCHAR2(10),
   COMMENTS             VARCHAR2(100),
   FEE_CODE             NUMBER                         default 0 not null,
   constraint SYS_C006824 primary key (UPDATE_DATE, ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIF_SPECIALITY                                      */
/*==============================================================*/
create table YKT_CUR.T_CIF_SPECIALITY  (
   S_CODE               VARCHAR2(10)                    not null,
   S_NAME               VARCHAR2(100),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006826 primary key (S_CODE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_CIT_STUDENT                                         */
/*==============================================================*/
create table YKT_CUR.T_CIT_STUDENT  (
   STUDENT_NO           VARCHAR2(20)                    not null,
   STUDY_STATE          NUMBER                          not null,
   STUDY_TYPE           NUMBER,
   STUDENT_NAME         VARCHAR2(60),
   SEX                  CHAR,
   POLITY               NUMBER,
   NATION               NUMBER,
   IDCARD               VARCHAR2(20),
   DEPT_NO              VARCHAR2(10),
   DEPT_CODE            VARCHAR2(10),
   REGISTER_DATE        VARCHAR2(10),
   GRADE                VARCHAR2(8),
   STUDY_TIME           NUMBER,
   TEL                  VARCHAR2(20),
   ADDRESS              VARCHAR2(100),
   REG_TIME             VARCHAR2(26),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006829 primary key (STUDENT_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_COMM_CFG                                            */
/*==============================================================*/
create table YKT_CUR.T_COMM_CFG  (
   FUNC_CODE            NUMBER                          not null,
   CPACK_ITEM           VARCHAR2(240)                   not null,
   ITEM_CAPTION         VARCHAR2(240),
   constraint SYS_C0014802 primary key (FUNC_CODE, CPACK_ITEM)
         using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_COMM_LOG                                            */
/*==============================================================*/
create table YKT_CUR.T_COMM_LOG  (
   SAVE_TIME            VARCHAR2(30),
   FUNC_CODE            NUMBER,
   CPACK_DATA           VARCHAR2(2000),
   TERM_ID              NUMBER,
   OPER_CODE            VARCHAR2(10)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_DOOR_DEVICE_CARDLIST                                */
/*==============================================================*/
create table YKT_CUR.T_DOOR_DEVICE_CARDLIST  (
   DEVICE_ID            INTEGER                         not null,
   CUST_ID              INTEGER                         not null,
   WEEK_ID              INTEGER,
   HOLIDAY_ID           INTEGER,
   CARD_NO              NUMBER,
   CARD_SERIAL_NO       CHAR(8),
   STATUS               INTEGER                         not null,
   UPDATE_TIME          CHAR(14)                        not null,
   DOWNLOAD_TIME        CHAR(14),
   CUST_VOL				CHAR(12),
   constraint SYS_C006837 primary key (DEVICE_ID, CUST_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_DOOR_DEV_HOLIDAY_TBL                                */
/*==============================================================*/
create table YKT_CUR.T_DOOR_DEV_HOLIDAY_TBL  (
   MAJOR_DEV_ID         INTEGER                         not null,
   MINOR_DEV_ID         INTEGER                         not null,
   HOLIDAY_ID           INTEGER                         not null,
   SEQNO                INTEGER,
   FLAG                 INTEGER,
   UPDATE_TIME          CHAR(14),
   DOWNLOAD_TIME        CHAR(14),
   REF_CNT              INTEGER,
   constraint PK_T_DOOR_DEV_HOLIDAY_TBL primary key (MAJOR_DEV_ID, MINOR_DEV_ID, HOLIDAY_ID)
);

/*==============================================================*/
/* Table: T_DOOR_DEV_TIMESECT_TBL                               */
/*==============================================================*/
create table YKT_CUR.T_DOOR_DEV_TIMESECT_TBL  (
   MAJOR_DEV_ID         INTEGER                         not null,
   MINOR_DEV_ID         INTEGER                         not null,
   SECT_ID              INTEGER                         not null,
   SEQNO                INTEGER,
   UPDATE_TIME          CHAR(14),
   DOWNLOAD_TIME        CHAR(14),
   REF_CNT              INTEGER,
   FLAG                 INTEGER,
   constraint PK_T_DOOR_DEV_TIMESECT_TBL primary key (MAJOR_DEV_ID, MINOR_DEV_ID, SECT_ID)
);

/*==============================================================*/
/* Table: T_DOOR_DEV_TIME_GROUP_TBL                             */
/*==============================================================*/
create table YKT_CUR.T_DOOR_DEV_TIME_GROUP_TBL  (
   MAJOR_DEV_ID         INTEGER                         not null,
   MINOR_DEV_ID         INTEGER                         not null,
   TIMEGRP_ID           INTEGER                         not null,
   SEQNO                INTEGER,
   FLAG                 INTEGER,
   UPDATE_TIME          CHAR(14),
   DOWNLOAD_TIME        CHAR(14),
   REF_CNT              INTEGER,
   constraint PK_T_DOOR_DEV_TIME_GROUP_TBL primary key (MAJOR_DEV_ID, MINOR_DEV_ID, TIMEGRP_ID)
);

/*==============================================================*/
/* Table: T_DOOR_DEV_WEEK_TBL                                   */
/*==============================================================*/
create table YKT_CUR.T_DOOR_DEV_WEEK_TBL  (
   MAJOR_DEV_ID         INTEGER                         not null,
   MINOR_DEV_ID         INTEGER                         not null,
   WEEK_ID              INTEGER                         not null,
   DOWN_DATE            CHAR(14),
   UPDATE_DATE          CHAR(14),
   SEQNO                INTEGER,
   REF_CNT              INTEGER,
   FLAG                 INTEGER,
   constraint PK_T_DOOR_DEV_WEEK_TBL primary key (MAJOR_DEV_ID, MINOR_DEV_ID, WEEK_ID)
);

/*==============================================================*/
/* Table: T_DOOR_EVENTS                                         */
/*==============================================================*/
create table YKT_CUR.T_DOOR_EVENTS  (
   DEVICE_ID            INTEGER                         not null,
   EVENT_CODE           INTEGER                         not null,
   TX_DATE              CHAR(8)                         not null,
   TX_TIME              CHAR(6)                         not null,
   SYSID                INTEGER,
   EVENT_MSG            VARCHAR(255),
   COL_DATE             CHAR(8),
   COL_TIME             CHAR(6),
   constraint PK_T_DOOR_EVENTS primary key (DEVICE_ID, EVENT_CODE, TX_DATE, TX_TIME)
);


/*==============================================================*/
/* Table: T_DOOR_GROUP                                          */
/*==============================================================*/
create table YKT_CUR.T_DOOR_GROUP  (
   GROUP_ID             NUMBER(6)                       not null,
   GROUP_NAME           VARCHAR2(80),
   FLAG                 INTEGER,
   constraint SYS_C006857 primary key (GROUP_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_DOOR_GROUP_MEMBER                                   */
/*==============================================================*/
create table YKT_CUR.T_DOOR_GROUP_MEMBER  (
   GROUP_ID             NUMBER                          not null,
   DEVICE_ID            NUMBER                          not null,
   COMMENTS             VARCHAR2(150),
   constraint SYS_C006860 primary key (GROUP_ID, DEVICE_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_DOOR_GROUP_OPER_RIGHT                               */
/*==============================================================*/
create table YKT_CUR.T_DOOR_GROUP_OPER_RIGHT  (
   GID                  INTEGER,
   OPER_CODE            VARCHAR(10)
);

/*==============================================================*/
/* Table: T_DOOR_HOLIDAY                                        */
/*==============================================================*/
create table YKT_CUR.T_DOOR_HOLIDAY  (
   HOLIDAY_ID           NUMBER                          not null,
   HOLIDAY_NAME         VARCHAR2(150),
   FLAG                 INTEGER,
   LAST_UPDATE          CHAR(14),
   DAY_CNT              INTEGER,
   constraint SYS_C006867 primary key (HOLIDAY_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_DOOR_HOLIDAY_TIMES                                  */
/*==============================================================*/
create table YKT_CUR.T_DOOR_HOLIDAY_TIMES  (
   HID                  INTEGER                         not null,
   H_DATE               CHAR(8)                         not null,
   TIME_GRP_ID          INTEGER,
   FLAG                 INTEGER,
   LAST_UPDATE          CHAR(14),
   constraint PK_T_DOOR_HOLIDAY_TIMES primary key (HID, H_DATE)
);

/*==============================================================*/
/* Table: T_DOOR_OPER_RIGHT                                     */
/*==============================================================*/
create table YKT_CUR.T_DOOR_OPER_RIGHT  (
   DEVICE_ID            INTEGER                         not null,
   OPER_CODE            VARCHAR(10)                     not null,
   constraint SYS_C006870 primary key (DEVICE_ID, OPER_CODE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_DOOR_RPT_DAY                                        */
/*==============================================================*/
create table YKT_CUR.T_DOOR_RPT_DAY  (
   TX_DATE              CHAR(8)                         not null,
   DEVICE_ID            CHAR(8)                         not null,
   TOTAL_CNT            NUMBER,
   VALID_CNT            NUMBER,
   INVALID_CNT          NUMBER,
   constraint SYS_C006873 primary key (TX_DATE, DEVICE_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_DOOR_TIMES_GROUP                                    */
/*==============================================================*/
create table YKT_CUR.T_DOOR_TIMES_GROUP  (
   TGID                 INTEGER                         not null,
   TGNAME               VARCHAR(60),
   TIME1_ID             INTEGER,
   TIME2_ID             INTEGER,
   TIME3_ID             INTEGER,
   TIME4_ID             INTEGER,
   TIME5_ID             INTEGER,
   TIME6_ID             INTEGER,
   TIME7_ID             INTEGER,
   TIME8_ID             INTEGER,
   FLAG                 INTEGER,
   UPDATE_TIME          CHAR(14),
   constraint PK_T_DOOR_TIMES_GROUP primary key (TGID)
);

comment on table YKT_CUR.T_DOOR_TIMES_GROUP is
'门禁时间段组定义表';

/*==============================================================*/
/* Table: T_DOOR_TIME_SECT                                      */
/*==============================================================*/
create table YKT_CUR.T_DOOR_TIME_SECT  (
   SID                  INTEGER                         not null,
   SNAME                VARCHAR(60),
   BEGIN_TIME           CHAR(6),
   END_TIME             CHAR(6),
   FLAG                 INTEGER,
   LAST_UPDATE          CHAR(14),
   constraint PK_T_DOOR_TIME_SECT primary key (SID)
);

comment on table YKT_CUR.T_DOOR_TIME_SECT is
'门禁时间段参数表';

/*==============================================================*/
/* Table: T_DOOR_TXDTL                                          */
/*==============================================================*/
create table YKT_CUR.T_DOOR_TXDTL  (
   DEVICE_ID            INTEGER                         not null,
   TX_DATE              CHAR(8)                         not null,
   TX_TIME              CHAR(6)                         not null,
   PHYCARD_NO           CHAR(8)                         not null,
   SERIAL_NO            INTEGER,
   CUST_ID				INTEGER,
   CARD_NO              NUMBER,
   TX_MARK              NUMBER,
   CRC                  CHAR(5),
   SYS_ID               NUMBER,
   COL_DATE             CHAR(8),
   COL_TIME             CHAR(6),
   COMMENTS             VARCHAR(250),
   constraint SYS_C006877 primary key (DEVICE_ID, TX_DATE, TX_TIME, PHYCARD_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_DOOR_WEEKS                                          */
/*==============================================================*/
create table YKT_CUR.T_DOOR_WEEKS  (
   WID                  INTEGER                         not null,
   WEEK_NAME            VARCHAR(60),
   FLAG                 INTEGER,
   LAST_UPDATE          CHAR(14),
   DAY1_ID              INTEGER,
   DAY2_ID              INTEGER,
   DAY3_ID              INTEGER,
   DAY4_ID              INTEGER,
   DAY5_ID              INTEGER,
   DAY6_ID              INTEGER,
   DAY7_ID              INTEGER,
   constraint PK_T_DOOR_WEEKS primary key (WID)
);

comment on table YKT_CUR.T_DOOR_WEEKS is
'门禁周时间表';

/*==============================================================*/
/* Table: T_GROUPS                                              */
/*==============================================================*/
create table YKT_CUR.T_GROUPS  (
   GROUP_ID             VARCHAR2(10)                    not null,
   GROUP_NAME           VARCHAR2(100),
   GROUP_STATE          CHAR,
   GROUP_ACC            VARCHAR2(20),
   constraint PK_GROUPS primary key (GROUP_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

comment on column YKT_CUR.T_GROUPS.GROUP_ID is
'组号';

comment on column YKT_CUR.T_GROUPS.GROUP_NAME is
'组名称';

comment on column YKT_CUR.T_GROUPS.GROUP_STATE is
'标志- 1正常 0 注销';

comment on column YKT_CUR.T_GROUPS.GROUP_ACC is
'组账号';

/*==============================================================*/
/* Table: T_GROUP_CASH_REPORT                                   */
/*==============================================================*/
create table YKT_CUR.T_GROUP_CASH_REPORT  (
   GROUP_ID             VARCHAR2(10)                    not null,
   PRE_MONEY            NUMBER                         default 0 not null,
   CUR_MONEY            NUMBER                         default 0 not null,
   UPD_DATE             CHAR(8),
   LAST_CHECK_DATE      CHAR(8),
   LAST_CHECK_TIME      CHAR(6),
   constraint PK_GROUP_CASH_REP primary key (GROUP_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

comment on column YKT_CUR.T_GROUP_CASH_REPORT.GROUP_ID is
'组ID';

comment on column YKT_CUR.T_GROUP_CASH_REPORT.PRE_MONEY is
'上次金额';

comment on column YKT_CUR.T_GROUP_CASH_REPORT.CUR_MONEY is
'当前余额';

comment on column YKT_CUR.T_GROUP_CASH_REPORT.UPD_DATE is
'结算更新时间';

comment on column YKT_CUR.T_GROUP_CASH_REPORT.LAST_CHECK_DATE is
'上次解款日期';

comment on column YKT_CUR.T_GROUP_CASH_REPORT.LAST_CHECK_TIME is
'上次解款时间';

/*==============================================================*/
/* Table: T_MIF_ALARM                                           */
/*==============================================================*/
create table YKT_CUR.T_MIF_ALARM  (
   ALARMNO              NUMBER                          not null,
   MONITYPE             NUMBER,
   ALARMLEVEL           NUMBER,
   ALARMTYPE            NUMBER,
   ALDEFINE             VARCHAR2(100),
   constraint SYS_C006879 primary key (ALARMNO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_MIF_ALARMLEVEL                                      */
/*==============================================================*/
create table YKT_CUR.T_MIF_ALARMLEVEL  (
   ALARMLEVEL           NUMBER                          not null,
   ALNAME               VARCHAR2(50),
   COLORNO              NUMBER,
   IS_OP                CHAR,
   constraint SYS_C006881 primary key (ALARMLEVEL)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_MIF_ALARMOP                                         */
/*==============================================================*/
create table YKT_CUR.T_MIF_ALARMOP  (
   SERIAL_NO            NUMBER                          not null,
   SERIAL_STATE         NUMBER,
   ALARMTYPE            NUMBER,
   ALARM_TIME           VARCHAR2(26),
   SERIAL_TYPE          NUMBER,
   SERIAL_NO2           NUMBER,
   SERIAL_STATE2        NUMBER,
   OP_TIME              VARCHAR2(26),
   ALARMNO              NUMBER,
   OPER_CODE            VARCHAR2(10),
   OPER_NAME            VARCHAR2(32),
   PHONE                VARCHAR2(40),
   MOBILE               VARCHAR2(40),
   ADDR                 VARCHAR2(80),
   ZIP                  CHAR(6),
   EMAIL                VARCHAR2(60),
   FINISH_TIME          VARCHAR2(26),
   OPRESULT             VARCHAR2(100),
   constraint SYS_C006883 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_MIF_CARDDBINCON                                     */
/*==============================================================*/
create table YKT_CUR.T_MIF_CARDDBINCON  (
   SERIAL_NO            NUMBER                          not null,
   SERIAL_STATE         NUMBER                          not null,
   OP_TIME              VARCHAR2(26)                    not null,
   ALARMNO              NUMBER                          not null,
   ACCOUNT_ID           CHAR(16)                        not null,
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   CUR_FREEBALA         NUMBER(15,2),
   CARD_BALANCE         NUMBER(15,2),
   constraint SYS_C006889 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_MIF_CARDOPERATE                                     */
/*==============================================================*/
create table YKT_CUR.T_MIF_CARDOPERATE  (
   SERIAL_NO2           NUMBER                          not null,
   SERIAL_STATE2        NUMBER,
   OP_TIME              VARCHAR2(26),
   ALARMNO              NUMBER,
   CONCOUNT             NUMBER,
   SERIAL_NO            NUMBER,
   OTHER_SERI_NO        NUMBER,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER,
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   ENTERACT_DATE        VARCHAR2(10),
   ENTERACT_TIME        VARCHAR2(8),
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   DEVPHY999_ID         VARCHAR2(8),
   OUT_BALANCE          NUMBER(9,2),
   IN_BALANCE           NUMBER(9,2),
   SHOWID               CHAR(10),
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   OLDPWD               VARCHAR2(32),
   NEWPWD               VARCHAR2(32),
   CUSTOMER_ID          NUMBER,
   SUBSIDY_FEE          NUMBER(9,2),
   TOPUP_FEE            NUMBER(9,2),
   DEPOSIT_FEE          NUMBER(9,2),
   IN_FEE               NUMBER(9,2),
   COST_FEE             NUMBER(9,2),
   OPER_CODE            VARCHAR2(10),
   B_ACT_ID             VARCHAR2(40),
   SYS_ID               NUMBER,
   TMARK                NUMBER,
   DEV_AUTH             CHAR(8),
   COMU_VER             NUMBER,
   RUN_REASON           NUMBER,
   CRC                  CHAR(5),
   ECODE                NUMBER,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006891 primary key (SERIAL_NO2)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_MIF_CONSUME                                         */
/*==============================================================*/
create table YKT_CUR.T_MIF_CONSUME  (
   SERIAL_NO2           NUMBER                          not null,
   SERIAL_STATE2        NUMBER,
   OP_TIME              VARCHAR2(26),
   ALARMNO              NUMBER,
   CONCOUNT             NUMBER,
   SERIAL_NO            NUMBER,
   OTHER_SERI_NO        NUMBER,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER,
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   ENTERACT_DATE        VARCHAR2(10),
   ENTERACT_TIME        VARCHAR2(8),
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   DEVPHY999_ID         VARCHAR2(8),
   CONSUME_COUNT        NUMBER,
   OUT_BALANCE          NUMBER(9,2),
   IN_BALANCE           NUMBER(9,2),
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   CONSUME_FEE          NUMBER(9,2),
   IS_ONLINE            CHAR,
   TMARK                NUMBER,
   DEV_AUTH             CHAR(8),
   COMU_VER             NUMBER,
   RUN_REASON           NUMBER,
   CRC                  CHAR(5),
   ECODE                NUMBER,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   constraint SYS_C006893 primary key (SERIAL_NO2)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_MIF_DEVMONERR                                       */
/*==============================================================*/
create table YKT_CUR.T_MIF_DEVMONERR  (
   SERIAL_NO            NUMBER                          not null,
   SERIAL_STATE         NUMBER                          not null,
   DEVICE_ID            NUMBER                          not null,
   OP_TIME              VARCHAR2(26)                    not null,
   COLLECT_TIME         VARCHAR2(26),
   IS_WS                CHAR,
   ALARMNO              NUMBER                          not null,
   BEATSTATE            NUMBER                          not null,
   BSVERSION            VARCHAR2(12),
   HDPER                NUMBER,
   EMSPER               NUMBER,
   CPUPER               NUMBER,
   DEVTIME              VARCHAR2(26),
   NOUPLOADNUM          NUMBER,
   constraint SYS_C006900 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_MIF_DEVMONITOR                                      */
/*==============================================================*/
create table YKT_CUR.T_MIF_DEVMONITOR  (
   DEVICE_ID            NUMBER                          not null,
   OP_TIME              VARCHAR2(26),
   COLLECT_TIME         VARCHAR2(26),
   IS_WS                CHAR,
   ALARMNO              NUMBER,
   BEATSTATE            NUMBER,
   BSVERSION            VARCHAR2(12),
   HDPER                NUMBER,
   EMSPER               NUMBER,
   CPUPER               NUMBER,
   DEVTIME              VARCHAR2(26),
   NOUPLOADNUM          NUMBER,
   constraint SYS_C006902 primary key (DEVICE_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_MIF_LINKMAN                                         */
/*==============================================================*/
create table YKT_CUR.T_MIF_LINKMAN  (
   ALARMNO              NUMBER                          not null,
   OPER_CODE            VARCHAR2(10)                    not null,
   constraint SYS_C006905 primary key (ALARMNO, OPER_CODE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_MIF_OPERATOR                                        */
/*==============================================================*/
create table YKT_CUR.T_MIF_OPERATOR  (
   OPER_CODE            VARCHAR2(10)                    not null,
   EMPLOYEE_ID          VARCHAR2(20),
   CARD_ID              NUMBER,
   OPER_NAME            VARCHAR2(32)                    not null,
   PHONE                VARCHAR2(40),
   MOBILE               VARCHAR2(40),
   ADDR                 VARCHAR2(80),
   ZIP                  CHAR(6),
   EMAIL                VARCHAR2(60),
   STATUS               CHAR,
   LOGIN_TIME           VARCHAR2(26),
   LOGOUT_TIME          VARCHAR2(26),
   LOGIN_IP             VARCHAR2(20),
   MAC_ADDR             VARCHAR2(20),
   LOGIN_FLAG           CHAR,
   LOGIN_APP            CHAR,
   REG_DATE             CHAR(8),
   REG_TIME             CHAR(8),
   COMMENTS             VARCHAR2(100)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_MIF_SYSSTATE                                        */
/*==============================================================*/
create table YKT_CUR.T_MIF_SYSSTATE  (
   SERIAL_NO            NUMBER                          not null,
   SERIAL_STATE         NUMBER                          not null,
   OP_TIME              VARCHAR2(26)                    not null,
   ALARMNO              NUMBER                          not null,
   SYSSTATE             NUMBER                          not null,
   BEGINTIME            VARCHAR2(26)                    not null,
   constraint SYS_C006914 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_MIF_TRADESERIALERROR                                */
/*==============================================================*/
create table YKT_CUR.T_MIF_TRADESERIALERROR  (
   SERIAL_NO2           NUMBER                          not null,
   SERIAL_STATE2        NUMBER,
   OP_TIME              VARCHAR2(26),
   ALARMNO              NUMBER,
   CONCOUNT             NUMBER,
   SERIAL_NO            NUMBER,
   OTHER_SERI_NO        NUMBER,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER,
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   ENTERACT_DATE        VARCHAR2(10),
   ENTERACT_TIME        VARCHAR2(8),
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   DEVPHY999_ID         VARCHAR2(8),
   SHOWID               CHAR(10),
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   TRADE_COUNT          NUMBER,
   TRADE_FEE            NUMBER(15,6),
   IN_BALANCE           NUMBER(9,2),
   OUT_BALANCE          NUMBER(9,2),
   DEPOSIT_FEE          NUMBER(9,2),
   IN_FEE               NUMBER(9,2),
   COST_FEE             NUMBER(9,2),
   OLDPWD               VARCHAR2(32),
   NEWPWD               VARCHAR2(32),
   CUSTOMER_ID          NUMBER,
   OPER_CODE            VARCHAR2(10),
   OUT_ACCOUNT_ID       CHAR(16),
   IN_ACCOUNT_ID        CHAR(16),
   B_ACT_ID             VARCHAR2(40),
   SYS_ID               NUMBER,
   CONDITION_ID         NUMBER,
   IS_ONLINE            CHAR,
   TMARK                NUMBER,
   DEV_AUTH             CHAR(8),
   COMU_VER             NUMBER,
   RUN_REASON           NUMBER,
   CRC                  CHAR(5),
   ECODE                NUMBER,
   REVISESERIAL_NO      NUMBER                          not null,
   RESERVE_1            VARCHAR2(40),
   RESERVE_2            VARCHAR2(40),
   RESERVE_3            VARCHAR2(40),
   constraint SYS_C006917 primary key (SERIAL_NO2)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_MIF_TRAN                                            */
/*==============================================================*/
create table YKT_CUR.T_MIF_TRAN  (
   SERIAL_NO2           NUMBER                          not null,
   SERIAL_STATE2        NUMBER,
   OP_TIME              VARCHAR2(26),
   ALARMNO              NUMBER,
   CONCOUNT             NUMBER,
   SERIAL_NO            NUMBER,
   OTHER_SERI_NO        NUMBER,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER,
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   ENTERACT_DATE        VARCHAR2(10),
   ENTERACT_TIME        VARCHAR2(8),
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   TRANSFER_FEE         NUMBER(9,2),
   OUT_ACCOUNT_ID       CHAR(16),
   IN_ACCOUNT_ID        CHAR(16),
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   B_ACT_ID             VARCHAR2(40),
   SYS_ID               NUMBER,
   CONDITION_ID         NUMBER,
   OPERATOR_ID          VARCHAR2(10),
   ECODE                NUMBER,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006919 primary key (SERIAL_NO2)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_OPER_GROUP                                          */
/*==============================================================*/
create table YKT_CUR.T_OPER_GROUP  (
   GROUP_ID             VARCHAR2(10)                    not null,
   OPER_ID              VARCHAR2(10)                    not null,
   STATE                CHAR                            not null,
   constraint SYS_C0012336 primary key (OPER_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

comment on column YKT_CUR.T_OPER_GROUP.GROUP_ID is
'组号';

comment on column YKT_CUR.T_OPER_GROUP.OPER_ID is
'操作员号';

comment on column YKT_CUR.T_OPER_GROUP.STATE is
'标志, 1 正常 0 删除';

/*==============================================================*/
/* Table: T_PIF_AA                                              */
/*==============================================================*/
create table YKT_CUR.T_PIF_AA  (
   DEVICE_ID            NUMBER                          not null,
   DEVICE_NAME          VARCHAR2(60),
   DEV_STATE            NUMBER,
   DEVTYPE              VARCHAR2(4),
   SUBSYSTEM_ID         NUMBER,
   ASSET_NO             CHAR(11),
   ASSET_TYPE           NUMBER,
   AREA                 NUMBER,
   PHYTYPE              NUMBER,
   MANAGER              VARCHAR2(20),
   BEGIN_DATE           VARCHAR2(10),
   END_DATE             VARCHAR2(10),
   DEV999_ID            VARCHAR2(8),
   DEVPHY999_ID         VARCHAR2(8),
   DEV999_NO            NUMBER,
   DEVVERSION           VARCHAR2(8),
   CARDSTR              VARCHAR2(2),
   CARDTYPE             VARCHAR2(64),
   PORTCOUNT            NUMBER,
   FDEVPHY_ID           VARCHAR2(8),
   PORTNO               NUMBER,
   STATE_ID             NUMBER,
   JOINMODE             NUMBER,
   COMADD               VARCHAR2(16),
   PORT                 VARCHAR2(6),
   BAUDRATE             NUMBER,
   COMTYPE              NUMBER,
   BSHEETVDATE          VARCHAR2(12),
   BSHEETVER            VARCHAR2(12),
   LASTTRASERNO         NUMBER,
   LASTTRADATE          VARCHAR2(20),
   LASTSHUTSERNO        NUMBER,
   LASTSHUTDATE         VARCHAR2(20),
   SYSPWD               VARCHAR2(6),
   ADMPWD               VARCHAR2(6),
   PWDONOFF             NUMBER,
   PUSERNO              VARCHAR2(3),
   CARDSET              VARCHAR2(64),
   FUNONOFF             VARCHAR2(2),
   CARDUSENUM           NUMBER,
   MAXDEPOSIT           NUMBER,
   MINDEPOSIT           NUMBER,
   RATION               NUMBER,
   MAXTRADE             NUMBER,
   SHUTTIMES            VARCHAR2(64),
   CARD65PWD            VARCHAR2(64),
   AUTHPWD              VARCHAR2(64),
   FTFLAG               NUMBER,
   WEB_LEVEL            NUMBER,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006921 primary key (DEVICE_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_APP_FUNC_LIST                                   */
/*==============================================================*/
create table YKT_CUR.T_PIF_APP_FUNC_LIST  (
   OPER_STYLE           CHAR                            not null,
   APP_FUNC_NO          NUMBER                          not null,
   APP_NO               CHAR                            not null,
   APP_FUNC_NAME        VARCHAR2(32)                    not null,
   APP_FUNC_FULL_NAME   VARCHAR2(32)                    not null,
   constraint SYS_C006927 primary key (OPER_STYLE, APP_FUNC_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_AREA                                            */
/*==============================================================*/
create table YKT_CUR.T_PIF_AREA  (
   AREA_NO              NUMBER                          not null,
   FATHER_AREA_NO       NUMBER,
   AREA_NAME            VARCHAR2(50),
   AREALEVEL            NUMBER,
   ADDRESS              VARCHAR2(100),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006929 primary key (AREA_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_AUTHCARD                                        */
/*==============================================================*/
create table YKT_CUR.T_PIF_AUTHCARD  (
   PHYSICAL_NO          VARCHAR2(40)                    not null,
   STATE_ID             NUMBER                          not null,
   TYPE_ID              NUMBER,
   PASSWORD1            VARCHAR2(32),
   PASSWORD2            VARCHAR2(32),
   BEGIN_TIME           VARCHAR2(26),
   END_TIME             VARCHAR2(26),
   PHYTYPE              NUMBER,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006932 primary key (PHYSICAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_CARD                                            */
/*==============================================================*/
create table YKT_CUR.T_PIF_CARD  (
   CARD_ID              NUMBER                          not null,
   SHOWID               CHAR(10),
   IS_MAIN              CHAR,
   STATE_ID             CHAR(4),
   TYPE_ID              NUMBER,
   PASSWORD             VARCHAR2(32),
   COSUMER_ID           NUMBER,
   ACCOUNT_COUNT        NUMBER,
   IS_MANAGEFEE         CHAR,
   DEPOSIT_FEE          NUMBER(9,2),
   COST_FEE             NUMBER(9,2),
   BEGIN_TIME           VARCHAR2(26),
   END_TIME             VARCHAR2(26),
   PHYSICAL_NO          VARCHAR2(40),
   PHYTYPE              NUMBER,
   COMMENTS             VARCHAR2(100),
   BAD_STATUS           CHAR,
   constraint SYS_C006934 primary key (CARD_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_CARDLEVEL                                       */
/*==============================================================*/
create table YKT_CUR.T_PIF_CARDLEVEL  (
   LEVEL_ID             NUMBER                          not null,
   LEVEL_NAME           VARCHAR2(60),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006936 primary key (LEVEL_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_CARDLEVEL_GROUP                                 */
/*==============================================================*/
create table YKT_CUR.T_PIF_CARDLEVEL_GROUP  (
   LEVEL_ID             NUMBER                          not null,
   GROUP_ID             NUMBER                          not null,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006939 primary key (LEVEL_ID, GROUP_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_CARDLOSSINFO                                    */
/*==============================================================*/
create table YKT_CUR.T_PIF_CARDLOSSINFO  (
   OPERATE_DATE         VARCHAR2(10)                    not null,
   OPERATE_TIME         VARCHAR2(8)                     not null,
   CARD_ID              NUMBER                          not null,
   STATE_ID             NUMBER                          not null,
   BEGIN_DATE           VARCHAR2(10),
   END_DATE             VARCHAR2(10),
   constraint SYS_C006944 primary key (OPERATE_DATE, OPERATE_TIME, CARD_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_CARDPURSE                                       */
/*==============================================================*/
create table YKT_CUR.T_PIF_CARDPURSE  (
   PURSE_ID             NUMBER                          not null,
   PURSE_NAME           VARCHAR2(60),
   ACCESSRIGHT          NUMBER,
   DESCIBE              VARCHAR2(100),
   constraint SYS_C006946 primary key (PURSE_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_CARDSTRUT                                       */
/*==============================================================*/
create table YKT_CUR.T_PIF_CARDSTRUT  (
   ID                   NUMBER                          not null,
   PHYTYPE              NUMBER,
   SECTORNO             NUMBER,
   BLOCKNO              NUMBER,
   BEGIN_ADDR           NUMBER,
   END_ADDR             NUMBER,
   BYTENUM              NUMBER,
   DEFINE               VARCHAR2(100),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006948 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_CARD_AND_LEVELG                                 */
/*==============================================================*/
create table YKT_CUR.T_PIF_CARD_AND_LEVELG  (
   LEVELGROUP_ID        NUMBER                          not null,
   CARD_ID              NUMBER(9)                       not null,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006951 primary key (LEVELGROUP_ID, CARD_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_CARD_LEVELG                                     */
/*==============================================================*/
create table YKT_CUR.T_PIF_CARD_LEVELG  (
   LEVELGROUP_ID        NUMBER                          not null,
   LGNAME               VARCHAR2(60),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006953 primary key (LEVELGROUP_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_CARD_MANAGE_FEE                                 */
/*==============================================================*/
create table YKT_CUR.T_PIF_CARD_MANAGE_FEE  (
   ID                   NUMBER                          not null,
   TNAME                VARCHAR2(60),
   RATIO                NUMBER,
   ID_FEE               NUMBER,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006955 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_CUR_SYSPARA                                     */
/*==============================================================*/
create table YKT_CUR.T_PIF_CUR_SYSPARA  (
   ID                   NUMBER                          not null,
   VALUE                VARCHAR2(50)                    not null,
   PARA_NAME            VARCHAR2(100),
   USETIME              VARCHAR2(26),
   OPTIME               VARCHAR2(26),
   UNIT                 VARCHAR2(10),
   COMMENTS             VARCHAR2(100),
   IS_display			CHARACTER(1),
   constraint SYS_C006958 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_CUT_AND_LEVELG                                  */
/*==============================================================*/
create table YKT_CUR.T_PIF_CUT_AND_LEVELG  (
   LEVELGROUP_ID        NUMBER                          not null,
   CUT_ID               NUMBER(9)                       not null,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006961 primary key (LEVELGROUP_ID, CUT_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_CUT_RELATION                                    */
/*==============================================================*/
create table YKT_CUR.T_PIF_CUT_RELATION  (
   CUT_ID               NUMBER                          not null,
   OUTSIDE_NO           VARCHAR2(60),
   OUTSIDE_TYPE         NUMBER                          not null,
   "COMMENT"            VARCHAR2(150),
   constraint SYS_C0012779 primary key (CUT_ID, OUTSIDE_TYPE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

comment on column YKT_CUR.T_PIF_CUT_RELATION.CUT_ID is
'客户号';

comment on column YKT_CUR.T_PIF_CUT_RELATION.OUTSIDE_NO is
'外部帐号';

comment on column YKT_CUR.T_PIF_CUT_RELATION.OUTSIDE_TYPE is
'外部帐号类型';

comment on column YKT_CUR.T_PIF_CUT_RELATION."COMMENT" is
'备注';

/*==============================================================*/
/* Table: T_PIF_CUT_RELATION_TMP                                */
/*==============================================================*/
create table YKT_CUR.T_PIF_CUT_RELATION_TMP  (
   BATCH_NO             VARCHAR2(14)                    not null,
   SEQNO                NUMBER                          not null,
   CUT_ID               NUMBER,
   OUTSIDE_NO           VARCHAR2(60),
   OUTSIDE_TYPE         NUMBER,
   "COMMENT"            VARCHAR2(150),
   constraint SYS_C0012782 primary key (BATCH_NO, SEQNO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

comment on column YKT_CUR.T_PIF_CUT_RELATION_TMP.CUT_ID is
'客户号';

comment on column YKT_CUR.T_PIF_CUT_RELATION_TMP.OUTSIDE_NO is
'外部帐号';

comment on column YKT_CUR.T_PIF_CUT_RELATION_TMP.OUTSIDE_TYPE is
'外部帐号类型';

comment on column YKT_CUR.T_PIF_CUT_RELATION_TMP."COMMENT" is
'备注';

/*==============================================================*/
/* Table: T_PIF_DEVASSET                                        */
/*==============================================================*/
create table YKT_CUR.T_PIF_DEVASSET  (
   ASSET_NO             CHAR(11),
   ASSET_TYPE           NUMBER,
   DEVICE_ID            NUMBER                          not null,
   BEGIN_DATE           VARCHAR2(10),
   END_DATE             VARCHAR2(10)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_DEVCARDTYPE                                     */
/*==============================================================*/
create table YKT_CUR.T_PIF_DEVCARDTYPE  (
   DEVICE_ID            NUMBER                          not null,
   CUT_TYPE             NUMBER                          not null,
   constraint SYS_C006965 primary key (DEVICE_ID, CUT_TYPE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_DEVFEE                                          */
/*==============================================================*/
create table YKT_CUR.T_PIF_DEVFEE  (
   DEVICE_ID            NUMBER                          not null,
   TYPE_ID              NUMBER,
   FEE                  NUMBER
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_DEVICE                                          */
/*==============================================================*/
create table YKT_CUR.T_PIF_DEVICE  (
   DEVICE_ID            NUMBER                          not null,
   DEVICE_NAME          VARCHAR2(150),
   DEV999_ID            VARCHAR2(8),
   DEVPHY999_ID         VARCHAR2(8),
   DEV999_NO            NUMBER,
   DEVTYPE              VARCHAR2(4),
   DEVVERSION           VARCHAR2(8),
   CARDSTR              VARCHAR2(2),
   CARDTYPE             VARCHAR2(64),
   PORTCOUNT            NUMBER,
   FDEV_ID              NUMBER,
   PORTNO               NUMBER,
   STATE_ID             NUMBER,
   JOINMODE             NUMBER,
   COMADD               VARCHAR2(16),
   PORT                 VARCHAR2(6),
   BAUDRATE             NUMBER,
   COMTYPE              NUMBER,
   BSHEETVDATE          VARCHAR2(12),
   BSHEETVER            VARCHAR2(12),
   LASTTRASERNO         NUMBER,
   LASTTRADATE          VARCHAR2(20),
   LASTSHUTSERNO        NUMBER,
   LASTSHUTDATE         VARCHAR2(20),
   SYSPWD               VARCHAR2(6),
   ADMPWD               VARCHAR2(6),
   PWDONOFF             NUMBER,
   PUSERNO              VARCHAR2(3),
   CARDSET              VARCHAR2(64),
   FUNONOFF             VARCHAR2(2),
   CARDUSENUM           NUMBER,
   MAXDEPOSIT           NUMBER,
   MINDEPOSIT           NUMBER,
   RATION               NUMBER,
   MAXTRADE             NUMBER,
   SHUTTIMES            VARCHAR2(64),
   CARD65PWD            VARCHAR2(64),
   AUTHPWD              VARCHAR2(64),
   FTFLAG               NUMBER,
   FEETYPE              NUMBER,
   PHYTYPE              NUMBER,
   WEB_LEVEL            NUMBER,
   SUBSYSTEM_ID         NUMBER,
   AREA                 NUMBER,
   INIT_KEY             VARCHAR2(32),
   MANAGER              VARCHAR2(20),
   TEL                  VARCHAR2(20),
   ADDRESS              VARCHAR2(150),
   OPERATE_TIME         VARCHAR2(26),
   COMMENTS             VARCHAR2(150),
   IS_FEE_CODE          NUMBER                         default 0 not null,
   MODE_CODE            NUMBER,
   OPEN_TIME1           NUMBER,
   OPEN_TIME2           NUMBER,
   IS_ALLEYWAY          CHAR,
   IS_SAVE_DATA         CHAR,
   IS_LCD_DISPLAY       CHAR,
   DOOR_LST_VER         CHAR(12),
   DEV_USAGE            NUMBER,
   constraint SYS_C006969 primary key (DEVICE_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

comment on column YKT_CUR.T_PIF_DEVICE.DOOR_LST_VER is
'用于记录已经记录消息队列的名单版本';

/*==============================================================*/
/* Table: T_PIF_DEVICE_LOG                                      */
/*==============================================================*/
create table YKT_CUR.T_PIF_DEVICE_LOG  (
   LOG_ID               NUMBER(6)                       not null,
   SERIAL_TYPE          NUMBER,
   DEVICE_ID            NUMBER                          not null,
   SUBSYSTEM_ID         NUMBER,
   OPERATE_TIME         VARCHAR2(26),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006972 primary key (LOG_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_DEVTIME                                         */
/*==============================================================*/
create table YKT_CUR.T_PIF_DEVTIME  (
   DEVICE_ID            NUMBER                          not null,
   BEGIN_TIME           VARCHAR2(8)                     not null,
   END_TIME             VARCHAR2(8)                     not null,
   FEE                  NUMBER,
   MAXCOUNT             NUMBER,
   CARDTYPE             VARCHAR2(64),
   constraint SYS_C006976 primary key (DEVICE_ID, BEGIN_TIME, END_TIME)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_DICTIONARY                                      */
/*==============================================================*/
create table YKT_CUR.T_PIF_DICTIONARY  (
   DICT_NO              NUMBER                          not null,
   DICT_VALUE           VARCHAR2(30)                    not null,
   DICT_NAME            VARCHAR2(40),
   DICT_CAPTION         VARCHAR2(40),
   constraint SYS_C006979 primary key (DICT_NO, DICT_VALUE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_ERRCODE                                         */
/*==============================================================*/
create table YKT_CUR.T_PIF_ERRCODE  (
   ECODE                NUMBER                          not null,
   EMSG                 VARCHAR2(100),
   constraint SYS_C006981 primary key (ECODE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_FEETYPE                                         */
/*==============================================================*/
create table YKT_CUR.T_PIF_FEETYPE  (
   FEE_TYPE             NUMBER                          not null,
   FEE_NAME             VARCHAR2(120),
   COMMENTS             VARCHAR2(150),
   IS_OUTFEE            CHAR,
   constraint SYS_C006983 primary key (FEE_TYPE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_MEAL_TYPE                                       */
/*==============================================================*/
create table YKT_CUR.T_PIF_MEAL_TYPE  (
   MEAL_ID              NUMBER                          not null,
   MEAL_NAME            VARCHAR2(60)                    not null,
   BEGIN_TIME           CHAR(6)                         not null,
   END_TIME             CHAR(6)                         not null,
   "COMMENT"            VARCHAR2(200),
   constraint SYS_C0012344 primary key (MEAL_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_MODULE_AUTH                                     */
/*==============================================================*/
create table YKT_CUR.T_PIF_MODULE_AUTH  (
   MODULE_CODE          VARCHAR2(6)                     not null,
   MODULE_NAME          VARCHAR2(60)                    not null,
   MENU_SET             VARCHAR2(800),
   FUNC_SET             VARCHAR2(600),
   OPER_CODE            VARCHAR2(10),
   OPER_DATE            CHAR(8),
   OPER_TIME            CHAR(8),
   constraint SYS_C006988 primary key (MODULE_CODE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_OLD_SYSPARA                                     */
/*==============================================================*/
create table YKT_CUR.T_PIF_OLD_SYSPARA  (
   ID                   NUMBER                          not null,
   VALUE                VARCHAR2(50)                    not null,
   PARA_NAME            VARCHAR2(60),
   USETIME              VARCHAR2(26),
   OPTIME               VARCHAR2(26),
   UNIT                 VARCHAR2(10),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006991 primary key (ID, VALUE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_OPERATOR                                        */
/*==============================================================*/
create table YKT_CUR.T_PIF_OPERATOR  (
   OPER_CODE            VARCHAR2(10)                    not null,
   EMPLOYEE_ID          VARCHAR2(20),
   CARD_ID              NUMBER,
   OPER_NAME            VARCHAR2(32)                    not null,
   PHONE                VARCHAR2(40),
   MOBILE               VARCHAR2(40),
   ADDR                 VARCHAR2(80),
   ZIP                  CHAR(6),
   EMAIL                VARCHAR2(60),
   IF_STATION           CHAR,
   IF_ACCESS            CHAR,
   PWD                  VARCHAR2(32),
   STATUS               CHAR,
   MENU_SET             VARCHAR2(800),
   FUNC_SET             VARCHAR2(600),
   LOGIN_TIME           VARCHAR2(26),
   LOGOUT_TIME          VARCHAR2(26),
   MODULE_QTY           NUMBER,
   FAIL_NUMBER          NUMBER,
   LOGIN_IP             VARCHAR2(20),
   MAC_ADDR             VARCHAR2(20),
   LOGIN_FLAG           CHAR,
   LOGIN_APP            CHAR,
   REG_DATE             CHAR(8),
   REG_TIME             CHAR(8),
   ORDER_STATUS         CHAR,
   SEAT_NO              VARCHAR2(10),
   MAIN_FUNC            NUMBER,
   RECV_RSP_FLAG        CHAR,
   RECV_INFO_FLAG       CHAR,
   LOGIN_BATCH          NUMBER,
   SOURCE_NO            NUMBER,
   NODE_ID              NUMBER,
   SPECIFY_FUNC_FLAG    CHAR,
   FORCE_LOGOUT_REASON  VARCHAR2(70),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006994 primary key (OPER_CODE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_OPERATOR_LOG                                    */
/*==============================================================*/
create table YKT_CUR.T_PIF_OPERATOR_LOG  (
   LOG_ID               NUMBER(6)                       not null,
   SERIAL_STATE         NUMBER                          not null,
   SERIAL_TYPE          NUMBER,
   OPER_CODE            VARCHAR2(10)                    not null,
   CARD_ID              NUMBER,
   LOGIN_IP             VARCHAR2(20),
   MAC_ADDR             VARCHAR2(20),
   OPERATE_TIME         VARCHAR2(26),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C006998 primary key (LOG_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_OPER_AUTHCARD                                   */
/*==============================================================*/
create table YKT_CUR.T_PIF_OPER_AUTHCARD  (
   CARD_ID              NUMBER                          not null,
   OPER_CODE            VARCHAR2(10)                    not null,
   CARD_PHYID           VARCHAR2(8),
   PRIVILEGE            NUMBER,
   EXPIRED_DATE         VARCHAR2(8),
   STATUS               NUMBER,
   ISSUE_DATE           VARCHAR2(8),
   ISSUE_TIME           VARCHAR2(6),
   constraint SYS_C0012350 primary key (CARD_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

comment on column YKT_CUR.T_PIF_OPER_AUTHCARD.CARD_ID is
'交易卡号';

comment on column YKT_CUR.T_PIF_OPER_AUTHCARD.OPER_CODE is
'操作员号';

comment on column YKT_CUR.T_PIF_OPER_AUTHCARD.CARD_PHYID is
'物理ID';

comment on column YKT_CUR.T_PIF_OPER_AUTHCARD.PRIVILEGE is
'授权卡权限';

comment on column YKT_CUR.T_PIF_OPER_AUTHCARD.EXPIRED_DATE is
'有效期';

comment on column YKT_CUR.T_PIF_OPER_AUTHCARD.STATUS is
'状态';

comment on column YKT_CUR.T_PIF_OPER_AUTHCARD.ISSUE_DATE is
'发卡日期';

comment on column YKT_CUR.T_PIF_OPER_AUTHCARD.ISSUE_TIME is
'发卡时间';

/*==============================================================*/
/* Table: T_PIF_OPER_MAIN_FUNC                                  */
/*==============================================================*/
create table YKT_CUR.T_PIF_OPER_MAIN_FUNC  (
   MAIN_FUNC            NUMBER                          not null,
   OPER_CODE            VARCHAR2(10)                    not null,
   REG_TIME             CHAR(8)                         not null,
   REG_DATE             CHAR(8)                         not null,
   USE_FLAG             CHAR                            not null,
   NODE_ID              NUMBER                          not null,
   constraint SYS_C007005 primary key (MAIN_FUNC)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_OPER_SITE                                       */
/*==============================================================*/
create table YKT_CUR.T_PIF_OPER_SITE  (
   OPER_CODE            VARCHAR2(10)                    not null,
   SITE_NO              VARCHAR2(10)                    not null,
   constraint SYS_C007008 primary key (OPER_CODE, SITE_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_OPER_STATUS_REC                                 */
/*==============================================================*/
create table YKT_CUR.T_PIF_OPER_STATUS_REC  (
   STATUS_ID            NUMBER                          not null,
   constraint SYS_C007010 primary key (STATUS_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_OUTER_SYSTEM                                    */
/*==============================================================*/
create table YKT_CUR.T_PIF_OUTER_SYSTEM  (
   ID                   NUMBER                          not null,
   SNAME                VARCHAR2(20),
   PERSON_NAME          VARCHAR2(10),
   TEL                  NUMBER(20),
   ADDRESS              VARCHAR2(100),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007012 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_PHYDEVICE                                       */
/*==============================================================*/
create table YKT_CUR.T_PIF_PHYDEVICE  (
   PHYTYPE              NUMBER                          not null,
   DNAME                VARCHAR2(30),
   DTYPE                VARCHAR2(30),
   FACTORY              VARCHAR2(50),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007014 primary key (PHYTYPE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_SHOP_DUTY_FEE                                   */
/*==============================================================*/
create table YKT_CUR.T_PIF_SHOP_DUTY_FEE  (
   ID                   NUMBER                          not null,
   CNAME                VARCHAR2(60),
   RATIO                NUMBER,
   CYCLE                NUMBER,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007016 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_SHOP_MANAGE_FEE                                 */
/*==============================================================*/
create table YKT_CUR.T_PIF_SHOP_MANAGE_FEE  (
   ID                   NUMBER                          not null,
   CNAME                VARCHAR2(60),
   RATIO                NUMBER,
   CYCLE                NUMBER,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007018 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_SITE_INFO                                       */
/*==============================================================*/
create table YKT_CUR.T_PIF_SITE_INFO  (
   SITE_NO              VARCHAR2(10)                    not null,
   MACHINE_NAME         VARCHAR2(32)                    not null,
   IP_ADDR              VARCHAR2(20),
   MAC_ADDR             VARCHAR2(20),
   NOTES                VARCHAR2(100),
   constraint SYS_C007021 primary key (SITE_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_SPEFEE                                          */
/*==============================================================*/
create table YKT_CUR.T_PIF_SPEFEE  (
   DEPT_CODE            VARCHAR2(10)                    not null,
   CUT_TYPE             NUMBER                          not null,
   FEE_TYPE             NUMBER,
   constraint SYS_C007024 primary key (DEPT_CODE, CUT_TYPE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_SUBSYSTEM                                       */
/*==============================================================*/
create table YKT_CUR.T_PIF_SUBSYSTEM  (
   SYSTEM_ID            NUMBER                          not null,
   SYSTEM_NAME          VARCHAR2(60),
   SYSTEM_TYPE          NUMBER,
   STATE                NUMBER,
   AREA                 NUMBER,
   SERVER_ID            NUMBER,
   IP                   VARCHAR2(20),
   MAC_ADDR             VARCHAR2(20),
   INIT_KEY             VARCHAR2(32),
   DYNA_KEY             VARCHAR2(32),
   SYNCH_TIME           VARCHAR2(26),
   VERSION              NUMBER,
   MANAGER              VARCHAR2(20),
   TEL                  VARCHAR2(20),
   ADDRESS              VARCHAR2(100),
   COMMENTS             VARCHAR2(100),
   PORT                 NUMBER,
   FUNC_LIST            VARCHAR2(255),
   ENC_TYPE             NUMBER,
   constraint SYS_C007026 primary key (SYSTEM_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_SUBSYS_LOG                                      */
/*==============================================================*/
create table YKT_CUR.T_PIF_SUBSYS_LOG  (
   LOG_ID               NUMBER(6)                       not null,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER,
   SUBSYSTEM_ID         NUMBER,
   SERVER_ID            NUMBER,
   IP                   VARCHAR2(20),
   INIT_KEY             VARCHAR2(32),
   DYNA_KEY             VARCHAR2(32),
   OPERATE_TIME         VARCHAR2(26),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007028 primary key (LOG_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_SUB_UPDATE                                      */
/*==============================================================*/
create table YKT_CUR.T_PIF_SUB_UPDATE  (
   SU_ID                NUMBER(6)                       not null,
   SUB_ID               NUMBER                          not null,
   SUB_VOLUME           VARCHAR2(12)                    not null,
   SUB_FLAG             NUMBER                          not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_SYSKEY                                          */
/*==============================================================*/
create table YKT_CUR.T_PIF_SYSKEY  (
   KEY_CODE             VARCHAR2(60)                    not null,
   KEY_NAME             VARCHAR2(60)                    not null,
   KEY_VALUE            NUMBER(15)                      not null,
   MAX_VALUE            NUMBER(15)                      not null,
   KEY_TYPE             CHAR                           default '0' not null,
   constraint SYS_C007038 primary key (KEY_CODE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_SYSTIME                                         */
/*==============================================================*/
create table YKT_CUR.T_PIF_SYSTIME  (
   LOGIC_DATE           VARCHAR2(10),
   SHUTACT_DATE         VARCHAR2(10),
   NEXTTRADE_DATE       VARCHAR2(10),
   NATURE_DATE          VARCHAR2(10),
   SHUTACT_TIME         VARCHAR2(8)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

  -- Create table
create table YKT_CUR.T_PIF_THIRD_PART_SYSTEM
(
  SUB_SYSTEM_ID INTEGER not null,
  DES_IP        VARCHAR2(20),
  DES_BCC_FUNC  INTEGER,
  DES_PORT      INTEGER,
  DES_DRTP_NODE INTEGER,
  DES_FUNC      INTEGER,
  BU_NAME       VARCHAR2(60),
  DES_FUNC_TYPE INTEGER,
  DES_FUNC_NAME VARCHAR2(60)
)
tablespace TS_YKT_CUR
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
  
  
/*==============================================================*/
/* Table: T_PIF_TRADECODE                                       */
/*==============================================================*/
create table YKT_CUR.T_PIF_TRADECODE  (
   TRADECODE            NUMBER                          not null,
   TRADEMSG             VARCHAR2(100),
   SPLITCFG             VARCHAR2(255),
   FLAG                 CHAR,
   constraint SYS_C007040 primary key (TRADECODE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_PIF_WATCH_ADDRESS                                   */
/*==============================================================*/
create table YKT_CUR.T_PIF_WATCH_ADDRESS  (
   ID                   NUMBER                          not null,
   DEVICE_ID            NUMBER,
   ADDRESS_ID           NUMBER,
   constraint SYS_C007042 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_SERIAL                                              */
/*==============================================================*/
create table YKT_CUR.T_SERIAL  (
   SERIAL_NO            NUMBER                          not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_SUBSYSPARAMS                                        */
/*==============================================================*/
create table YKT_CUR.T_SUBSYSPARAMS  (
   SYSID                NUMBER                          not null,
   HEARTBEAT_INTVAL     NUMBER,
   HEARTBEAT_LIMIT      NUMBER,
   HEARTBEAT_FUNCNO     NUMBER,
   DRPT_NO              NUMBER,
   QRYTASK_INTVAL       NUMBER,
   EXEC_TIMEOUT         NUMBER,
   DEVTYPE              VARCHAR2(20),
   WORK_MODE            CHAR,
   COLLECT_INTVAL       NUMBER,
   DEVPROFILE_FUNCNO    NUMBER,
   TASK_LIMIT           NUMBER,
   RESP_FUNC            NUMBER,
   constraint SYS_C007045 primary key (SYSID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_SUBSYS_LOG                                          */
/*==============================================================*/
create table YKT_CUR.T_SUBSYS_LOG  (
   ID                   NUMBER(6)                       not null,
   CUST_ID              NUMBER,
   LOGIN_NAME           VARCHAR2(50),
   LOG_DATE             VARCHAR2(8),
   LOG_TIME             VARCHAR2(6),
   FLAG                 NUMBER,
   SUSSYS_ID            NUMBER,
   COMMENTS             VARCHAR2(255),
   constraint SYS_C007047 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_AA                                              */
/*==============================================================*/
create table YKT_CUR.T_TIF_AA  (
   BEGIN_DATE           VARCHAR2(10)                    not null,
   BEGIN_TIME           VARCHAR2(8),
   END_DATE             VARCHAR2(10),
   END_TIME             VARCHAR2(8),
   BAK_DATE             VARCHAR2(10),
   BAK_TIME             VARCHAR2(8),
   SERIAL_NO            NUMBER,
   OTHER_SERI_NO        NUMBER,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER,
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   ENTERACT_DATE        VARCHAR2(10),
   ENTERACT_TIME        VARCHAR2(8),
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   DEVPHY999_ID         VARCHAR2(8),
   SHOWID               CHAR(10),
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   TRADE_COUNT          NUMBER,
   TRADE_FEE            NUMBER(15,6),
   IN_BALANCE           NUMBER(9,2),
   OUT_BALANCE          NUMBER(9,2),
   DEPOSIT_FEE          NUMBER(9,2),
   IN_FEE               NUMBER(9,2),
   COST_FEE             NUMBER(9,2),
   BOARDFEE             NUMBER(9,2),
   OLDPWD               VARCHAR2(32),
   NEWPWD               VARCHAR2(32),
   CUSTOMER_ID          NUMBER,
   OPER_CODE            VARCHAR2(10),
   OUT_ACCOUNT_ID       CHAR(16),
   IN_ACCOUNT_ID        CHAR(16),
   B_ACT_ID             VARCHAR2(40),
   SYS_ID               NUMBER,
   CONDITION_ID         NUMBER,
   IS_ONLINE            CHAR,
   TMARK                NUMBER,
   DEV_AUTH             CHAR(8),
   COMU_VER             NUMBER,
   RUN_REASON           NUMBER,
   CRC                  CHAR(5),
   ECODE                NUMBER,
   REVISESERIAL_NO      NUMBER,
   RESERVE_1            VARCHAR2(40),
   RESERVE_2            VARCHAR2(40),
   RESERVE_3            VARCHAR2(40),
   constraint SYS_C007051 primary key (BEGIN_DATE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_ACT_DAYSUM                                      */
/*==============================================================*/
create table YKT_CUR.T_TIF_ACT_DAYSUM  (
   OPERATE_DATE         VARCHAR2(10)                    not null,
   OPERATE_TIME         VARCHAR2(8)                     not null,
   ACCOUNT_ID           CHAR(16)                        not null,
   ACT_TYPE             NUMBER,
   CUSTOMER_ID          NUMBER,
   CUT_NAME             VARCHAR2(60),
   CUT_TYPE             NUMBER,
   STUEMP_NO            VARCHAR2(20),
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   CARD_STATE           NUMBER,
   CARD_TYPE            NUMBER,
   SUBNO                VARCHAR2(20),
   PASSWORD             VARCHAR2(32),
   CURRENT_STATE        NUMBER,
   ISAUTOTRA            CHAR,
   LAST_BALA            NUMBER(20,6),
   LAST_FREEBALA        NUMBER(20,6),
   LAST_FROZEBALA       NUMBER(20,6),
   CUR_BALA             NUMBER(20,6),
   CUR_FREEBALA         NUMBER(20,6),
   CUR_FROZEBALA        NUMBER(20,6),
   OUT_BALA             NUMBER(20,6),
   IN_BALA              NUMBER(20,6),
   OUT_COUNT            NUMBER,
   IN_COUNT             NUMBER,
   CARD_BALANCE         NUMBER(15,6),
   CONSUME_COUNT        NUMBER,
   OPEN_DATE            VARCHAR2(26),
   TODAY_OUT_BALA       NUMBER(20,6),
   TODAY_IN_BALA        NUMBER(20,6),
   TODAY_OUT_COUNT      NUMBER,
   TODAY_IN_COUNT       NUMBER,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   COMMENTS             VARCHAR2(100),
   NOBALA_NUM           NUMBER,
   constraint SYS_C007055 primary key (OPERATE_DATE, OPERATE_TIME, ACCOUNT_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_APPEAR_AUTHEN_RECORD2                           */
/*==============================================================*/
create table YKT_CUR.T_TIF_APPEAR_AUTHEN_RECORD2  (
   AUTHEN_ID            NUMBER                          not null,
   BENGIN_TIME          TIMESTAMP,
   END_TIME             TIMESTAMP,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   constraint SYS_C007057 primary key (AUTHEN_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_AUTHEN_LOG                                      */
/*==============================================================*/
create table YKT_CUR.T_TIF_AUTHEN_LOG  (
   SERIAL_NO            NUMBER                          not null,
   OTHER_SERI_NO        NUMBER                          not null,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER                          not null,
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   CARD_ID              NUMBER,
   IS_VALID             CHAR,
   IS_ONLINE            CHAR,
   constraint SYS_C007061 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_AUTO_TRANS_CONDITION                            */
/*==============================================================*/
create table YKT_CUR.T_TIF_AUTO_TRANS_CONDITION  (
   ID                   NUMBER                          not null,
   ACCOUNT_ID           CHAR(16)                        not null,
   TYPE_ID              NUMBER,
   BALANCE_LOW_LIMIT    NUMBER(9,2),
   IN_FEE               NUMBER(9,2),
   OPERATOR_ID          VARCHAR2(10),
   CONDITION_1          VARCHAR2(20),
   CONDITION_2          VARCHAR2(20),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007064 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_AUTO_TRAN_LOSS                                  */
/*==============================================================*/
create table YKT_CUR.T_TIF_AUTO_TRAN_LOSS  (
   ID                   NUMBER                          not null,
   IS_REPAIR            CHAR,
   TRANSFER_NO          NUMBER                          not null,
   CONDITION_ID         NUMBER,
   TRANSFER_FEE         NUMBER,
   OUT_ACCOUNT_ID       NUMBER,
   IN_ACCOUNT_ID        NUMBER,
   OPERATE_TIME         TIMESTAMP,
   IS_UPDATE            CHAR,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007067 primary key (TRANSFER_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_BANKBILL                                        */
/*==============================================================*/
create table YKT_CUR.T_TIF_BANKBILL  (
   OPERATE_DATE         VARCHAR2(10),
   LOCALSN              NUMBER,
   BANKSN               CHAR(20),
   TRADECODE            CHAR(2),
   GDCACCOUNT           CHAR(16),
   BANKCARD             CHAR(20),
   TRANSMONEY           CHAR(9),
   CHECK_FLAG           NUMBER,
   CHECK_DATE           VARCHAR2(10),
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   RESERVE_4            VARCHAR2(20),
   RESERVE_5            VARCHAR2(20)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_BANK_COMP                                       */
/*==============================================================*/
create table YKT_CUR.T_TIF_BANK_COMP  (
   OP_DATE              CHAR(8)                         not null,
   TX_CODE              CHAR(6)                         not null,
   CARD_ID              NUMBER                          not null,
   BANKCARD             VARCHAR2(40)                    not null,
   LOCAL_SN             NUMBER                          not null,
   BANK_SN              VARCHAR2(20)                    not null,
   TRANS_MONEY          CHAR(9)                         not null,
   constraint SYS_C007075 primary key (OP_DATE, LOCAL_SN)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_BANK_RECORD                                     */
/*==============================================================*/
create table YKT_CUR.T_TIF_BANK_RECORD  (
   TRADECODE            VARCHAR2(2),
   GDCACCOUNT           VARCHAR2(10),
   BANKCARD             VARCHAR2(20),
   LOCALSN              VARCHAR2(8),
   BANKSN               VARCHAR2(20),
   TRANSMONEY           VARCHAR2(9),
   LINECHANGE           VARCHAR2(2)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_BLACK_SHEET                                     */
/*==============================================================*/
create table YKT_CUR.T_TIF_BLACK_SHEET  (
   CARD_ID              NUMBER                          not null,
   VOLUME               VARCHAR2(12)                    not null,
   VALIDDATE            VARCHAR2(12),
   STATE_ID             NUMBER,
   IS_AD                NUMBER,
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   END_DATE             VARCHAR2(10),
   END_TIME             VARCHAR2(8),
   constraint SYS_C007078 primary key (VOLUME)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_BTOS_TRAN_LOSS                                  */
/*==============================================================*/
create table YKT_CUR.T_TIF_BTOS_TRAN_LOSS  (
   ID                   NUMBER                          not null,
   IS_REPAIR            CHAR,
   TRANSFER_NO          NUMBER                          not null,
   TRANSFER_FEE         NUMBER,
   OUT_ACCOUNT_ID       NUMBER,
   IN_ACCOUNT_ID        NUMBER,
   OPERATOR_ID          NUMBER,
   OPERATE_TIME         TIMESTAMP,
   IS_UPDATE            CHAR,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007081 primary key (TRANSFER_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_CARDMESS                                        */
/*==============================================================*/
create table YKT_CUR.T_TIF_CARDMESS  (
   SERIAL_NO            NUMBER                          not null,
   OTHER_SERI_NO        NUMBER,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER,
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   ENTERACT_DATE        VARCHAR2(10),
   ENTERACT_TIME        VARCHAR2(8),
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   DEVPHY999_ID         VARCHAR2(8),
   OUT_BALANCE          NUMBER(9,2),
   IN_BALANCE           NUMBER(9,2),
   SHOWID               CHAR(10),
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   OLDPWD               VARCHAR2(32),
   NEWPWD               VARCHAR2(32),
   CUSTOMER_ID          NUMBER,
   SUBSIDY_FEE          NUMBER(9,2),
   TOPUP_FEE            NUMBER(9,2),
   DEPOSIT_FEE          NUMBER(9,2),
   IN_FEE               NUMBER(9,2),
   COST_FEE             NUMBER(9,2),
   OPER_CODE            VARCHAR2(10),
   B_ACT_ID             VARCHAR2(40),
   SYS_ID               NUMBER,
   TMARK                NUMBER,
   DEV_AUTH             CHAR(8),
   COMU_VER             NUMBER,
   RUN_REASON           NUMBER,
   CRC                  CHAR(5),
   ECODE                NUMBER                          not null,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007084 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_CFGSPLIT                                        */
/*==============================================================*/
create table YKT_CUR.T_TIF_CFGSPLIT  (
   TXTYPE               NUMBER                          not null,
   TXNAME               VARCHAR2(60),
   DBFLAG               NUMBER                          not null,
   CRFLAG               NUMBER                          not null,
   DBSUBNO              VARCHAR2(20),
   CRSUBNO              VARCHAR2(20),
   DBACTNO              VARCHAR2(30),
   CRACTNO              VARCHAR2(30),
   FUNDTYPE             NUMBER,
   SUMMARY              VARCHAR2(60),
   constraint SYS_C007088 primary key (TXTYPE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_CFGTXFEE                                        */
/*==============================================================*/
create table YKT_CUR.T_TIF_CFGTXFEE  (
   FEE_TYPE             NUMBER                          not null,
   TX_CODE              NUMBER                          not null,
   FEE_LIST             VARCHAR2(40),
   IDXDBACTNO_LIST      VARCHAR2(40),
   IDXCRACTNO_LIST      VARCHAR2(40),
   FORMULA_LIST         VARCHAR2(255),
   constraint SYS_C007091 primary key (TX_CODE, FEE_TYPE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_CHECKOUT_CUR                                    */
/*==============================================================*/
create table YKT_CUR.T_TIF_CHECKOUT_CUR  (
   SERIAL_NO            NUMBER                          not null,
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            VARCHAR2(8),
   CHECKOUT_NO          NUMBER,
   CHECKOUT_ENDTIME     VARCHAR2(12),
   START_NO             NUMBER,
   END_NO               NUMBER,
   UPTOSNUFF_COUNT      NUMBER,
   UPTOSNUFF_SUM        NUMBER,
   CANCEL_COUNT         NUMBER,
   CANCEL_SUM           NUMBER,
   ABNORMITY_COUNT      NUMBER,
   ABNORMITY_SUM        NUMBER,
   ELSE_COUNT           NUMBER,
   SIGN                 NUMBER,
   COMU_VER             NUMBER,
   RUN_REASON           NUMBER,
   CRC                  CHAR(5),
   constraint SYS_C007093 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_CHECKOUT_HIS                                    */
/*==============================================================*/
create table YKT_CUR.T_TIF_CHECKOUT_HIS  (
   SERIAL_NO            NUMBER                          not null,
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            VARCHAR2(8),
   CHECKOUT_NO          NUMBER,
   CHECKOUT_ENDTIME     VARCHAR2(12),
   START_NO             NUMBER,
   END_NO               NUMBER,
   UPTOSNUFF_COUNT      NUMBER,
   UPTOSNUFF_SUM        NUMBER,
   CANCEL_COUNT         NUMBER,
   CANCEL_SUM           NUMBER,
   ABNORMITY_COUNT      NUMBER,
   ABNORMITY_SUM        NUMBER,
   ELSE_COUNT           NUMBER,
   SIGN                 NUMBER,
   COMU_VER             NUMBER,
   RUN_REASON           NUMBER,
   CRC                  CHAR(5),
   constraint SYS_C007095 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_CHECK_BACK                                      */
/*==============================================================*/
create table YKT_CUR.T_TIF_CHECK_BACK  (
   ID                   NUMBER                          not null,
   BTOS_TRAN_COUNT      CHAR,
   BTOS_TRAN_FEE        CHAR,
   STOB_TRAN_COUNT      CHAR,
   STOB_TRAN_FEE        CHAR,
   QUANCUN_COUNT        CHAR,
   QUANCUN_FEE          CHAR,
   AUTO_TRAN_COUNT      CHAR,
   AUTO_TRAN_FEE        CHAR,
   OTHER_TRAN_COUNT     CHAR,
   OTHER_TRAN_FEE       CHAR,
   NOW_TIME             TIMESTAMP,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007097 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_CHECK_SUBSYSTEM                                 */
/*==============================================================*/
create table YKT_CUR.T_TIF_CHECK_SUBSYSTEM  (
   ID                   NUMBER                          not null,
   SUBSYSTEM_ID         NUMBER,
   IS_CONSISTENT1       CHAR,
   IS_CONSISTENT2       CHAR,
   FEE_CONSISTENT       CHAR,
   IS_CONSISTENT3       CHAR,
   IS_CONSISTENT4       CHAR,
   IS_CONSISTENT5       CHAR,
   IS_CONSISTENT6       CHAR,
   NOW_TIME             TIMESTAMP,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007099 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_COMPUTER_COSUME_RECORD                          */
/*==============================================================*/
create table YKT_CUR.T_TIF_COMPUTER_COSUME_RECORD  (
   CONSUME_ID           NUMBER                          not null,
   BEGIN_TIME           TIMESTAMP,
   END_TIME             TIMESTAMP,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   constraint SYS_C007101 primary key (CONSUME_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_COSUME_HIS                                      */
/*==============================================================*/
create table YKT_CUR.T_TIF_COSUME_HIS  (
   SERIAL_NO            NUMBER                          not null,
   OTHER_SERI_NO        NUMBER,
   SERIAL_TYPE          NUMBER,
   TMARK                NUMBER,
   SYSTEM_ID            NUMBER,
   DEVICE_ID            VARCHAR2(8),
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   OPERATE_DATE         VARCHAR2(6),
   OPERATE_TIME         VARCHAR2(6),
   CONSUME_COUNT        NUMBER,
   CONSUME_FEE          NUMBER,
   IN_BALANCE           NUMBER,
   OUT_BALANCE          NUMBER,
   DEV_AUTH             CHAR(8),
   COMU_VER             NUMBER,
   RUN_REASON           NUMBER,
   CRC                  CHAR(5),
   constraint SYS_C007103 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_COSUME_LOG                                      */
/*==============================================================*/
create table YKT_CUR.T_TIF_COSUME_LOG  (
   SERIAL_NO            NUMBER                          not null,
   OTHER_SERI_NO        NUMBER,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER                          not null,
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   ENTERACT_DATE        VARCHAR2(10),
   ENTERACT_TIME        VARCHAR2(8),
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   DEVPHY999_ID         VARCHAR2(8),
   CONSUME_COUNT        NUMBER,
   OUT_BALANCE          NUMBER(9,2),
   IN_BALANCE           NUMBER(9,2),
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   CONSUME_FEE          NUMBER(9,2),
   IS_ONLINE            CHAR,
   TMARK                NUMBER,
   DEV_AUTH             CHAR(8),
   COMU_VER             NUMBER,
   RUN_REASON           NUMBER,
   CRC                  CHAR(5),
   ECODE                NUMBER                          not null,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   constraint SYS_C007107 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_CUT_INFO_UPDATE                                 */
/*==============================================================*/
create table YKT_CUR.T_TIF_CUT_INFO_UPDATE  (
   ID                   NUMBER(6)                       not null,
   CARD_ID              NUMBER                          not null,
   VOLUME               VARCHAR2(12)                    not null,
   FLAG                 NUMBER                         default 0 not null,
   OPERATE_DATE         CHAR(8),
   OPERATE_TIME         CHAR(6),
   PHYSICAL_NO			CHAR(8),
   constraint SYS_C007112 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging,
   constraint SQL050830162420170 unique (VOLUME)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_DAY_BACK_SUM                                    */
/*==============================================================*/
create table YKT_CUR.T_TIF_DAY_BACK_SUM  (
   ID                   NUMBER                          not null,
   BTOS_TRAN_COUNT      NUMBER,
   BTOS_TRAN_FEE        NUMBER,
   STOB_TRAN_COUNT      NUMBER,
   STOB_TRAN_FEE        NUMBER,
   QUANCUN_COUNT        NUMBER,
   QUANCUN_FEE          NUMBER,
   AUTO_TRAN_COUNT      NUMBER,
   AUTO_TRAN_FEE        NUMBER,
   OTHER_TRAN_COUNT     NUMBER,
   OTHER_TRAN_FEE       NUMBER,
   NOW_TIME             TIMESTAMP,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007115 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_DAY_MONITOR_SUM                                 */
/*==============================================================*/
create table YKT_CUR.T_TIF_DAY_MONITOR_SUM  (
   ID                   NUMBER                          not null,
   DEVICE_ID            NUMBER,
   ERROR_ID             NUMBER,
   ERROR_COUNT          NUMBER,
   BEGIN_TIME           TIMESTAMP,
   END_TIME             TIMESTAMP,
   NOW_TIME             TIMESTAMP,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007117 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_DAY_OPERATE_SUM                                 */
/*==============================================================*/
create table YKT_CUR.T_TIF_DAY_OPERATE_SUM  (
   ID                   NUMBER                          not null,
   CUSTOMER_LOGIN       NUMBER,
   CUSTOMER_LOGOFF      NUMBER,
   CARD_LOGIN           NUMBER,
   CARD_LOGOFF          NUMBER,
   CARD_LOSS            NUMBER,
   CARD_RESUME          NUMBER,
   CARD_CHANGE          NUMBER,
   ACCOUNT_LOGIN        NUMBER,
   ACCOUNT_LOGOFF       NUMBER,
   ACCOUNT_UNFREEZE     NUMBER,
   ACCOUNT_FREEZE       NUMBER,
   CASH_DEPOSIT         NUMBER,
   SUMDATE              DATE,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   constraint SYS_C007119 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_DAY_SUBSYSTEM_SUM                               */
/*==============================================================*/
create table YKT_CUR.T_TIF_DAY_SUBSYSTEM_SUM  (
   ID                   NUMBER                          not null,
   SUBSYSTEM_ID         NUMBER,
   SUM_RECORD_COUNT     NUMBER,
   CONSUME_COUNT        NUMBER,
   SUM_FEE              NUMBER(15,2),
   AUTHEN_COUNT         NUMBER,
   OTHER_COUNT          NUMBER,
   DEPOSIT_COUNT        NUMBER,
   NOW_TIME             TIMESTAMP,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007121 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_DAY_SYSTEM_SUM                                  */
/*==============================================================*/
create table YKT_CUR.T_TIF_DAY_SYSTEM_SUM  (
   ID                   NUMBER                          not null,
   ACCOUNT_COUNT        NUMBER,
   NEW_ACCOUNT_COUNT    NUMBER,
   LOGOFF_ACCOUNT_COUNT NUMBER,
   SUM_CUSTOMER         NUMBER,
   NEW_CUSTOMER_COUNT   NUMBER,
   LOGOFF_CUSTOMER_COUNT NUMBER,
   SUM_CARD             NUMBER,
   NEW_CARD__COUNT      NUMBER,
   LOGOFF_CARD_COUNT    NUMBER,
   SUM_BALANCE          NUMBER(15,2),
   SUM_IN_FEE           NUMBER(15,2),
   SUM_OUT_FEE          NUMBER(15,2),
   SUM_TAKING_FEE       NUMBER(15,2),
   SUM_DEPOSITCASH_FEE  NUMBER(15,2),
   SUMFEE_FROM_BACK     NUMBER(15,2),
   SUMFEE_TO_BACK       NUMBER(15,2),
   SUM_MANAGE_FEE       NUMBER(15,2),
   SUM_DUTY_FEE         NUMBER(15,2),
   QUANCUN_COUNT        NUMBER,
   AUTO_TRAN_COUNT      NUMBER,
   INSIDE_TRAN_COUNT    NUMBER,
   BTOS_TRAN_COUNT      NUMBER,
   STOB_TRAN_COUNT      NUMBER,
   SUBSIDY_COUNT        NUMBER,
   SELFH_DEPOSIT_COUNT  NUMBER,
   CASH_DEPOSIT_COUNT   NUMBER,
   COSUME_LOG_COUNT     NUMBER,
   AUTHEN_LOG_COUNT     NUMBER,
   OTHER_LOG_COUNT      NUMBER,
   SUMDATE              DATE,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007123 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_DEPOSIT_LOG                                     */
/*==============================================================*/
create table YKT_CUR.T_TIF_DEPOSIT_LOG  (
   SERIAL_NO            NUMBER                          not null,
   OTHER_SERI_NO        NUMBER                          not null,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER                          not null,
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   ENTERACT_DATE        VARCHAR2(10),
   ENTERACT_TIME        VARCHAR2(8),
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   CARD_BALANCE         NUMBER(9,2)                     not null,
   CONSUME_COUNT        NUMBER,
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   DEPOSIT_FEE          NUMBER(9,2),
   OPERATOR_ID          VARCHAR2(10),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007128 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_DEVICE_COLLECT_LOG                              */
/*==============================================================*/
create table YKT_CUR.T_TIF_DEVICE_COLLECT_LOG  (
   ID                   NUMBER                          not null,
   DEVICE_ID            NUMBER                          not null,
   CUR_COLLECT_BALA     NUMBER,
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   LAST_COLLECT_BALA    NUMBER,
   OPER_CODE            VARCHAR2(10),
   SERIAL_NUM           NUMBER,
   DEAL_FLAG            NUMBER,
   SERIAL_TYPE          NUMBER,
   constraint SYS_C0012421 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

comment on column YKT_CUR.T_TIF_DEVICE_COLLECT_LOG.DEVICE_ID is
'设备ID号';

comment on column YKT_CUR.T_TIF_DEVICE_COLLECT_LOG.CUR_COLLECT_BALA is
'本次采集金额';

comment on column YKT_CUR.T_TIF_DEVICE_COLLECT_LOG.COLLECT_DATE is
'采集日期';

comment on column YKT_CUR.T_TIF_DEVICE_COLLECT_LOG.COLLECT_TIME is
'采集时间';

comment on column YKT_CUR.T_TIF_DEVICE_COLLECT_LOG.LAST_COLLECT_BALA is
'上次采集金额';

comment on column YKT_CUR.T_TIF_DEVICE_COLLECT_LOG.OPER_CODE is
'操作员代码';

comment on column YKT_CUR.T_TIF_DEVICE_COLLECT_LOG.SERIAL_NUM is
'序号';

comment on column YKT_CUR.T_TIF_DEVICE_COLLECT_LOG.DEAL_FLAG is
'处理标志';

comment on column YKT_CUR.T_TIF_DEVICE_COLLECT_LOG.SERIAL_TYPE is
'交易代码';

/*==============================================================*/
/* Table: T_TIF_DIFF_TRANSFER                                   */
/*==============================================================*/
create table YKT_CUR.T_TIF_DIFF_TRANSFER  (
   OP_DATE              CHAR(8)                         not null,
   OP_TIME              CHAR(6),
   LOCAL_SN             NUMBER                          not null,
   BANK_SN              VARCHAR2(40),
   LOCAL_AMT            NUMBER(15,2),
   BANK_AMT             NUMBER(15,2),
   CARD_ID              NUMBER                          not null,
   BANKCARD             VARCHAR2(40),
   DIFF_AMT             NUMBER(15,2),
   STATUS               NUMBER
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_DOOR_AUTHEN_RECORD                              */
/*==============================================================*/
create table YKT_CUR.T_TIF_DOOR_AUTHEN_RECORD  (
   AUTHEN_ID            NUMBER                          not null,
   BENGIN_TIME          TIMESTAMP,
   END_TIME             TIMESTAMP,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   constraint SYS_C007133 primary key (AUTHEN_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_ELECT_COSUME_RECORD                             */
/*==============================================================*/
create table YKT_CUR.T_TIF_ELECT_COSUME_RECORD  (
   CONSUME_ID           NUMBER                          not null,
   BEGIN_TIME           TIMESTAMP,
   END_TIME             TIMESTAMP,
   ELECT_QUANTITY       NUMBER,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   constraint SYS_C007135 primary key (CONSUME_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_HOSPITALLOG                                     */
/*==============================================================*/
create table YKT_CUR.T_TIF_HOSPITALLOG  (
   CONSUME_ID           NUMBER                          not null,
   FEE_TYPE_ID          NUMBER,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   constraint SYS_C007137 primary key (CONSUME_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_HOSPITAL_CONSUME_TYPE                           */
/*==============================================================*/
create table YKT_CUR.T_TIF_HOSPITAL_CONSUME_TYPE  (
   TYPE_ID              NUMBER                          not null,
   CNAME                VARCHAR2(20),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007139 primary key (TYPE_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_LIBRARY_AUTHEN_RECORD                           */
/*==============================================================*/
create table YKT_CUR.T_TIF_LIBRARY_AUTHEN_RECORD  (
   AUTHEN_ID            NUMBER                          not null,
   BENGIN_TIME          TIMESTAMP,
   END_TIME             TIMESTAMP,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   constraint SYS_C007141 primary key (AUTHEN_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_LIBRARY_CONSUME_TYPE                            */
/*==============================================================*/
create table YKT_CUR.T_TIF_LIBRARY_CONSUME_TYPE  (
   TYPE_ID              NUMBER                          not null,
   CNAME                VARCHAR2(20),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007143 primary key (TYPE_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_LIBRARY_COSUME_RECORD                           */
/*==============================================================*/
create table YKT_CUR.T_TIF_LIBRARY_COSUME_RECORD  (
   CONSUME_ID           NUMBER                          not null,
   FEE_TYPE_ID          NUMBER,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   constraint SYS_C007145 primary key (CONSUME_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_LOSEAUTHEN_SUM                                  */
/*==============================================================*/
create table YKT_CUR.T_TIF_LOSEAUTHEN_SUM  (
   ID                   NUMBER                          not null,
   IS_REPAIR            CHAR,
   SERIAL_NO            NUMBER                          not null,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER,
   OPERATE_TIME         TIMESTAMP,
   COLLECT_TIME         TIMESTAMP,
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   CARD_ID              NUMBER,
   IS_VALID             CHAR,
   IS_ONLINE            CHAR,
   constraint SYS_C007148 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_LOSECONSUME_SUM                                 */
/*==============================================================*/
create table YKT_CUR.T_TIF_LOSECONSUME_SUM  (
   ID                   NUMBER                          not null,
   IS_REPAIR            CHAR,
   SERIAL_NO            NUMBER                          not null,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER,
   OPERATE_TIME         TIMESTAMP,
   COLLECT_TIME         TIMESTAMP,
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   CARD_BALANCE         NUMBER(9,2)                     not null,
   CONSUME_COUNT        NUMBER,
   CARD_ID              NUMBER,
   ACCOUNT_ID           NUMBER(11),
   CONSUME_FEE          NUMBER(9,2),
   IS_ONLINE            CHAR,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   constraint SYS_C007152 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_LOSEDEPOIST_SUM                                 */
/*==============================================================*/
create table YKT_CUR.T_TIF_LOSEDEPOIST_SUM  (
   ID                   NUMBER                          not null,
   IS_REPAIR            CHAR,
   SERIAL_NO            NUMBER                          not null,
   SERIAL_TYPE          NUMBER,
   MAINDEVICE_ID        NUMBER,
   SERIAL_STATE         NUMBER,
   COLLECT_TIME         TIMESTAMP,
   OPERATE_TIME         TIMESTAMP,
   DEVICE_ID            NUMBER,
   CARD_BALANCE         NUMBER(9,2)                     not null,
   CONSUME_COUNT        NUMBER,
   DEPOSIT_FEE          NUMBER(9,2),
   IN_ACCOUNT_ID        NUMBER(11),
   OUT_ACCOUNT_ID       NUMBER(11),
   OPERATOR_ID          NUMBER,
   constraint SYS_C007156 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_LOSEWATCH_SUM                                   */
/*==============================================================*/
create table YKT_CUR.T_TIF_LOSEWATCH_SUM  (
   ID                   NUMBER                          not null,
   IS_REPAIR            CHAR,
   SERIAL_NO            NUMBER                          not null,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER,
   OPERATE_TIME         TIMESTAMP,
   COLLECT_TIME         TIMESTAMP,
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   CARD_ID              NUMBER,
   BENGIN_TIME          TIMESTAMP,
   END_TIME             TIMESTAMP,
   IS_FULL              CHAR,
   constraint SYS_C007159 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_MESLIST                                         */
/*==============================================================*/
create table YKT_CUR.T_TIF_MESLIST  (
   MESID                NUMBER(6)                       not null,
   FUNID                NUMBER                          not null,
   STATEID              NUMBER                          not null,
   SENDCOUNT            NUMBER,
   "LEVEL"              NUMBER,
   DEVICE_ID            NUMBER,
   DEVID                NUMBER,
   INDT                 VARCHAR2(26),
   STARTDT              VARCHAR2(26),
   ENDDT                VARCHAR2(26),
   ECODE                NUMBER,
   EMSG                 VARCHAR2(100),
   INCONTENT            VARCHAR2(800),
   OUTCONTENT           VARCHAR2(800),
   PFUNID               NUMBER,
   CARD_NO              NUMBER,
   MAX_SEND_CNT         NUMBER,
   DEL_FLAG             CHAR,
   RECVCOUNT            NUMBER,
   SEQ                  NUMBER                         default 0,
   MSGTYPE              NUMBER,
   constraint SYS_C007163 primary key (MESID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

comment on column YKT_CUR.T_TIF_MESLIST.RECVCOUNT is
'接收次数';

comment on column YKT_CUR.T_TIF_MESLIST.SEQ is
'序号';

comment on column YKT_CUR.T_TIF_MESLIST.MSGTYPE is
'消息类型';



/*==============================================================*/
/* Table: T_TIF_MONTH_BACK_SUM                                  */
/*==============================================================*/
create table YKT_CUR.T_TIF_MONTH_BACK_SUM  (
   ID                   NUMBER                          not null,
   BTOS_TRAN_COUNT      NUMBER,
   BTOS_TRAN_FEE        NUMBER,
   STOB_TRAN_COUNT      NUMBER,
   STOB_TRAN_FEE        NUMBER,
   QUANCUN_COUNT        NUMBER,
   QUANCUN_FEE          NUMBER,
   AUTO_TRAN_COUNT      NUMBER,
   AUTO_TRAN_FEE        NUMBER,
   OTHER_TRAN_COUNT     NUMBER,
   OTHER_TRAN_FEE       NUMBER,
   NOW_TIME             TIMESTAMP,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007165 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_MONTH_MONITOR_SUM                               */
/*==============================================================*/
create table YKT_CUR.T_TIF_MONTH_MONITOR_SUM  (
   ID                   NUMBER                          not null,
   DEVICE_ID            NUMBER,
   ERROR_ID             NUMBER,
   ERROR_COUNT          NUMBER,
   BEGIN_TIME           TIMESTAMP,
   END_TIME             TIMESTAMP,
   NOW_TIME             TIMESTAMP,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007167 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_MONTH_OPERATE_SUM                               */
/*==============================================================*/
create table YKT_CUR.T_TIF_MONTH_OPERATE_SUM  (
   ID                   NUMBER                          not null,
   CUSTOMER_LOGIN       NUMBER,
   CUSTOMER_LOGOFF      NUMBER,
   CARD_LOGIN           NUMBER,
   CARD_LOGOFF          NUMBER,
   CARD_LOSS            NUMBER,
   CARD_RESUME          NUMBER,
   CARD_CHANGE          NUMBER,
   ACCOUNT_LOGIN        NUMBER,
   ACCOUNT_LOGOFF       NUMBER,
   ACCOUNT_UNFREEZE     NUMBER,
   ACCOUNT_FREEZE       NUMBER,
   CASH_DEPOSIT         NUMBER,
   SUMDATE              DATE,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   constraint SYS_C007169 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_MONTH_SUBSYSTEM_SUM                             */
/*==============================================================*/
create table YKT_CUR.T_TIF_MONTH_SUBSYSTEM_SUM  (
   ID                   NUMBER                          not null,
   SUBSYSTEM_ID         NUMBER,
   SUM_RECORD_COUNT     NUMBER,
   CONSUME_COUNT        NUMBER,
   SUM_FEE              NUMBER(15,2),
   AUTHEN_COUNT         NUMBER,
   OTHER_COUNT          NUMBER,
   DEPOSIT_COUNT        NUMBER,
   NOW_TIME             TIMESTAMP,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007171 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_MONTH_SYSTEM_SUM                                */
/*==============================================================*/
create table YKT_CUR.T_TIF_MONTH_SYSTEM_SUM  (
   ID                   NUMBER                          not null,
   ACCOUNT_COUNT        NUMBER,
   NEW_ACCOUNT_COUNT    NUMBER,
   LOGOFF_ACCOUNT_COUNT NUMBER,
   SUM_CUSTOMER         NUMBER,
   NEW_CUSTOMER_COUNT   NUMBER,
   LOGOFF_CUSTOMER_COUNT NUMBER,
   SUM_CARD             NUMBER,
   NEW_CARD__COUNT      NUMBER,
   LOGOFF_CARD_COUNT    NUMBER,
   SUM_BALANCE          NUMBER(15,2),
   SUM_IN_FEE           NUMBER(15,2),
   SUM_OUT_FEE          NUMBER(15,2),
   SUM_TAKING_FEE       NUMBER(15,2),
   SUM_DEPOSITCASH_FEE  NUMBER(15,2),
   SUMFEE_FROM_BACK     NUMBER(15,2),
   SUMFEE_TO_BACK       NUMBER(15,2),
   SUM_MANAGE_FEE       NUMBER(15,2),
   SUM_DUTY_FEE         NUMBER(15,2),
   QUANCUN_COUNT        NUMBER,
   AUTO_TRAN_COUNT      NUMBER,
   INSIDE_TRAN_COUNT    NUMBER,
   BTOS_TRAN_COUNT      NUMBER,
   STOB_TRAN_COUNT      NUMBER,
   SUBSIDY_COUNT        NUMBER,
   SELFH_DEPOSIT_COUNT  NUMBER,
   CASH_DEPOSIT_COUNT   NUMBER,
   COSUME_LOG_COUNT     NUMBER,
   AUTHEN_LOG_COUNT     NUMBER,
   OTHER_LOG_COUNT      NUMBER,
   SUMDATE              DATE,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007173 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_OUTSYS_LOG                                      */
/*==============================================================*/
create table YKT_CUR.T_TIF_OUTSYS_LOG  (
   SERIAL_NO            NUMBER                          not null,
   OTHER_SERI_NO        NUMBER                          not null,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER,
   OPERATE_DATE         DATE,
   OPERATE_TIME         DATE,
   COLLECT_DATE         DATE,
   COLLECT_TIME         DATE,
   ENTERACT_DATE        DATE,
   ENTERACT_TIME        DATE,
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   OPERATE_NO           NUMBER,
   EMPLOYEE_ID          NUMBER,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007176 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_RCVDTL                                          */
/*==============================================================*/
create table YKT_CUR.T_TIF_RCVDTL  (
   TX_DATE              CHAR(8)                         not null,
   TX_TIME              CHAR(6)                         not null,
   CARD_NO              NUMBER                          not null,
   DEVICE_ID            CHAR(8)                         not null,
   SERIAL_NO            NUMBER                          not null,
   PURSE_NO             NUMBER,
   IN_BALA              NUMBER,
   OUT_BALA             NUMBER,
   AMOUNT               NUMBER,
   TOTAL_CNT            NUMBER,
   TX_CODE              NUMBER                          not null,
   TX_MARK              NUMBER,
   COMU_VER             NUMBER,
   RUN_REASON           NUMBER,
   CRC                  CHAR(4),
   INPOWER_NO           CHAR(8),
   SYS_ID               NUMBER,
   OPER_NO              CHAR(8),
   STATUS               CHAR,
   COL_TIMESTAMP        CHAR(20),
   DEAL_DATE            CHAR(8),
   DEAL_TIME            CHAR(6),
   FEE_CODE             NUMBER,
   ERR_CODE             NUMBER,
   MANAGE_FEE           NUMBER                         default 0 not null,
   constraint SYS_C007183 primary key (SERIAL_NO, TX_DATE, DEVICE_ID, CARD_NO, TX_CODE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_REPORT_ACTIVE                                   */
/*==============================================================*/
create table YKT_CUR.T_TIF_REPORT_ACTIVE  (
   BALANCE_DATE         VARCHAR2(10)                    not null,
   SERI_TYPE            NUMBER                          not null,
   TRADE_NUMBER         NUMBER,
   TRADE_AMT            NUMBER(15,6),
   ACC_ADDNUM           NUMBER,
   ACC_AMT              NUMBER(15,6),
   SHOP_ADDNUM          NUMBER,
   SHOP_AMT             NUMBER(15,6),
   DEP_AMT              NUMBER(15,6),
   EARN_AMT             NUMBER(15,6),
   MNG_AMT              NUMBER(15,6),
   COST_AMT             NUMBER(15,6),
   ENSURE_AMT           NUMBER(15,6),
   BANK_AMT             NUMBER(15,6),
   CASH_AMT             NUMBER(15,6),
   OPERATOR_CODE        VARCHAR2(10),
   DATA_SIGN            VARCHAR2(8),
   RESERVE1             VARCHAR2(20),
   RESERVE2             VARCHAR2(20),
   CHECK_ADD_AMT        NUMBER(15,6),
   OUTLAY_ADD_AMT       NUMBER(15,6),
   DOWN_SUBSIDY_AMT     NUMBER(15,6),
   UP_SUBSIDY_AMT       NUMBER(15,6),
   constraint SYS_C007186 primary key (BALANCE_DATE, SERI_TYPE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_REPORT_BANK_TRANSFER                            */
/*==============================================================*/
create table YKT_CUR.T_TIF_REPORT_BANK_TRANSFER  (
   RMB_BATCH_NO1        VARCHAR2(14),
   RMB_SEQ_NO           VARCHAR2(6),
   RMB_ACC_STATUS1      CHAR,
   RMB_TRAN_KIND        CHAR,
   RMB_CUST_NAME        VARCHAR2(50),
   RMB_ACC_NO           VARCHAR2(20),
   RMB_CB_CR            CHAR,
   RMB_TRAN_AMT         NUMBER(15,2),
   RMB_CUR_CODE         VARCHAR2(3),
   RMB_HOST_NO          VARCHAR2(8),
   RMB_RET_CODE         VARCHAR2(4),
   RMB_ACC_DATE         DATE,
   RMB_TRAN_NO          VARCHAR2(9),
   RMB_OPEN_BRANCH      VARCHAR2(7),
   RMB_VCHO_KIND        VARCHAR2(2),
   RMB_VCHO_BAT_NO      VARCHAR2(2),
   RMB_VCHO_NO          VARCHAR2(9),
   RMB_MEMO             VARCHAR2(22),
   RMB_TRAN_INFO        VARCHAR2(200)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_REPORT_CARDDB_NOBALANCE                         */
/*==============================================================*/
create table YKT_CUR.T_TIF_REPORT_CARDDB_NOBALANCE  (
   BALANCE_DATE         VARCHAR2(10),
   ACCOUNT_ID           CHAR(16),
   CARD_ID              NUMBER,
   CUT_NAME             VARCHAR2(60),
   STUEMP_NO            VARCHAR2(20),
   TYPE_ID              NUMBER,
   DEPT_NAME            VARCHAR2(100),
   DB_BALA              NUMBER(15,2),
   CARD_BALA            NUMBER(15,2),
   NOBALA_NUM           NUMBER,
   DIFF_BALA            NUMBER(15,2),
   DATA_SIGN            VARCHAR2(8),
   RESERVE1             VARCHAR2(20),
   RESERVE2             VARCHAR2(20)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_REPORT_DEPTTRADE                                */
/*==============================================================*/
create table YKT_CUR.T_TIF_REPORT_DEPTTRADE  (
   BALANCE_DATE         CHAR(8)                         not null,
   DEPT_CODE            CHAR(10)                        not null,
   DEPT_NAME            VARCHAR2(100),
   SERI_TYPE            NUMBER                          not null,
   FEE_TYPE             NUMBER                          not null,
   OUTORIN              NUMBER                          not null,
   OPCOUNT              NUMBER,
   OPFEE                NUMBER,
   RESERVE_1            VARCHAR2(50),
   RESERVE_2            VARCHAR2(50),
   constraint SYS_C007192 primary key (BALANCE_DATE, DEPT_CODE, SERI_TYPE, FEE_TYPE, OUTORIN)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_REPORT_DEVICE_MEAL                              */
/*==============================================================*/
create table YKT_CUR.T_TIF_REPORT_DEVICE_MEAL  (
   BALANCE_DATE         CHAR(8)                         not null,
   SHOP_ID              NUMBER,
   DEVICE_ID            NUMBER                          not null,
   MEAL_ID              NUMBER                          not null,
   TRADE_COUNT          NUMBER,
   TRADE_FEE            NUMBER,
   MNG_FEE              NUMBER,
   TOTAL_FEE            NUMBER,
   DATA_SIGN            VARCHAR2(8),
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_REPORT_ERRACC                                   */
/*==============================================================*/
create table YKT_CUR.T_TIF_REPORT_ERRACC  (
   BALANCE_DATE         VARCHAR2(10)                    not null,
   ACCOUNT_ID           CHAR(16)                        not null,
   CUT_NAME             VARCHAR2(60),
   STUEMP_NO            VARCHAR2(20),
   TYPE_ID              NUMBER,
   DEPT_NAME            VARCHAR2(100),
   LAST_BALA            NUMBER(15,2),
   CUR_BALA             NUMBER(15,2),
   TRADE_AMT            NUMBER(15,2),
   DIFF_BALA            NUMBER(15,2),
   DATA_SIGN            VARCHAR2(8),
   RESERVE1             VARCHAR2(20),
   RESERVE2             VARCHAR2(20),
   constraint SYS_C007195 primary key (BALANCE_DATE, ACCOUNT_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_REPORT_OPER                                     */
/*==============================================================*/
create table YKT_CUR.T_TIF_REPORT_OPER  (
   BALANCE_DATE         VARCHAR2(10)                    not null,
   OPERATOR_CODE        VARCHAR2(10)                    not null,
   SERI_TYPE            NUMBER                          not null,
   MAINDEVICE_ID        NUMBER                          not null,
   DEVICE_ID            NUMBER                          not null,
   HAPPEN_NUM           NUMBER,
   HAPPEN_AMT           NUMBER(15,6),
   MNG_AMT              NUMBER(15,6),
   ENSURE_AMT           NUMBER(15,6),
   COST_AMT             NUMBER(15,6),
   DEP_AMT              NUMBER(15,6),
   EARN_AMT             NUMBER(15,6),
   BANK_AMT             NUMBER(15,6),
   CASH_AMT             NUMBER(15,6),
   DATA_SIGN            VARCHAR2(8),
   RESERVE1             VARCHAR2(20),
   RESERVE2             VARCHAR2(20),
   ACC_ADD_AMT          NUMBER(15,6),
   SHP_ADD_AMT          NUMBER(15,6),
   CHECK_AMT            NUMBER(15,6),
   OUTLAY_AMT           NUMBER(15,6),
   DOWN_SUBSIDY_AMT     NUMBER(15,6),
   UP_SUBSIDY_AMT       NUMBER(15,6),
   constraint SYS_C007201 primary key (BALANCE_DATE, OPERATOR_CODE, SERI_TYPE, MAINDEVICE_ID, DEVICE_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_REPORT_OPER_CARD_AMT                            */
/*==============================================================*/
create table YKT_CUR.T_TIF_REPORT_OPER_CARD_AMT  (
   BALANCE_DATE         VARCHAR2(10)                    not null,
   OPERATOR_CODE        VARCHAR2(10)                    not null,
   SERI_TYPE            NUMBER                          not null,
   MAINDEVICE_ID        NUMBER                          not null,
   DEVICE_ID            NUMBER                          not null,
   BADCARD_STATUS       NUMBER                          not null,
   HAPPEN_NUM           NUMBER,
   HAPPEN_AMT           NUMBER(15,6),
   MNG_AMT              NUMBER(15,6),
   ENSURE_AMT           NUMBER(15,6),
   COST_AMT             NUMBER(15,6),
   DEP_AMT              NUMBER(15,6),
   EARN_AMT             NUMBER(15,6),
   BANK_AMT             NUMBER(15,6),
   CASH_AMT             NUMBER(15,6),
   DATA_SIGN            VARCHAR2(8),
   RESERVE1             VARCHAR2(20),
   RESERVE2             VARCHAR2(20),
   ACC_ADD_AMT          NUMBER(15,6),
   SHP_ADD_AMT          NUMBER(15,6),
   CHECK_AMT            NUMBER(15,6),
   OUTLAY_AMT           NUMBER(15,6),
   DOWN_SUBSIDY_AMT     NUMBER(15,6),
   UP_SUBSIDY_AMT       NUMBER(15,6),
   constraint SYS_C007208 primary key (BALANCE_DATE, OPERATOR_CODE, SERI_TYPE, MAINDEVICE_ID, DEVICE_ID, BADCARD_STATUS)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_REPORT_RICH_DEBT                                */
/*==============================================================*/
create table YKT_CUR.T_TIF_REPORT_RICH_DEBT  (
   BALANCE_DATE         VARCHAR2(10),
   SUB_CODE             NUMBER,
   SUB_NAME             VARCHAR2(50),
   SUB_TYPE             NUMBER,
   LAST_BALA            NUMBER(15,2),
   CUR_BALA             NUMBER(15,2),
   CHANGE_AMT           NUMBER(15,2),
   DATE_SIGN            VARCHAR2(8),
   RESERVE1             VARCHAR2(20),
   RESERVE2             VARCHAR2(20)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_REPORT_SHOP_BALANCE                             */
/*==============================================================*/
create table YKT_CUR.T_TIF_REPORT_SHOP_BALANCE  (
   BALANCE_DATE         VARCHAR2(10)                    not null,
   SHOP_ID              NUMBER                          not null,
   SHOP_NAME            VARCHAR2(50),
   DEPT_ID              NUMBER,
   TRADE_NUM            NUMBER,
   TRADE_AMT            NUMBER(15,6),
   MNG_AMT              NUMBER(15,6),
   TOTAL_AMT            NUMBER(15,6),
   DATA_SIGN            VARCHAR2(8),
   RESERVE1             VARCHAR2(20),
   RESERVE2             VARCHAR2(20),
   constraint SYS_C007211 primary key (BALANCE_DATE, SHOP_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_REPORT_TRANS_COMP                               */
/*==============================================================*/
create table YKT_CUR.T_TIF_REPORT_TRANS_COMP  (
   CMP_DATE             VARCHAR2(10)                    not null,
   CMP_FLAG             NUMBER,
   ADJUST_FLAG          NUMBER,
   LOCALSELF_NUM        NUMBER,
   LOCALSELF_AMT        NUMBER(15,2),
   LOCALAUTO_NUM        NUMBER,
   LOCALAUTO_AMT        NUMBER(15,2),
   LOCALFEE_NUM         NUMBER,
   LOCALFEE_AMT         NUMBER(15,2),
   BANKSELF_NUM         NUMBER,
   BANKSELF_AMT         NUMBER(15,2),
   BANKAUTO_NUM         NUMBER,
   BANKAUTO_AMT         NUMBER(15,2),
   BANKFEE_NUM          NUMBER,
   BANKFEE_AMT          NUMBER(15,2),
   DATE_SIGN            VARCHAR2(8),
   RESERVE1             VARCHAR2(20),
   RESERVE2             VARCHAR2(20),
   constraint SYS_C007213 primary key (CMP_DATE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_REVISE_LOG                                      */
/*==============================================================*/
create table YKT_CUR.T_TIF_REVISE_LOG  (
   SERIAL_NO            NUMBER                          not null,
   OTHER_SERI_NO        NUMBER                          not null,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER                          not null,
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   ENTERACT_DATE        VARCHAR2(10),
   ENTERACT_TIME        VARCHAR2(8),
   DEVICE_ID            NUMBER,
   SPONSOR_TYPE         NUMBER,
   SPONSOR_ID           NUMBER,
   REASON_NO            NUMBER,
   TRANSFER_ID          NUMBER,
   TRANSFER_TYPE_ID     NUMBER,
   UPDATE_FEE           NUMBER(9,2),
   OUT_ACCOUNT_ID       CHAR(16),
   IN_ACCOUNT_ID        CHAR(16),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007217 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_SAVDTL                                          */
/*==============================================================*/
create table YKT_CUR.T_TIF_SAVDTL  (
   SEQNO                NUMBER                          not null,
   TX_DATE              CHAR(8)                         not null,
   TX_TIME              CHAR(6),
   CARD_NO              NUMBER,
   BILL_TYPE            NUMBER,
   BILL_NO              VARCHAR2(20),
   CNT                  NUMBER,
   AMOUNT               NUMBER(9,2),
   TX_CODE              NUMBER,
   OPER_NO              VARCHAR2(10),
   COMMENTS             VARCHAR2(150),
   constraint SYS_C007220 primary key (SEQNO, TX_DATE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_SCHBILL                                         */
/*==============================================================*/
create table YKT_CUR.T_TIF_SCHBILL  (
   ID                   NUMBER                          not null,
   SERINO               NUMBER                          not null,
   SERI_TYPE            NUMBER                          not null,
   FEE_TYPE             NUMBER                          not null,
   ACT_ID               CHAR(16)                        not null,
   OUTORIN              NUMBER,
   SUBNO                VARCHAR2(20),
   WARRANT_TYPE         NUMBER,
   WARRANT_NO           VARCHAR2(20),
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   OP_FEE               NUMBER(9,2),
   CHECK_FLAG           NUMBER,
   CHECK_DATE           VARCHAR2(10),
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   RESERVE_4            VARCHAR2(20),
   RESERVE_5            VARCHAR2(20),
   constraint SYS_C007226 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_SELFHELP_TRAN_LOSS                              */
/*==============================================================*/
create table YKT_CUR.T_TIF_SELFHELP_TRAN_LOSS  (
   ID                   NUMBER                          not null,
   IS_REPAIR            CHAR,
   TRANSFER_NO          NUMBER                          not null,
   DEVICE_ID            NUMBER,
   TRANSFER_FEE         NUMBER,
   OUT_ACCOUNT_ID       NUMBER,
   IN_ACCOUNT_ID        NUMBER,
   OPERATE_TIME         TIMESTAMP,
   IS_UPDATE            CHAR,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007229 primary key (TRANSFER_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_SHOP_DAYSUM                                     */
/*==============================================================*/
create table YKT_CUR.T_TIF_SHOP_DAYSUM  (
   SUM_ID               NUMBER                          not null,
   SHOP_ID              NUMBER,
   ACCOUNT_ID           NUMBER(11),
   SUM_IN_FEE           NUMBER(15,2),
   SUM_OUT_FEE          NUMBER(15,2),
   TODAY_BALANCE        NUMBER(15,2),
   IN_FEE               NUMBER(15,2),
   OUT_FEE              NUMBER(15,2),
   TAKING_FEE           NUMBER(15,2),
   MANAGE_FEE           NUMBER(15,2),
   DUTY_FEE             NUMBER(15,2),
   OPTIME               TIMESTAMP,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007231 primary key (SUM_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_SHOP_MONTHSUM                                   */
/*==============================================================*/
create table YKT_CUR.T_TIF_SHOP_MONTHSUM  (
   SUM_ID               NUMBER                          not null,
   SHOP_ID              NUMBER,
   ACCOUNT_ID           NUMBER(11),
   SUM_IN_FEE           NUMBER(15,2),
   SUM_OUT_FEE          NUMBER(15,2),
   TODAY_BALANCE        NUMBER(15,2),
   IN_FEE               NUMBER(15,2),
   OUT_FEE              NUMBER(15,2),
   TAKING_FEE           NUMBER(15,2),
   MANAGE_FEE           NUMBER(15,2),
   DUTY_FEE             NUMBER(15,2),
   OPTIME               TIMESTAMP,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007233 primary key (SUM_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_SHOP_YEARSUM                                    */
/*==============================================================*/
create table YKT_CUR.T_TIF_SHOP_YEARSUM  (
   SUM_ID               NUMBER                          not null,
   SHOP_ID              NUMBER,
   ACCOUNT_ID           NUMBER(11),
   SUM_IN_FEE           NUMBER(15,2),
   SUM_OUT_FEE          NUMBER(15,2),
   TODAY_BALANCE        NUMBER(15,2),
   IN_FEE               NUMBER(15,2),
   OUT_FEE              NUMBER(15,2),
   TAKING_FEE           NUMBER(15,2),
   MANAGE_FEE           NUMBER(15,2),
   DUTY_FEE             NUMBER(15,2),
   OPTIME               TIMESTAMP,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007235 primary key (SUM_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_SPLITCFG                                        */
/*==============================================================*/
create table YKT_CUR.T_TIF_SPLITCFG  (
   TXTYPE               NUMBER                          not null,
   TXNAME               VARCHAR2(60),
   DBFLAG               NUMBER                          not null,
   CRFLAG               NUMBER                          not null,
   DBSUBNO              VARCHAR2(20)                    not null,
   CRSUBNO              VARCHAR2(20)                    not null,
   DBACTNO              VARCHAR2(30),
   CRACTNO              VARCHAR2(30),
   IDXDBACTNO           NUMBER,
   IDXCRACTNO           NUMBER,
   IDXAMT               NUMBER                          not null,
   FUNDTYPE             NUMBER,
   SUMMARY              VARCHAR2(60),
   constraint SYS_C007242 primary key (TXTYPE)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_SUBJECT                                         */
/*==============================================================*/
create table YKT_CUR.T_TIF_SUBJECT  (
   SUBNO                VARCHAR2(20)                    not null,
   SUBNAME              VARCHAR2(50),
   SUBTYPE              NUMBER,
   DIRECT               NUMBER,
   KIND                 NUMBER,
   FATHER               VARCHAR2(20),
   "LEVEL"              NUMBER,
   ENDFLAG              NUMBER,
   SPARE1               VARCHAR2(25),
   SPARE2               VARCHAR2(25),
   SPARE3               VARCHAR2(25),
   constraint SYS_C007244 primary key (SUBNO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_SUBJECT_BALANCE                                 */
/*==============================================================*/
create table YKT_CUR.T_TIF_SUBJECT_BALANCE  (
   TXDATE               VARCHAR2(10)                    not null,
   SUBNO                VARCHAR2(9)                     not null,
   SUBNAME              VARCHAR2(50),
   BBALA                NUMBER(20,6),
   BBALA_FLAG           NUMBER,
   DRAMNT               NUMBER(20,6),
   CRAMT                NUMBER(20,6),
   ENDBALA              NUMBER(20,6),
   ENDBALA_FLAG         NUMBER,
   SPARE1               VARCHAR2(25),
   SPARE2               VARCHAR2(25),
   SPARE3               VARCHAR2(25),
   constraint SYS_C007247 primary key (TXDATE, SUBNO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_SUBJECT_DEPT                                    */
/*==============================================================*/
create table YKT_CUR.T_TIF_SUBJECT_DEPT  (
   BALANCE_DATE         CHAR(8)                         not null,
   SUBNO                VARCHAR2(20),
   SERI_TYPE            NUMBER,
   OUTORIN              NUMBER,
   OP_COUNT             NUMBER,
   FEE_CHANGE           NUMBER,
   RECORD_OPER          CHAR(40 char)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_SUBSIDY                                         */
/*==============================================================*/
create table YKT_CUR.T_TIF_SUBSIDY  (
   SUBSIDY_NO           NUMBER                    not null,
   CUST_NO              NUMBER                          not null,
   BATCH_NO             VARCHAR2(14),
   SEQNO                NUMBER,
   OPER_CODE            VARCHAR2(10),
   CARD_NO              NUMBER,
   SUMMARY              VARCHAR2(60),
   EXPIRE_DATE          VARCHAR2(8),
   BILL_TYPE            NUMBER,
   BILL_NO              VARCHAR2(20),
   AMOUNT               NUMBER,
   SUBSIDYTYPE          CHAR,
   TX_DATE              CHAR(8),
   TX_TIME              CHAR(6),
   GET_DATE             CHAR(8),
   GET_TIME             CHAR(6),
   STATUS               CHAR,
   BROKER_ID            VARCHAR2(18),
   BROKER_NAME          VARCHAR2(60),
   constraint SYS_C007250 primary key (SUBSIDY_NO, CUST_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_SUBSIDYTMP                                      */
/*==============================================================*/
CREATE TABLE YKT_CUR.T_TIF_SUBSIDYTMP
(
  SUBSIDY_NO   NUMBER,
  CUST_NO      NUMBER                           NOT NULL,
  BATCH_NO     VARCHAR2(14 BYTE),
  SEQNO        NUMBER,
  OPER_CODE    VARCHAR2(10 BYTE),
  CARD_NO      NUMBER,
  SUMMARY      VARCHAR2(60 BYTE),
  EXPIRE_DATE  VARCHAR2(8 BYTE),
  BILL_TYPE    NUMBER,
  BILL_NO      VARCHAR2(20 BYTE),
  AMOUNT       NUMBER,
  SUBSIDYTYPE  CHAR(1 BYTE),
  TX_DATE      CHAR(8 BYTE),
  TX_TIME      CHAR(6 BYTE),
  GET_DATE     CHAR(8 BYTE),
  GET_TIME     CHAR(6 BYTE),
  STATUS       CHAR(1 BYTE),
  BROKER_ID    VARCHAR2(18 BYTE),
  BROKER_NAME  VARCHAR2(60 BYTE),
  primary key (SUBSIDY_NO, CUST_NO, OPER_CODE)
)
TABLESPACE TS_YKT_CUR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


/*==============================================================*/
/* Table: T_TIF_SUBSIDY_WAITING                                 */
/*==============================================================*/
create table YKT_CUR.T_TIF_SUBSIDY_WAITING  (
   SERIAL_NO            NUMBER                          not null,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER                          not null,
   STATE                NUMBER                          not null,
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   OUTORIN              NUMBER,
   FEE                  NUMBER(9,2),
   REG_DATE             VARCHAR2(10),
   REG_TIME             VARCHAR2(8),
   OPER_CODE            VARCHAR2(10),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007257 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_TRADELOG                                        */
/*==============================================================*/
create table YKT_CUR.T_TIF_TRADELOG  (
   SERINO               NUMBER                          not null,
   SERI_TYPE            NUMBER                          not null,
   FEE_TYPE             NUMBER                          not null,
   ACT_ID               CHAR(16)                        not null,
   SUBNO                VARCHAR2(20),
   OTHER_ACTID          CHAR(16),
   OTHER_SUBNO          VARCHAR2(20),
   OUTORIN              NUMBER,
   OP_FEE               NUMBER(15,6),
   NEW_FEE              NUMBER(15,6),
   CUR_FROZEBALA        NUMBER(20,6),
   WARRANT_TYPE         NUMBER,
   WARRANT_NO           VARCHAR2(20),
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   ENTERACT_DATE        VARCHAR2(10),
   ENTERACT_TIME        VARCHAR2(8),
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   ANNEX                NUMBER                          not null,
   RECORD_OPER          VARCHAR2(10),
   CHECK_OPER           VARCHAR2(10),
   WRITE_OPER           VARCHAR2(10),
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C0012324 primary key (SERINO, ACT_ID, FEE_TYPE, SERI_TYPE, ANNEX)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;


/*==============================================================*/
/* Table: T_TIF_TRADESERIAL                                     */
/*==============================================================*/
create table YKT_CUR.T_TIF_TRADESERIAL  (
   SERIAL_NO            NUMBER                          not null,
   OTHER_SERI_NO        NUMBER,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER,
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   ENTERACT_DATE        VARCHAR2(10),
   ENTERACT_TIME        VARCHAR2(8),
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   DEVPHY999_ID         VARCHAR2(8),
   SHOWID               CHAR(10),
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   TRADE_COUNT          NUMBER,
   TRADE_FEE            NUMBER(15,6),
   IN_BALANCE           NUMBER(9,2),
   OUT_BALANCE          NUMBER(9,2),
   DEPOSIT_FEE          NUMBER(9,2),
   IN_FEE               NUMBER(9,2),
   COST_FEE             NUMBER(9,2),
   BOARDFEE             NUMBER(9,2),
   OLDPWD               VARCHAR2(32),
   NEWPWD               VARCHAR2(32),
   CUSTOMER_ID          NUMBER,
   OPER_CODE            VARCHAR2(10),
   OUT_ACCOUNT_ID       CHAR(16),
   IN_ACCOUNT_ID        CHAR(16),
   B_ACT_ID             VARCHAR2(40),
   SYS_ID               NUMBER,
   CONDITION_ID         NUMBER,
   IS_ONLINE            CHAR,
   TMARK                NUMBER,
   DEV_AUTH             CHAR(8),
   COMU_VER             NUMBER,
   RUN_REASON           NUMBER,
   CRC                  CHAR(5),
   ECODE                NUMBER,
   REVISESERIAL_NO      NUMBER,
   RESERVE_1            VARCHAR2(40),
   RESERVE_2            VARCHAR2(40),
   RESERVE_3            VARCHAR2(40),
   constraint SYS_C007264 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;


/*==============================================================*/
/* Table: T_TIF_TRANSFER_LOG                                    */
/*==============================================================*/
create table YKT_CUR.T_TIF_TRANSFER_LOG  (
   SERIAL_NO            NUMBER                          not null,
   OTHER_SERI_NO        NUMBER                          not null,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER                          not null,
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   ENTERACT_DATE        VARCHAR2(10),
   ENTERACT_TIME        VARCHAR2(8),
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   TRANSFER_FEE         NUMBER(9,2),
   OUT_ACCOUNT_ID       CHAR(16),
   IN_ACCOUNT_ID        CHAR(16),
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   B_ACT_ID             VARCHAR2(40)                    not null,
   SYS_ID               NUMBER                          not null,
   CONDITION_ID         NUMBER,
   OPERATOR_ID          VARCHAR2(10),
   ECODE                NUMBER                          not null,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007271 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_TRANUPDATER_TYPE                                */
/*==============================================================*/
create table YKT_CUR.T_TIF_TRANUPDATER_TYPE  (
   ID                   NUMBER                          not null,
   TNAME                VARCHAR2(60),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007273 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_TRANUPDATE_REASON                               */
/*==============================================================*/
create table YKT_CUR.T_TIF_TRANUPDATE_REASON  (
   SPONSOR_ID           NUMBER                          not null,
   SNAME                VARCHAR2(100),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007275 primary key (SPONSOR_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_WARRANT                                         */
/*==============================================================*/
create table YKT_CUR.T_TIF_WARRANT  (
   WARRANT_NO           VARCHAR2(20)                    not null,
   WTYPE                NUMBER,
   WNAME                VARCHAR2(60),
   CUR_NO               VARCHAR2(20),
   BEGIN_NO             VARCHAR2(20),
   END_NO               VARCHAR2(20),
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007277 primary key (WARRANT_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_WATCH_LOG                                       */
/*==============================================================*/
create table YKT_CUR.T_TIF_WATCH_LOG  (
   SERIAL_NO            NUMBER                          not null,
   OTHER_SERI_NO        NUMBER                          not null,
   SERIAL_TYPE          NUMBER,
   SERIAL_STATE         NUMBER                          not null,
   OPERATE_DATE         VARCHAR2(10),
   OPERATE_TIME         VARCHAR2(8),
   COLLECT_DATE         VARCHAR2(10),
   COLLECT_TIME         VARCHAR2(8),
   MAINDEVICE_ID        NUMBER,
   DEVICE_ID            NUMBER,
   CARD_ID              NUMBER,
   BENGIN_TIME          VARCHAR2(26),
   END_TIME             VARCHAR2(26),
   IS_FULL              CHAR,
   constraint SYS_C007281 primary key (SERIAL_NO)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_WATER_COSUME_RECORD                             */
/*==============================================================*/
create table YKT_CUR.T_TIF_WATER_COSUME_RECORD  (
   CONSUME_ID           NUMBER                          not null,
   BEGIN_TIME           TIMESTAMP,
   END_TIME             TIMESTAMP,
   WATER_QUANTITY       NUMBER,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   constraint SYS_C007283 primary key (CONSUME_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_WHITE_SHEET                                     */
/*==============================================================*/
create table YKT_CUR.T_TIF_WHITE_SHEET  (
   ID                   NUMBER                          not null,
   CARD_ID              NUMBER,
   ACCOUNT_ID           NUMBER                          not null,
   CUSTOMER_ID          NUMBER                          not null,
   CURRENT_STATE        NUMBER                          not null,
   SUBSIDY_COUNT        NUMBER,
   SUBSIDY_FEE          NUMBER,
   IS_SUBSIDY           CHAR,
   constraint SYS_C007288 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_WHITE_SHEET_LOG                                 */
/*==============================================================*/
create table YKT_CUR.T_TIF_WHITE_SHEET_LOG  (
   LOG_ID               NUMBER                          not null,
   RECORD_ID            NUMBER,
   VERSION              NUMBER,
   CARD_ID              NUMBER,
   ACCOUNT_ID           CHAR(16)                        not null,
   CUSTOMER_ID          NUMBER                          not null,
   CURRENT_STATE        NUMBER                          not null,
   SUBSIDY_COUNT        NUMBER,
   IS_SUBSIDY           CHAR,
   UPDATE_TIME          VARCHAR2(26),
   constraint SYS_C007293 primary key (LOG_ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_WRITEFAILED                                     */
/*==============================================================*/
create table YKT_CUR.T_TIF_WRITEFAILED  (
   ID                   NUMBER                          not null,
   CARD_ID              NUMBER                          not null,
   SERIAL_NO            NUMBER                          not null,
   TX_DATE              VARCHAR2(8),
   PURESE_NO            NUMBER,
   SERIAL_TYPE          NUMBER,
   DEAL_FLAG            CHAR,
   DEAL_SERIAL_NO       NUMBER,
   DEAL_DATE            VARCHAR2(8),
   DEAL_TIME            VARCHAR2(6),
   COMMENTS             VARCHAR2(255),
   DEAL_BALA            NUMBER,
   constraint SYS_C0012418 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

comment on table YKT_CUR.T_TIF_WRITEFAILED is
'写卡失败信息表';

comment on column YKT_CUR.T_TIF_WRITEFAILED.SERIAL_TYPE is
'交易代码';

comment on column YKT_CUR.T_TIF_WRITEFAILED.DEAL_BALA is
'当前交易金额';

/*==============================================================*/
/* Table: T_TIF_YEAR_BACK_SUM                                   */
/*==============================================================*/
create table YKT_CUR.T_TIF_YEAR_BACK_SUM  (
   ID                   NUMBER                          not null,
   BTOS_TRAN_COUNT      NUMBER,
   BTOS_TRAN_FEE        NUMBER,
   STOB_TRAN_COUNT      NUMBER,
   STOB_TRAN_FEE        NUMBER,
   QUANCUN_COUNT        NUMBER,
   QUANCUN_FEE          NUMBER,
   AUTO_TRAN_COUNT      NUMBER,
   AUTO_TRAN_FEE        NUMBER,
   OTHER_TRAN_COUNT     NUMBER,
   OTHER_TRAN_FEE       NUMBER,
   NOW_TIME             TIMESTAMP,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007295 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_YEAR_MONITOR_SUM                                */
/*==============================================================*/
create table YKT_CUR.T_TIF_YEAR_MONITOR_SUM  (
   ID                   NUMBER                          not null,
   DEVICE_ID            NUMBER,
   ERROR_ID             NUMBER,
   ERROR_COUNT          NUMBER,
   BEGIN_TIME           TIMESTAMP,
   END_TIME             TIMESTAMP,
   NOW_TIME             TIMESTAMP,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007297 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_YEAR_OPERATE_SUM                                */
/*==============================================================*/
create table YKT_CUR.T_TIF_YEAR_OPERATE_SUM  (
   ID                   NUMBER                          not null,
   CUSTOMER_LOGIN       NUMBER,
   CUSTOMER_LOGOFF      NUMBER,
   CARD_LOGIN           NUMBER,
   CARD_LOGOFF          NUMBER,
   CARD_LOSS            NUMBER,
   CARD_RESUME          NUMBER,
   CARD_CHANGE          NUMBER,
   ACCOUNT_LOGIN        NUMBER,
   ACCOUNT_LOGOFF       NUMBER,
   ACCOUNT_UNFREEZE     NUMBER,
   ACCOUNT_FREEZE       NUMBER,
   CASH_DEPOSIT         NUMBER,
   SUMDATE              DATE,
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   constraint SYS_C007299 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_YEAR_SUBSYSTEM_SUM                              */
/*==============================================================*/
create table YKT_CUR.T_TIF_YEAR_SUBSYSTEM_SUM  (
   ID                   NUMBER                          not null,
   SUBSYSTEM_ID         NUMBER,
   SUM_RECORD_COUNT     NUMBER,
   CONSUME_COUNT        NUMBER,
   SUM_FEE              NUMBER(15,2),
   AUTHEN_COUNT         NUMBER,
   OTHER_COUNT          NUMBER,
   DEPOSIT_COUNT        NUMBER,
   NOW_TIME             TIMESTAMP,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007301 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: T_TIF_YEAR_SYSTEM_SUM                                 */
/*==============================================================*/
create table YKT_CUR.T_TIF_YEAR_SYSTEM_SUM  (
   ID                   NUMBER                          not null,
   ACCOUNT_COUNT        NUMBER,
   NEW_ACCOUNT_COUNT    NUMBER,
   LOGOFF_ACCOUNT_COUNT NUMBER,
   SUM_CUSTOMER         NUMBER,
   NEW_CUSTOMER_COUNT   NUMBER,
   LOGOFF_CUSTOMER_COUNT NUMBER,
   SUM_CARD             NUMBER,
   NEW_CARD__COUNT      NUMBER,
   LOGOFF_CARD_COUNT    NUMBER,
   SUM_BALANCE          NUMBER(15,2),
   SUM_IN_FEE           NUMBER(15,2),
   SUM_OUT_FEE          NUMBER(15,2),
   SUM_TAKING_FEE       NUMBER(15,2),
   SUM_DEPOSITCASH_FEE  NUMBER(15,2),
   SUMFEE_FROM_BACK     NUMBER(15,2),
   SUMFEE_TO_BACK       NUMBER(15,2),
   SUM_MANAGE_FEE       NUMBER(15,2),
   SUM_DUTY_FEE         NUMBER(15,2),
   QUANCUN_COUNT        NUMBER,
   AUTO_TRAN_COUNT      NUMBER,
   INSIDE_TRAN_COUNT    NUMBER,
   BTOS_TRAN_COUNT      NUMBER,
   STOB_TRAN_COUNT      NUMBER,
   SUBSIDY_COUNT        NUMBER,
   SELFH_DEPOSIT_COUNT  NUMBER,
   CASH_DEPOSIT_COUNT   NUMBER,
   COSUME_LOG_COUNT     NUMBER,
   AUTHEN_LOG_COUNT     NUMBER,
   OTHER_LOG_COUNT      NUMBER,
   SUMDATE              DATE,
   COMMENTS             VARCHAR2(100),
   constraint SYS_C007303 primary key (ID)
         
   using index
       pctfree 10
       initrans 2
       maxtrans 255
       tablespace TS_YKT_CUR
       storage
       (
           initial 64K
           minextents 1
           maxextents unlimited
       )
        logging
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_CUR
logging
monitoring
  noparallel;

  
/*==============================================================*/
/* Index: I_AIF_ACTCARDPURSE                                    */
/*==============================================================*/
create index YKT_CUR.I_AIF_ACTCARDPURSE on YKT_CUR.T_AIF_ACCOUNT (
   CARD_ID ASC,
   PURSE_ID ASC
);

/*==============================================================*/
/* Index: I_AIF_ACTCUT                                          */
/*==============================================================*/
create index YKT_CUR.I_AIF_ACTCUT on YKT_CUR.T_AIF_ACCOUNT (
   CUSTOMER_ID ASC
);

/*==============================================================*/
/* Index: I_AIF_ACTSUBNO                                        */
/*==============================================================*/
create index YKT_CUR.I_AIF_ACTSUBNO on YKT_CUR.T_AIF_ACCOUNT (
   SUBNO ASC
);

/*==============================================================*/
/* Index: I_AIF_ACTTS                                           */
/*==============================================================*/
create index YKT_CUR.I_AIF_ACTTS on YKT_CUR.T_AIF_ACCOUNT (
   ACT_TYPE ASC,
   CURRENT_STATE ASC
);

/*==============================================================*/
/* Index: IDX607030329450000                                    */
/*==============================================================*/
create index YKT_CUR.IDX607030329450000 on YKT_CUR.T_CIF_CUSTOMER (
   CLASS_NO ASC
);


/*==============================================================*/
/* Index: I_CIF_EMPNAME                                         */
/*==============================================================*/
create index YKT_CUR.I_CIF_EMPNAME on YKT_CUR.T_CIF_EMPLOYEE (
   EMP_NAME ASC
);

/*==============================================================*/
/* Index: I_CIF_EMPTS                                           */
/*==============================================================*/
create index YKT_CUR.I_CIF_EMPTS on YKT_CUR.T_CIF_EMPLOYEE (
   EMP_STATE ASC,
   TYPE_ID ASC
);

/*==============================================================*/
/* Index: I_CIF_SDSHOPDEVICE                                    */
/*==============================================================*/
create index YKT_CUR.I_CIF_SDSHOPDEVICE on YKT_CUR.T_CIF_SHOP_POS (
   DEVICE_ID ASC
);

/*==============================================================*/
/* Index: I_CIF_STUNAME                                         */
/*==============================================================*/
create index YKT_CUR.I_CIF_STUNAME on YKT_CUR.T_CIT_STUDENT (
   STUDENT_NAME ASC
);

/*==============================================================*/
/* Index: I_CIF_STUTS                                           */
/*==============================================================*/
create index YKT_CUR.I_CIF_STUTS on YKT_CUR.T_CIT_STUDENT (
   STUDY_STATE ASC,
   STUDY_TYPE ASC
);


/*==============================================================*/
/* Index: I_PIF_CARDCUT                                         */
/*==============================================================*/
create index YKT_CUR.I_PIF_CARDCUT on YKT_CUR.T_PIF_CARD (
   COSUMER_ID ASC
);



/*==============================================================*/
/* Index: I_PIF_OPEREMPCARD                                     */
/*==============================================================*/
create index YKT_CUR.I_PIF_OPEREMPCARD on YKT_CUR.T_PIF_OPERATOR (
   EMPLOYEE_ID ASC,
   CARD_ID ASC
);

/*==============================================================*/
/* Index: I_PIF_OPERNAME                                        */
/*==============================================================*/
create index YKT_CUR.I_PIF_OPERNAME on YKT_CUR.T_PIF_OPERATOR (
   OPER_NAME ASC
);

/*==============================================================*/
/* Index: I_PIF_OPER_PK                                         */
/*==============================================================*/
create index YKT_CUR.I_PIF_OPER_PK on YKT_CUR.T_PIF_OPERATOR (
   OPER_CODE ASC,
   EMPLOYEE_ID ASC
);

/*==============================================================*/
/* Index: I_PIF_SUBSYSTS                                        */
/*==============================================================*/
create index YKT_CUR.I_PIF_SUBSYSTS on YKT_CUR.T_PIF_SUBSYSTEM (
   SYSTEM_TYPE ASC,
   STATE ASC
);

/*==============================================================*/
/* Index: IDX512300433520000                                    */
/*==============================================================*/
create index YKT_CUR.IDX512300433520000 on YKT_CUR.T_TIF_BLACK_SHEET (
   CARD_ID ASC,
   VOLUME ASC,
   IS_AD ASC
);

/*==============================================================*/
/* Index: IDX_MESLIST                                           */
/*==============================================================*/
create index YKT_CUR.IDX_MESLIST on YKT_CUR.T_TIF_MESLIST (
   DEVICE_ID ASC,
   ECODE ASC,
   STATEID ASC
);
/*==============================================================*/
/* Index: MESLIST_ECODE                                         */
/*==============================================================*/
create index YKT_CUR.MESLIST_ECODE on YKT_CUR.T_TIF_MESLIST (
   ECODE ASC
);
/*==============================================================*/
/* Index: IDX_TS_EC                                             */
/*==============================================================*/
create index YKT_CUR.IDX_TS_EC on YKT_CUR.T_TIF_RCVDTL (
   COL_TIMESTAMP ASC,
   ERR_CODE ASC
);

/*==============================================================*/
/* Index: INDEX_TX_DATE                                         */
/*==============================================================*/
create index YKT_CUR.INDEX_TX_DATE on YKT_CUR.T_TIF_RCVDTL (
   TX_DATE ASC,
   CARD_NO ASC
);

/*==============================================================*/
/* Index: IDX_RCVDTL_STATUS                                     */
/*==============================================================*/
create index YKT_CUR.IDX_RCVDTL_STATUS on YKT_CUR.T_TIF_RCVDTL (
   STATUS ASC
);

create index YKT_CUR.PK_STUEMP_NO on YKT_CUR.T_CIF_PHOTO (stuemp_no);
/*==============================================================*/
/* Index: IDX_CARDDB                                            */
/*==============================================================*/
create index YKT_CUR.IDX_CARDDB on YKT_CUR.T_TIF_REPORT_CARDDB_NOBALANCE (
   BALANCE_DATE ASC,
   ACCOUNT_ID ASC
);

/*==============================================================*/
/* Index: HHD_TEST                                              */
/*==============================================================*/
create index YKT_CUR.HHD_TEST on YKT_CUR.T_TIF_REPORT_RICH_DEBT (
   BALANCE_DATE ASC
);

/*==============================================================*/
/* Index: IDX_TRADELOG                                          */
/*==============================================================*/
create index YKT_CUR.IDX_TRADELOG on YKT_CUR.T_TIF_TRADELOG (
   ACT_ID ASC,
   OPERATE_DATE ASC,
   OPERATE_TIME ASC
);


/*==============================================================*/
/* Index: IDX_STAT_CUR                                          */
/*==============================================================*/
create index YKT_CUR.IDX_STAT_CUR on YKT_CUR.T_TIF_TRADESERIAL (
   SERIAL_TYPE ASC,
   OPERATE_DATE ASC,
   OPERATE_TIME ASC,
   DEVPHY999_ID ASC,
   SYS_ID ASC
);

create index YKT_CUR.INX_CUST_ID on YKT_CUR.T_DOOR_TXDTL (
   CUST_ID ASC
);

insert into YKT_CUR.T_PIF_SYSTIME (LOGIC_DATE, SHUTACT_DATE, NEXTTRADE_DATE, NATURE_DATE, SHUTACT_TIME)
values (to_char(sysdate,'YYYYMMDD'), '20091231', '20050125', '20050125', '20050125');
commit;

create or replace trigger YKT_CUR.BLACKLIST
  before INSERT ON YKT_CUR.T_TIF_BLACK_SHEET
  FOR EACH ROW
begin
     select to_char(sysdate,'YYMMDDHH24MISS') into :new.volume  from dual;
end;
/

/*==============================================================*/
/* Table: ABCONTACT                                             */
/*==============================================================*/
create table YKT_WEB.ABCONTACT  (
   CONTACTID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   FIRSTNAME            VARCHAR2(100),
   MIDDLENAME           VARCHAR2(100),
   LASTNAME             VARCHAR2(100),
   NICKNAME             VARCHAR2(100),
   EMAILADDRESS         VARCHAR2(100),
   HOMESTREET           VARCHAR2(100),
   HOMECITY             VARCHAR2(100),
   HOMESTATE            VARCHAR2(100),
   HOMEZIP              VARCHAR2(100),
   HOMECOUNTRY          VARCHAR2(100),
   HOMEPHONE            VARCHAR2(100),
   HOMEFAX              VARCHAR2(100),
   HOMECELL             VARCHAR2(100),
   HOMEPAGER            VARCHAR2(100),
   HOMETOLLFREE         VARCHAR2(100),
   HOMEEMAILADDRESS     VARCHAR2(100),
   BUSINESSCOMPANY      VARCHAR2(100),
   BUSINESSSTREET       VARCHAR2(100),
   BUSINESSCITY         VARCHAR2(100),
   BUSINESSSTATE        VARCHAR2(100),
   BUSINESSZIP          VARCHAR2(100),
   BUSINESSCOUNTRY      VARCHAR2(100),
   BUSINESSPHONE        VARCHAR2(100),
   BUSINESSFAX          VARCHAR2(100),
   BUSINESSCELL         VARCHAR2(100),
   BUSINESSPAGER        VARCHAR2(100),
   BUSINESSTOLLFREE     VARCHAR2(100),
   BUSINESSEMAILADDRESS VARCHAR2(100),
   EMPLOYEENUMBER       VARCHAR2(100),
   JOBTITLE             VARCHAR2(100),
   JOBCLASS             VARCHAR2(100),
   HOURSOFOPERATION     CLOB,
   BIRTHDAY             TIMESTAMP,
   TIMEZONEID           VARCHAR2(100),
   INSTANTMESSENGER     VARCHAR2(100),
   WEBSITE              VARCHAR2(100),
   COMMENTS             CLOB
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.ABCONTACT
   add constraint SQL051103095612060 primary key (CONTACTID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: ABCONTACTS_ABLISTS                                    */
/*==============================================================*/
create table YKT_WEB.ABCONTACTS_ABLISTS  (
   CONTACTID            VARCHAR2(100)                   not null,
   LISTID               VARCHAR2(100)                   not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: ABLIST                                                */
/*==============================================================*/
create table YKT_WEB.ABLIST  (
   LISTID               VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   NAME                 VARCHAR2(100)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.ABLIST
   add constraint SQL051103095612280 primary key (LISTID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: ACCOUNT                                               */
/*==============================================================*/
create table YKT_WEB.ACCOUNT  (
   ACCOUNTID            VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   PARENTACCOUNTID      VARCHAR2(100),
   NAME                 VARCHAR2(100),
   LEGALNAME            VARCHAR2(100),
   LEGALID              VARCHAR2(100),
   LEGALTYPE            VARCHAR2(100),
   SICCODE              VARCHAR2(100),
   TICKERSYMBOL         VARCHAR2(100),
   INDUSTRY             VARCHAR2(100),
   TYPE_                VARCHAR2(100),
   SIZE_                VARCHAR2(100),
   WEBSITE              VARCHAR2(100),
   EMAILADDRESS1        VARCHAR2(100),
   EMAILADDRESS2        VARCHAR2(100)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.ACCOUNT
   add constraint SQL051103095612510 primary key (ACCOUNTID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: ADDRESS                                               */
/*==============================================================*/
create table YKT_WEB.ADDRESS  (
   ADDRESSID            VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   CLASSNAME            VARCHAR2(100),
   CLASSPK              VARCHAR2(100),
   DESCRIPTION          VARCHAR2(100),
   STREET1              VARCHAR2(100),
   STREET2              VARCHAR2(100),
   CITY                 VARCHAR2(100),
   STATE                VARCHAR2(100),
   ZIP                  VARCHAR2(100),
   COUNTRY              VARCHAR2(100),
   PHONE                VARCHAR2(100),
   FAX                  VARCHAR2(100),
   CELL                 VARCHAR2(100),
   PAGER                VARCHAR2(100),
   TOLLFREE             VARCHAR2(100),
   PRIORITY             NUMBER
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.ADDRESS
   add constraint SQL051103095612810 primary key (ADDRESSID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: ADMINCONFIG                                           */
/*==============================================================*/
create table YKT_WEB.ADMINCONFIG  (
   CONFIGID             VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   TYPE_                VARCHAR2(100),
   NAME                 VARCHAR2(100),
   CONFIG               CLOB
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.ADMINCONFIG
   add constraint SQL051103095613100 primary key (CONFIGID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: BJENTRIES_BJTOPICS                                    */
/*==============================================================*/
create table YKT_WEB.BJENTRIES_BJTOPICS  (
   ENTRYID              VARCHAR2(100)                   not null,
   TOPICID              VARCHAR2(100)                   not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: BJENTRIES_BJVERSES                                    */
/*==============================================================*/
create table YKT_WEB.BJENTRIES_BJVERSES  (
   ENTRYID              VARCHAR2(100)                   not null,
   VERSEID              VARCHAR2(100)                   not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: BJENTRY                                               */
/*==============================================================*/
create table YKT_WEB.BJENTRY  (
   ENTRYID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   NAME                 VARCHAR2(100),
   CONTENT              CLOB,
   VERSESINPUT          CLOB
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.BJENTRY
   add constraint SQL051103095613630 primary key (ENTRYID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: BJTOPIC                                               */
/*==============================================================*/
create table YKT_WEB.BJTOPIC  (
   TOPICID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   NAME                 VARCHAR2(100),
   DESCRIPTION          CLOB
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.BJTOPIC
   add constraint SQL051103095614030 primary key (TOPICID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: BJVERSE                                               */
/*==============================================================*/
create table YKT_WEB.BJVERSE  (
   VERSEID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   NAME                 VARCHAR2(100)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.BJVERSE
   add constraint SQL051103095614400 primary key (VERSEID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: BLOGSCATEGORY                                         */
/*==============================================================*/
create table YKT_WEB.BLOGSCATEGORY  (
   CATEGORYID           VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   NAME                 VARCHAR2(100)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.BLOGSCATEGORY
   add constraint SQL051103095615010 primary key (CATEGORYID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: BLOGSCOMMENTS                                         */
/*==============================================================*/
create table YKT_WEB.BLOGSCOMMENTS  (
   COMMENTSID           VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   ENTRYID              VARCHAR2(100),
   CONTENT              CLOB
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.BLOGSCOMMENTS
   add constraint SQL051103095615630 primary key (COMMENTSID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: BLOGSENTRY                                            */
/*==============================================================*/
create table YKT_WEB.BLOGSENTRY  (
   ENTRYID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   CATEGORYID           VARCHAR2(100),
   TITLE                VARCHAR2(100),
   CONTENT              CLOB,
   DISPLAYDATE          TIMESTAMP,
   SHARING              CHAR,
   COMMENTABLE          CHAR,
   PROPSCOUNT           NUMBER,
   COMMENTSCOUNT        NUMBER
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.BLOGSENTRY
   add constraint SQL051103095616200 primary key (ENTRYID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: BLOGSLINK                                             */
/*==============================================================*/
create table YKT_WEB.BLOGSLINK  (
   LINKID               VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   NAME                 VARCHAR2(100),
   URL                  CLOB
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.BLOGSLINK
   add constraint SQL051103095616770 primary key (LINKID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: BLOGSPROPS                                            */
/*==============================================================*/
create table YKT_WEB.BLOGSPROPS  (
   PROPSID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   ENTRYID              VARCHAR2(100),
   QUANTITY             NUMBER
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.BLOGSPROPS
   add constraint SQL051103095617210 primary key (PROPSID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: BLOGSREFERER                                          */
/*==============================================================*/
create table YKT_WEB.BLOGSREFERER  (
   REFERERID            VARCHAR2(100)                   not null,
   ENTRYID              VARCHAR2(100),
   URL                  CLOB,
   TYPE_                VARCHAR2(100),
   QUANTITY             NUMBER
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.BLOGSREFERER
   add constraint SQL051103095617750 primary key (REFERERID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: BLOGSUSER                                             */
/*==============================================================*/
create table YKT_WEB.BLOGSUSER  (
   USERID               VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   ENTRYID              VARCHAR2(100)                   not null,
   LASTPOSTDATE         TIMESTAMP
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.BLOGSUSER
   add constraint SQL051103095618140 primary key (USERID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: BOOKMARKSENTRY                                        */
/*==============================================================*/
create table YKT_WEB.BOOKMARKSENTRY  (
   ENTRYID              VARCHAR2(100)                   not null,
   GROUPID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   FOLDERID             VARCHAR2(100),
   NAME                 VARCHAR2(100),
   URL                  CLOB,
   COMMENTS             CLOB,
   VISITS               NUMBER
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.BOOKMARKSENTRY
   add constraint SQL051103095618720 primary key (ENTRYID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: BOOKMARKSFOLDER                                       */
/*==============================================================*/
create table YKT_WEB.BOOKMARKSFOLDER  (
   FOLDERID             VARCHAR2(100)                   not null,
   GROUPID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   PARENTFOLDERID       VARCHAR2(100),
   NAME                 VARCHAR2(100)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.BOOKMARKSFOLDER
   add constraint SQL051103095619250 primary key (FOLDERID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: CALEVENT                                              */
/*==============================================================*/
create table YKT_WEB.CALEVENT  (
   EVENTID              VARCHAR2(100)                   not null,
   GROUPID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   TITLE                VARCHAR2(100),
   DESCRIPTION          CLOB,
   STARTDATE            TIMESTAMP,
   ENDDATE              TIMESTAMP,
   DURATIONHOUR         NUMBER,
   DURATIONMINUTE       NUMBER,
   ALLDAY               CHAR,
   TIMEZONESENSITIVE    CHAR,
   TYPE_                VARCHAR2(100),
   LOCATION             VARCHAR2(100),
   STREET               VARCHAR2(100),
   CITY                 VARCHAR2(100),
   STATE                VARCHAR2(100),
   ZIP                  VARCHAR2(100),
   PHONE                VARCHAR2(100),
   REPEATING            CHAR,
   RECURRENCE           CLOB,
   REMINDBY             VARCHAR2(100),
   FIRSTREMINDER        NUMBER,
   SECONDREMINDER       NUMBER
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.CALEVENT
   add constraint SQL051103095619910 primary key (EVENTID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: CALTASK                                               */
/*==============================================================*/
create table YKT_WEB.CALTASK  (
   TASKID               VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   TITLE                VARCHAR2(100),
   DESCRIPTION          CLOB,
   NODUEDATE            CHAR,
   DUEDATE              TIMESTAMP,
   PRIORITY             NUMBER,
   STATUS               NUMBER
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.CALTASK
   add constraint SQL051103095620480 primary key (TASKID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: COLORSCHEME                                           */
/*==============================================================*/
create table YKT_WEB.COLORSCHEME  (
   COLORSCHEMEID        VARCHAR2(100)                   not null,
   SETTINGS_            CLOB
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.COLORSCHEME
   add constraint SQL051103095620990 primary key (COLORSCHEMEID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: COMPANY                                               */
/*==============================================================*/
create table YKT_WEB.COMPANY  (
   COMPANYID            VARCHAR2(100)                   not null,
   KEY_                 CLOB,
   PORTALURL            VARCHAR2(100)                   not null,
   HOMEURL              VARCHAR2(100)                   not null,
   MX                   VARCHAR2(100)                   not null,
   NAME                 VARCHAR2(100)                   not null,
   SHORTNAME            VARCHAR2(100)                   not null,
   TYPE_                VARCHAR2(100),
   SIZE_                VARCHAR2(100),
   STREET               VARCHAR2(100),
   CITY                 VARCHAR2(100),
   STATE                VARCHAR2(100),
   ZIP                  VARCHAR2(100),
   PHONE                VARCHAR2(100),
   FAX                  VARCHAR2(100),
   EMAILADDRESS         VARCHAR2(100)
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.COMPANY
   add constraint SQL051103095621560 primary key (COMPANYID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: CONTACT                                               */
/*==============================================================*/
create table YKT_WEB.CONTACT  (
   CONTACTID            VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   PARENTCONTACTID      VARCHAR2(100),
   FIRSTNAME            VARCHAR2(100),
   MIDDLENAME           VARCHAR2(100),
   LASTNAME             VARCHAR2(100),
   NICKNAME             VARCHAR2(100),
   EMAILADDRESS1        VARCHAR2(100),
   EMAILADDRESS2        VARCHAR2(100),
   SMSID                VARCHAR2(100),
   AIMID                VARCHAR2(100),
   ICQID                VARCHAR2(100),
   MSNID                VARCHAR2(100),
   SKYPEID              VARCHAR2(100),
   YMID                 VARCHAR2(100),
   WEBSITE              VARCHAR2(100),
   MALE                 CHAR,
   BIRTHDAY             TIMESTAMP,
   TIMEZONEID           VARCHAR2(100),
   EMPLOYEENUMBER       VARCHAR2(100),
   JOBTITLE             VARCHAR2(100),
   JOBCLASS             VARCHAR2(100),
   HOURSOFOPERATION     CLOB
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.CONTACT
   add constraint SQL051103095622110 primary key (CONTACTID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: COUNTER                                               */
/*==============================================================*/
create table YKT_WEB.COUNTER  (
   NAME                 VARCHAR2(100)                   not null,
   CURRENTID            NUMBER
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.COUNTER
   add constraint SQL051103095622520 primary key (NAME)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: CYRUSUSER                                             */
/*==============================================================*/
create table YKT_WEB.CYRUSUSER  (
   USERID               VARCHAR2(100)                   not null,
   PASSWORD_            VARCHAR2(100)                   not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.CYRUSUSER
   add constraint SQL051103095622900 primary key (USERID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: CYRUSVIRTUAL                                          */
/*==============================================================*/
create table YKT_WEB.CYRUSVIRTUAL  (
   EMAILADDRESS         VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.CYRUSVIRTUAL
   add constraint SQL051103095623290 primary key (EMAILADDRESS)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: DLFILEPROFILE                                         */
/*==============================================================*/
create table YKT_WEB.DLFILEPROFILE  (
   COMPANYID            VARCHAR2(100)                   not null,
   REPOSITORYID         VARCHAR2(100)                   not null,
   FILENAME             VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   VERSIONUSERID        VARCHAR2(100)                   not null,
   VERSIONUSERNAME      VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   READROLES            VARCHAR2(100),
   WRITEROLES           VARCHAR2(100),
   DESCRIPTION          CLOB,
   VERSION              NUMBER,
   SIZE_                NUMBER
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.DLFILEPROFILE
   add constraint SQL051103095623890 primary key (COMPANYID, REPOSITORYID, FILENAME)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: DLFILERANK                                            */
/*==============================================================*/
create table YKT_WEB.DLFILERANK  (
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   REPOSITORYID         VARCHAR2(100)                   not null,
   FILENAME             VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.DLFILERANK
   add constraint SQL051103095624310 primary key (COMPANYID, USERID, REPOSITORYID, FILENAME)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: DLFILEVERSION                                         */
/*==============================================================*/
create table YKT_WEB.DLFILEVERSION  (
   COMPANYID            VARCHAR2(100)                   not null,
   REPOSITORYID         VARCHAR2(100)                   not null,
   FILENAME             VARCHAR2(100)                   not null,
   VERSION              NUMBER                          not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   SIZE_                NUMBER
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.DLFILEVERSION
   add constraint SQL051103095624780 primary key (COMPANYID, REPOSITORYID, FILENAME, VERSION)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: DLREPOSITORY                                          */
/*==============================================================*/
create table YKT_WEB.DLREPOSITORY  (
   REPOSITORYID         VARCHAR2(100)                   not null,
   GROUPID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   READROLES            VARCHAR2(100),
   WRITEROLES           VARCHAR2(100),
   NAME                 VARCHAR2(100),
   DESCRIPTION          CLOB,
   LASTPOSTDATE         TIMESTAMP
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.DLREPOSITORY
   add constraint SQL051103095625400 primary key (REPOSITORYID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: ECARD_HIT_INFO                                        */
/*==============================================================*/
create table YKT_WEB.ECARD_HIT_INFO  (
   ID                   NUMBER                          not null,
   TITLE                VARCHAR2(500),
   INFO_ID              NUMBER                          not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.ECARD_HIT_INFO
   add constraint SQL051123192251620 primary key (ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: ECARD_INFORMATION                                     */
/*==============================================================*/
create table YKT_WEB.ECARD_INFORMATION  (
   ID                   NUMBER                          not null,
   INFO_TYPE            VARCHAR2(20),
   INFO_TITLE           VARCHAR2(500),
   INFO_CONTENT         CLOB,
   ATTACHMENTS          VARCHAR2(90),
   CREATE_DATE          TIMESTAMP,
   CREATER              VARCHAR2(20)
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.ECARD_INFORMATION
   add constraint SQL051103095646560 primary key (ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: ECARD_MSGBOARD                                        */
/*==============================================================*/
create table YKT_WEB.ECARD_MSGBOARD  (
   ID                   NUMBER                          not null,
   MSG_TITLE            VARCHAR2(200),
   POST_TIME            TIMESTAMP,
   POSTER               VARCHAR2(40),
   POST_CONTENT         CLOB,
   REPLY_TIME           TIMESTAMP,
   REPLYER              VARCHAR2(40),
   REPLY_CONTENT        CLOB,
   STATUS               CHAR
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.ECARD_MSGBOARD
   add constraint SQL051103095648650 primary key (ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: ECARD_PIC_DELAY                                       */
/*==============================================================*/
create table YKT_WEB.ECARD_PIC_DELAY  (
   CUR_STUEMP_NO        VARCHAR2(20)                    not null,
   OLD_STUEMP_NO        VARCHAR2(20),
   STATUS               CHAR
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.ECARD_PIC_DELAY
   add constraint SQL051103095647740 primary key (CUR_STUEMP_NO)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: ECARD_POSTPONE_APPLY                                  */
/*==============================================================*/
create table YKT_WEB.ECARD_POSTPONE_APPLY  (
   ID                   NUMBER                          not null,
   STUEMPNO             VARCHAR2(20),
   REASON               VARCHAR2(900),
   POSTPONE_TIME        VARCHAR2(8),
   APPLY_TIME           TIMESTAMP,
   CHECK_RESULT         VARCHAR2(240),
   STATUS               CHAR
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.ECARD_POSTPONE_APPLY
   add constraint SQL051107113817040 primary key (ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: GROUPS_ROLES                                          */
/*==============================================================*/
create table YKT_WEB.GROUPS_ROLES  (
   GROUPID              VARCHAR2(100)                   not null,
   ROLEID               VARCHAR2(100)                   not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: GROUP_                                                */
/*==============================================================*/
create table YKT_WEB.GROUP_  (
   GROUPID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   PARENTGROUPID        VARCHAR2(100),
   NAME                 VARCHAR2(100),
   FRIENDLYURL          VARCHAR2(100),
   THEMEID              VARCHAR2(100),
   COLORSCHEMEID        VARCHAR2(100)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.GROUP_
   add constraint SQL051103095625880 primary key (GROUPID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: IGFOLDER                                              */
/*==============================================================*/
create table YKT_WEB.IGFOLDER  (
   FOLDERID             VARCHAR2(100)                   not null,
   GROUPID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   PARENTFOLDERID       VARCHAR2(100),
   NAME                 VARCHAR2(100)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.IGFOLDER
   add constraint SQL051103095626690 primary key (FOLDERID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: IGIMAGE                                               */
/*==============================================================*/
create table YKT_WEB.IGIMAGE  (
   IMAGEID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   FOLDERID             VARCHAR2(100),
   DESCRIPTION          CLOB,
   HEIGHT               NUMBER,
   WIDTH                NUMBER,
   SIZE_                NUMBER
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
  
alter table YKT_WEB.IGIMAGE
   add constraint SQL051103095627510 primary key (IMAGEID, COMPANYID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: IMAGE                                                 */
/*==============================================================*/
create table YKT_WEB.IMAGE  (
   IMAGEID              VARCHAR2(200)                   not null,
   MODIFIEDDATE         TIMESTAMP,
   TEXT_                CLOB                            not null
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.IMAGE
   add constraint SQL051103095628070 primary key (IMAGEID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: INFO_TYPE                                             */
/*==============================================================*/
create table YKT_WEB.INFO_TYPE  (
   INFO_TYPE            VARCHAR2(20)                    not null,
   INFO_NAME            VARCHAR2(100)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.INFO_TYPE
   add constraint SQL051103095647370 primary key (INFO_TYPE)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: JOURNALARTICLE                                        */
/*==============================================================*/
create table YKT_WEB.JOURNALARTICLE  (
   ARTICLEID            VARCHAR2(100)                   not null,
   VERSION              NUMBER                          not null,
   PORTLETID            VARCHAR2(100)                   not null,
   GROUPID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   TITLE                VARCHAR2(100),
   CONTENT              CLOB,
   TYPE_                VARCHAR2(100),
   STRUCTUREID          VARCHAR2(100),
   TEMPLATEID           VARCHAR2(100),
   DISPLAYDATE          TIMESTAMP,
   EXPIRATIONDATE       TIMESTAMP,
   APPROVED             CHAR,
   APPROVEDBYUSERID     VARCHAR2(100),
   APPROVEDBYUSERNAME   VARCHAR2(100)
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.JOURNALARTICLE
   add constraint SQL051103095628500 primary key (VERSION, ARTICLEID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: JOURNALSTRUCTURE                                      */
/*==============================================================*/
create table YKT_WEB.JOURNALSTRUCTURE  (
   STRUCTUREID          VARCHAR2(100)                   not null,
   PORTLETID            VARCHAR2(100)                   not null,
   GROUPID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   NAME                 VARCHAR2(100),
   DESCRIPTION          CLOB,
   XSD                  CLOB
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.JOURNALSTRUCTURE
   add constraint SQL051103095628830 primary key (STRUCTUREID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: JOURNALTEMPLATE                                       */
/*==============================================================*/
create table YKT_WEB.JOURNALTEMPLATE  (
   TEMPLATEID           VARCHAR2(100)                   not null,
   PORTLETID            VARCHAR2(100)                   not null,
   GROUPID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   STRUCTUREID          VARCHAR2(100),
   NAME                 VARCHAR2(100),
   DESCRIPTION          CLOB,
   XSL                  CLOB,
   SMALLIMAGE           CHAR,
   SMALLIMAGEURL        VARCHAR2(100)
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.JOURNALTEMPLATE
   add constraint SQL051103095629280 primary key (TEMPLATEID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: LAYOUT                                                */
/*==============================================================*/
create table YKT_WEB.LAYOUT  (
   LAYOUTID             VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100),
   PARENTLAYOUTID       VARCHAR2(100),
   NAME                 VARCHAR2(100),
   TYPE_                CLOB,
   TYPESETTINGS         CLOB,
   FRIENDLYURL          VARCHAR2(100),
   PRIORITY             NUMBER
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.LAYOUT
   add constraint SQL051103095629620 primary key (LAYOUTID, USERID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAILRECEIPT                                           */
/*==============================================================*/
create table YKT_WEB.MAILRECEIPT  (
   RECEIPTID            VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   RECIPIENTNAME        VARCHAR2(100),
   RECIPIENTADDRESS     VARCHAR2(100),
   SUBJECT              VARCHAR2(100),
   SENTDATE             TIMESTAMP,
   READCOUNT            NUMBER,
   FIRSTREADDATE        TIMESTAMP,
   LASTREADDATE         TIMESTAMP
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.MAILRECEIPT
   add constraint SQL051103095629880 primary key (RECEIPTID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAP_ALERT_TABLE                                       */
/*==============================================================*/
create table YKT_MON.MAP_ALERT_TABLE  (
   ID                   NUMBER                          not null,
   PARAMETER            VARCHAR2(50),
   NAME                 VARCHAR2(50),
   PHONEALERT           NUMBER,
   MAILALERT            NUMBER,
   NOTE                 NUMBER
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_MON
logging
monitoring
  noparallel;

alter table YKT_MON.MAP_ALERT_TABLE
   add constraint SYS_C007379 primary key (ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_MON
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAP_ANALYSIS_POINT                                    */
/*==============================================================*/
create table YKT_MON.MAP_ANALYSIS_POINT  (
   ANALYSISNAME         VARCHAR2(50)                    not null,
   ANALYSISPOINT        VARCHAR2(14)                    not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_MON
logging
monitoring
  noparallel;

alter table YKT_MON.MAP_ANALYSIS_POINT
   add constraint SYS_C007382 primary key (ANALYSISNAME)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_MON
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAP_CAUNBALANCE_TABLE                                 */
/*==============================================================*/
create table YKT_MON.MAP_CAUNBALANCE_TABLE  (
   ACCOUNT_ID           CHAR(16)                        not null,
   ANALYSIS_TIME        CHAR(14)                        not null,
   ACT_TYPE             NUMBER,
   CUSTOMER_ID          NUMBER,
   CUT_NAME             VARCHAR2(60),
   CUT_TYPE             NUMBER,
   STUEMP_NO            VARCHAR2(20),
   CARD_ID              NUMBER,
   PURSE_ID             NUMBER,
   CARD_TYPE            NUMBER,
   SUBNO                VARCHAR2(20),
   PASSWORD             VARCHAR2(32),
   CURRENT_STATE        NUMBER,
   ISAUTOTRA            CHAR,
   LAST_BALA            NUMBER(20,6),
   LAST_FREEBALA        NUMBER(20,6),
   LAST_FROZEBALA       NUMBER(20,6),
   CUR_BALA             NUMBER(20,6),
   CUR_FREEBALA         NUMBER(20,6),
   CUR_FROZEBALA        NUMBER(20,6),
   OUT_BALA             NUMBER(20,6),
   IN_BALA              NUMBER(20,6),
   OUT_COUNT            NUMBER,
   IN_COUNT             NUMBER,
   CARD_BALANCE         NUMBER(15,6),
   NOBALA_NUM           NUMBER,
   CONSUME_COUNT        NUMBER,
   OPEN_DATE            VARCHAR2(10),
   OPEN_TIME            VARCHAR2(8),
   CLOSE_DATE           VARCHAR2(10),
   CLOSE_TIME           VARCHAR2(8),
   RESERVE_1            VARCHAR2(20),
   RESERVE_2            VARCHAR2(20),
   RESERVE_3            VARCHAR2(20),
   COMMENTS             VARCHAR2(100),
   DEPOSIT_BALA         NUMBER(9,2)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_MON
logging
monitoring
  noparallel;

alter table YKT_MON.MAP_CAUNBALANCE_TABLE
   add constraint SYS_C007385 primary key (ACCOUNT_ID, ANALYSIS_TIME)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_MON
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAP_CONTACT_MONITOR_TABLE                             */
/*==============================================================*/
create table YKT_MON.MAP_CONTACT_MONITOR_TABLE  (
   ID                   NUMBER                          not null,
   CONTACTNAME          VARCHAR2(50),
   MONITORNO            VARCHAR2(50),
   MONITORNAME          VARCHAR2(50)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_MON
logging
monitoring
  noparallel;

alter table YKT_MON.MAP_CONTACT_MONITOR_TABLE
   add constraint SYS_C007387 primary key (ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_MON
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAP_CONTACT_TABLE                                     */
/*==============================================================*/
create table YKT_MON.MAP_CONTACT_TABLE  (
   ID                   NUMBER                          not null,
   CONTACTNAME          VARCHAR2(50),
   CONTACTGENDER        VARCHAR2(3),
   CONTACTCOMPANY       VARCHAR2(30),
   WEEKDAYS             VARCHAR2(7),
   STARTTIME            VARCHAR2(26),
   ENDTIME              VARCHAR2(26),
   EMAIL                VARCHAR2(30),
   CELLPHONE            VARCHAR2(13)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_MON
logging
monitoring
  noparallel;

alter table YKT_MON.MAP_CONTACT_TABLE
   add constraint SYS_C007389 primary key (ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_MON
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAP_DEVICE_TABLE                                      */
/*==============================================================*/
create table YKT_MON.MAP_DEVICE_TABLE  (
   ANALYSIS_TIME        CHAR(14)                        not null,
   DEVICE_ID            NUMBER                          not null,
   DEVICE_NAME          VARCHAR2(50),
   DEVICE_TYPE          VARCHAR2(4),
   DEVPHY999_ID         VARCHAR2(8),
   FDEVPHY_ID           VARCHAR2(8),
   SUBSYSTEM_ID         NUMBER,
   AREA                 NUMBER,
   BSHEETVER            VARCHAR2(12),
   DEVICETIME           VARCHAR2(14),
   SERVERTIME           VARCHAR2(14),
   CONTACT_NAME         VARCHAR2(50),
   CPU                  NUMBER(5,2),
   MEMORY               NUMBER(5,2),
   HARDDISK             NUMBER(5,2),
   ERROR_REASON         NUMBER
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_MON
logging
monitoring
  noparallel;

alter table YKT_MON.MAP_DEVICE_TABLE
   add constraint SYS_C007392 primary key (ANALYSIS_TIME, DEVICE_ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_MON
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAP_FATHERSETS_TABLE                                  */
/*==============================================================*/
create table YKT_MON.MAP_FATHERSETS_TABLE  (
   ID                   NUMBER                          not null,
   SYSTEMID             VARCHAR2(10),
   SYSTEMNAME           VARCHAR2(50),
   STATUS               NUMBER,
   IP                   VARCHAR2(15),
   MACADDRESS           VARCHAR2(25),
   COORDX               NUMBER,
   COORDY               NUMBER,
   FEATURE              VARCHAR2(8)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_MON
logging
monitoring
  noparallel;

alter table YKT_MON.MAP_FATHERSETS_TABLE
   add constraint SYS_C007394 primary key (ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_MON
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAP_FATHER_LINE                                       */
/*==============================================================*/
create table YKT_MON.MAP_FATHER_LINE  (
   ID                   NUMBER                          not null,
   SPOINT               VARCHAR2(16),
   EPOINT               VARCHAR2(16),
   SPLAYER              NUMBER,
   EPLAYER              NUMBER,
   LINETYPE             NUMBER,
   LINECOLOR            NUMBER,
   LINESTYLE            NUMBER,
   LINESTATUS           NUMBER
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_MON
logging
monitoring
  noparallel;

alter table YKT_MON.MAP_FATHER_LINE
   add constraint SYS_C007396 primary key (ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_MON
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAP_LINES_TABLE                                       */
/*==============================================================*/
create table YKT_MON.MAP_LINES_TABLE  (
   ID                   NUMBER                          not null,
   POINT1               VARCHAR2(16),
   POINT2               VARCHAR2(16),
   LINETYPE             NUMBER,
   LINECOLOR            NUMBER,
   LINESTYLE            NUMBER,
   LINESTATUS           NUMBER
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_MON
logging
monitoring
  noparallel;

alter table YKT_MON.MAP_LINES_TABLE
   add constraint SYS_C007398 primary key (ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_MON
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAP_PARAM_TABLE                                       */
/*==============================================================*/
create table YKT_MON.MAP_PARAM_TABLE  (
   ID                   NUMBER                          not null,
   PARAMETER            VARCHAR2(50),
   VALUE                NUMBER(9,2),
   NAME                 VARCHAR2(50),
   UNIT                 VARCHAR2(10),
   FLAG                 NUMBER
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_MON
logging
monitoring
  noparallel;

alter table YKT_MON.MAP_PARAM_TABLE
   add constraint SYS_C007400 primary key (ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_MON
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAP_SERIALEXCEPT_TABLE                                */
/*==============================================================*/
create table YKT_MON.MAP_SERIALEXCEPT_TABLE  (
   ANALYSIS_TIME        CHAR(14)                        not null,
   TX_DATE              CHAR(8)                         not null,
   TX_TIME              CHAR(6)                         not null,
   CARD_NO              NUMBER                          not null,
   DEVICE_ID            CHAR(8)                         not null,
   SERIAL_NO            NUMBER                          not null,
   PURSE_NO             NUMBER,
   IN_BALA              NUMBER,
   OUT_BALA             NUMBER,
   AMOUNT               NUMBER,
   TOTAL_CNT            NUMBER,
   TX_CODE              NUMBER                          not null,
   TX_MARK              NUMBER,
   COMU_VER             NUMBER,
   RUN_REASON           NUMBER,
   SYS_ID               NUMBER,
   STATUS               CHAR,
   COL_TIMESTAMP        CHAR(20),
   DEAL_DATE            CHAR(8),
   DEAL_TIME            CHAR(6),
   CONTACTNAME          VARCHAR2(30),
   ABNORMALTYPE         NUMBER
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_MON
logging
monitoring
  noparallel;

alter table YKT_MON.MAP_SERIALEXCEPT_TABLE
   add constraint SYS_C007408 primary key (SERIAL_NO, TX_DATE, TX_TIME, DEVICE_ID, CARD_NO, TX_CODE, ANALYSIS_TIME)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_MON
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAP_SERIALOST_TABLE                                   */
/*==============================================================*/
create table YKT_MON.MAP_SERIALOST_TABLE  (
   ANALYSISTIME         VARCHAR2(14)                    not null,
   SERIAL_NO            NUMBER                          not null,
   DEVICE_ID            CHAR(8)                         not null,
   TX_DATE              VARCHAR2(8)                     not null,
   TX_TIME              VARCHAR2(6)                     not null,
   CONTACTNAME          VARCHAR2(50),
   SERIAL_REASON        NUMBER                          not null,
   SERIAL_STATUS        NUMBER                          not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_MON
logging
monitoring
  noparallel;

alter table YKT_MON.MAP_SERIALOST_TABLE
   add constraint SYS_C007416 primary key (ANALYSISTIME, SERIAL_NO, DEVICE_ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_MON
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAP_SETS_TABLE                                        */
/*==============================================================*/
create table YKT_MON.MAP_SETS_TABLE  (
   ID                   NUMBER                          not null,
   SETSID               VARCHAR2(16),
   SETNAME              VARCHAR2(50),
   FATHERID             VARCHAR2(16),
   SETTYPE              VARCHAR2(8),
   SETSTATUS            NUMBER,
   XCOOR                NUMBER,
   YCOOR                NUMBER,
   FEATURE              VARCHAR2(30)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_MON
logging
monitoring
  noparallel;

alter table YKT_MON.MAP_SETS_TABLE
   add constraint SYS_C007418 primary key (ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_MON
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAP_SYS_DICTIONARY                                    */
/*==============================================================*/
create table YKT_MON.MAP_SYS_DICTIONARY  (
   DICT_NO              NUMBER                          not null,
   DICT_VALUE           VARCHAR2(10)                    not null,
   DICT_NAME            VARCHAR2(40),
   DICT_CAPTION         VARCHAR2(40),
   DICT_CODE            VARCHAR2(50)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_MON
logging
monitoring
  noparallel;

alter table YKT_MON.MAP_SYS_DICTIONARY
   add constraint SYS_C007421 primary key (DICT_NO, DICT_VALUE)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_MON
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MAP_USER_TABLE                                        */
/*==============================================================*/
create table YKT_MON.MAP_USER_TABLE  (
   ID                   NUMBER                          not null,
   USERNAME             VARCHAR2(30),
   NAME                 VARCHAR2(30),
   PASSWORD             VARCHAR2(32),
   GENDER               VARCHAR2(4),
   COMPANY              VARCHAR2(100),
   EMAIL                VARCHAR2(40),
   PHONE                VARCHAR2(30),
   USERROLE             VARCHAR2(4),
   LOGINTIME            VARCHAR2(14),
   USERSTATUS           NUMBER,
   ADDUSER              VARCHAR2(30),
   CREATETIME           VARCHAR2(14)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_MON
logging
monitoring
  noparallel;

alter table YKT_MON.MAP_USER_TABLE
   add constraint SYS_C007423 primary key (ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_MON
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MBMESSAGE                                             */
/*==============================================================*/
create table YKT_WEB.MBMESSAGE  (
   MESSAGEID            VARCHAR2(100)                   not null,
   TOPICID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   THREADID             VARCHAR2(100),
   PARENTMESSAGEID      VARCHAR2(100),
   SUBJECT              VARCHAR2(100),
   BODY                 CLOB,
   ATTACHMENTS          CHAR,
   ANONYMOUS            CHAR
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.MBMESSAGE
   add constraint SQL051103095630380 primary key (MESSAGEID, TOPICID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MBMESSAGEFLAG                                         */
/*==============================================================*/
create table YKT_WEB.MBMESSAGEFLAG  (
   TOPICID              VARCHAR2(100)                   not null,
   MESSAGEID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   FLAG                 VARCHAR2(100)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.MBMESSAGEFLAG
   add constraint SQL051103095630730 primary key (TOPICID, MESSAGEID, USERID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MBTHREAD                                              */
/*==============================================================*/
create table YKT_WEB.MBTHREAD  (
   THREADID             VARCHAR2(100)                   not null,
   ROOTMESSAGEID        VARCHAR2(100),
   TOPICID              VARCHAR2(100),
   MESSAGECOUNT         NUMBER,
   LASTPOSTDATE         TIMESTAMP
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.MBTHREAD
   add constraint SQL051103095631080 primary key (THREADID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: MBTOPIC                                               */
/*==============================================================*/
create table YKT_WEB.MBTOPIC  (
   TOPICID              VARCHAR2(100)                   not null,
   PORTLETID            VARCHAR2(100)                   not null,
   GROUPID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   READROLES            VARCHAR2(100),
   WRITEROLES           VARCHAR2(100),
   NAME                 VARCHAR2(100),
   DESCRIPTION          CLOB,
   LASTPOSTDATE         TIMESTAMP
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.MBTOPIC
   add constraint SQL051103095631710 primary key (TOPICID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: NETWORKADDRESS                                        */
/*==============================================================*/
create table YKT_WEB.NETWORKADDRESS  (
   ADDRESSID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   NAME                 VARCHAR2(100),
   URL                  CLOB,
   COMMENTS             CLOB,
   CONTENT              CLOB,
   STATUS               NUMBER,
   LASTUPDATED          TIMESTAMP,
   NOTIFYBY             VARCHAR2(100),
   INTERVAL_            NUMBER,
   ACTIVE_              CHAR
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.NETWORKADDRESS
   add constraint SQL051103095632240 primary key (ADDRESSID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: NOTE                                                  */
/*==============================================================*/
create table YKT_WEB.NOTE  (
   NOTEID               VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   CLASSNAME            VARCHAR2(100),
   CLASSPK              VARCHAR2(100),
   CONTENT              CLOB
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.NOTE
   add constraint SQL051103095632750 primary key (NOTEID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: PASSWORDTRACKER                                       */
/*==============================================================*/
create table YKT_WEB.PASSWORDTRACKER  (
   PASSWORDTRACKERID    VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP                       not null,
   PASSWORD_            VARCHAR2(100)                   not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.PASSWORDTRACKER
   add constraint SQL051103095633200 primary key (PASSWORDTRACKERID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: POLLSCHOICE                                           */
/*==============================================================*/
create table YKT_WEB.POLLSCHOICE  (
   CHOICEID             VARCHAR2(100)                   not null,
   QUESTIONID           VARCHAR2(100)                   not null,
   DESCRIPTION          CLOB
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.POLLSCHOICE
   add constraint SQL051103095633710 primary key (CHOICEID, QUESTIONID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: POLLSQUESTION                                         */
/*==============================================================*/
create table YKT_WEB.POLLSQUESTION  (
   QUESTIONID           VARCHAR2(100)                   not null,
   PORTLETID            VARCHAR2(100)                   not null,
   GROUPID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   TITLE                VARCHAR2(100),
   DESCRIPTION          CLOB,
   EXPIRATIONDATE       TIMESTAMP,
   LASTVOTEDATE         TIMESTAMP
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.POLLSQUESTION
   add constraint SQL051103095634270 primary key (QUESTIONID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: POLLSVOTE                                             */
/*==============================================================*/
create table YKT_WEB.POLLSVOTE  (
   QUESTIONID           VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CHOICEID             VARCHAR2(100)                   not null,
   VOTEDATE             TIMESTAMP
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.POLLSVOTE
   add constraint SQL051103095634670 primary key (QUESTIONID, USERID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: PORTLET                                               */
/*==============================================================*/
create table YKT_WEB.PORTLET  (
   PORTLETID            VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   NARROW               CHAR,
   ROLES                CLOB,
   ACTIVE_              CHAR
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.PORTLET
   add constraint SQL051103095635060 primary key (PORTLETID, COMPANYID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: PORTLETPREFERENCES                                    */
/*==============================================================*/
create table YKT_WEB.PORTLETPREFERENCES  (
   PORTLETID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   LAYOUTID             VARCHAR2(100)                   not null,
   PREFERENCES          CLOB
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.PORTLETPREFERENCES
   add constraint SQL051103095635520 primary key (PORTLETID, USERID, LAYOUTID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: POSTPONE_FILES                                        */
/*==============================================================*/
create table YKT_WEB.POSTPONE_FILES  (
   ID                   NUMBER                          not null,
   GENERATE_DATE        TIMESTAMP,
   FILE_CONTENT         CLOB
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.POSTPONE_FILES
   add constraint SQL051103095648200 primary key (ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: PROJFIRM                                              */
/*==============================================================*/
create table YKT_WEB.PROJFIRM  (
   FIRMID               VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   NAME                 VARCHAR2(100),
   DESCRIPTION          CLOB,
   URL                  CLOB
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.PROJFIRM
   add constraint SQL051103095636020 primary key (FIRMID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: PROJPROJECT                                           */
/*==============================================================*/
create table YKT_WEB.PROJPROJECT  (
   PROJECTID            VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   FIRMID               VARCHAR2(100),
   CODE                 VARCHAR2(100),
   NAME                 VARCHAR2(100),
   DESCRIPTION          CLOB
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.PROJPROJECT
   add constraint SQL051103095636540 primary key (PROJECTID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: PROJTASK                                              */
/*==============================================================*/
create table YKT_WEB.PROJTASK  (
   TASKID               VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   PROJECTID            VARCHAR2(100),
   NAME                 VARCHAR2(100),
   DESCRIPTION          CLOB,
   COMMENTS             CLOB,
   ESTIMATEDDURATION    NUMBER,
   ESTIMATEDENDDATE     TIMESTAMP,
   ACTUALDURATION       NUMBER,
   ACTUALENDDATE        TIMESTAMP,
   STATUS               NUMBER
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.PROJTASK
   add constraint SQL051103095637090 primary key (TASKID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: PROJTIME                                              */
/*==============================================================*/
create table YKT_WEB.PROJTIME  (
   TIMEID               VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   PROJECTID            VARCHAR2(100),
   TASKID               VARCHAR2(100),
   DESCRIPTION          CLOB,
   STARTDATE            TIMESTAMP,
   ENDDATE              TIMESTAMP
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.PROJTIME
   add constraint SQL051103095637680 primary key (TIMEID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: PROPERTIES                                            */
/*==============================================================*/
create table YKT_WEB.PROPERTIES  (
   COMPANYID            VARCHAR2(100)                   not null,
   TYPE_                VARCHAR2(100)                   not null,
   PROPERTIES           CLOB
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.PROPERTIES
   add constraint SQL051103095638220 primary key (COMPANYID, TYPE_)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: RELEASE_                                              */
/*==============================================================*/
create table YKT_WEB.RELEASE_  (
   RELEASEID            VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   BUILDNUMBER          NUMBER,
   BUILDDATE            TIMESTAMP
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.RELEASE_
   add constraint SQL051103095638660 primary key (RELEASEID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: ROLE_                                                 */
/*==============================================================*/
create table YKT_WEB.ROLE_  (
   ROLEID               VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   NAME                 VARCHAR2(100)                   not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.ROLE_
   add constraint SQL051103095639070 primary key (ROLEID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: SHOPPINGCART                                          */
/*==============================================================*/
create table YKT_WEB.SHOPPINGCART  (
   CARTID               VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   ITEMIDS              CLOB,
   COUPONIDS            CLOB,
   ALTSHIPPING          NUMBER,
   INSURE               CHAR
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.SHOPPINGCART
   add constraint SQL051103095639680 primary key (CARTID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: SHOPPINGCATEGORY                                      */
/*==============================================================*/
create table YKT_WEB.SHOPPINGCATEGORY  (
   CATEGORYID           VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   PARENTCATEGORYID     VARCHAR2(100),
   NAME                 VARCHAR2(100)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.SHOPPINGCATEGORY
   add constraint SQL051103095640030 primary key (CATEGORYID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: SHOPPINGCOUPON                                        */
/*==============================================================*/
create table YKT_WEB.SHOPPINGCOUPON  (
   COUPONID             VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   NAME                 VARCHAR2(100),
   DESCRIPTION          CLOB,
   STARTDATE            TIMESTAMP,
   ENDDATE              TIMESTAMP,
   ACTIVE_              CHAR,
   LIMITCATEGORIES      CLOB,
   LIMITSKUS            CLOB,
   MINORDER             NUMBER,
   DISCOUNT             NUMBER,
   DISCOUNTTYPE         VARCHAR2(100)
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.SHOPPINGCOUPON
   add constraint SQL051103095640490 primary key (COUPONID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: SHOPPINGITEM                                          */
/*==============================================================*/
create table YKT_WEB.SHOPPINGITEM  (
   ITEMID               VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   CATEGORYID           VARCHAR2(100),
   SKU                  VARCHAR2(100),
   NAME                 VARCHAR2(100),
   DESCRIPTION          CLOB,
   PROPERTIES           CLOB,
   SUPPLIERUSERID       VARCHAR2(100),
   FIELDS_              CHAR,
   FIELDSQUANTITIES     CLOB,
   MINQUANTITY          NUMBER,
   MAXQUANTITY          NUMBER,
   PRICE                NUMBER,
   DISCOUNT             NUMBER,
   TAXABLE              CHAR,
   SHIPPING             NUMBER,
   USESHIPPINGFORMULA   CHAR,
   REQUIRESSHIPPING     CHAR,
   STOCKQUANTITY        NUMBER,
   FEATURED_            CHAR,
   SALE_                CHAR,
   SMALLIMAGE           CHAR,
   SMALLIMAGEURL        VARCHAR2(100),
   MEDIUMIMAGE          CHAR,
   MEDIUMIMAGEURL       VARCHAR2(100),
   LARGEIMAGE           CHAR,
   LARGEIMAGEURL        VARCHAR2(100)
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.SHOPPINGITEM
   add constraint SQL051103095640960 primary key (ITEMID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: SHOPPINGITEMFIELD                                     */
/*==============================================================*/
create table YKT_WEB.SHOPPINGITEMFIELD  (
   ITEMFIELDID          VARCHAR2(100)                   not null,
   ITEMID               VARCHAR2(100),
   NAME                 VARCHAR2(100),
   VALUES_              CLOB,
   DESCRIPTION          CLOB
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.SHOPPINGITEMFIELD
   add constraint SQL051103095641450 primary key (ITEMFIELDID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: SHOPPINGITEMPRICE                                     */
/*==============================================================*/
create table YKT_WEB.SHOPPINGITEMPRICE  (
   ITEMPRICEID          VARCHAR2(100)                   not null,
   ITEMID               VARCHAR2(100),
   MINQUANTITY          NUMBER,
   MAXQUANTITY          NUMBER,
   PRICE                NUMBER,
   DISCOUNT             NUMBER,
   TAXABLE              CHAR,
   SHIPPING             NUMBER,
   USESHIPPINGFORMULA   CHAR,
   STATUS               NUMBER
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.SHOPPINGITEMPRICE
   add constraint SQL051103095641920 primary key (ITEMPRICEID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: SHOPPINGORDER                                         */
/*==============================================================*/
create table YKT_WEB.SHOPPINGORDER  (
   ORDERID              VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   TAX                  NUMBER,
   SHIPPING             NUMBER,
   ALTSHIPPING          VARCHAR2(100),
   REQUIRESSHIPPING     CHAR,
   INSURE               CHAR,
   INSURANCE            NUMBER,
   COUPONIDS            CLOB,
   COUPONDISCOUNT       NUMBER,
   BILLINGFIRSTNAME     VARCHAR2(100),
   BILLINGLASTNAME      VARCHAR2(100),
   BILLINGEMAILADDRESS  VARCHAR2(100),
   BILLINGCOMPANY       VARCHAR2(100),
   BILLINGSTREET        VARCHAR2(100),
   BILLINGCITY          VARCHAR2(100),
   BILLINGSTATE         VARCHAR2(100),
   BILLINGZIP           VARCHAR2(100),
   BILLINGCOUNTRY       VARCHAR2(100),
   BILLINGPHONE         VARCHAR2(100),
   SHIPTOBILLING        CHAR,
   SHIPPINGFIRSTNAME    VARCHAR2(100),
   SHIPPINGLASTNAME     VARCHAR2(100),
   SHIPPINGEMAILADDRESS VARCHAR2(100),
   SHIPPINGCOMPANY      VARCHAR2(100),
   SHIPPINGSTREET       VARCHAR2(100),
   SHIPPINGCITY         VARCHAR2(100),
   SHIPPINGSTATE        VARCHAR2(100),
   SHIPPINGZIP          VARCHAR2(100),
   SHIPPINGCOUNTRY      VARCHAR2(100),
   SHIPPINGPHONE        VARCHAR2(100),
   CCNAME               VARCHAR2(100),
   CCTYPE               VARCHAR2(100),
   CCNUMBER             VARCHAR2(100),
   CCEXPMONTH           NUMBER,
   CCEXPYEAR            NUMBER,
   CCVERNUMBER          VARCHAR2(100),
   COMMENTS             CLOB,
   PPTXNID              VARCHAR2(100),
   PPPAYMENTSTATUS      VARCHAR2(100),
   PPPAYMENTGROSS       NUMBER,
   PPRECEIVEREMAIL      VARCHAR2(100),
   PPPAYEREMAIL         VARCHAR2(100),
   SENDORDEREMAIL       CHAR,
   SENDSHIPPINGEMAIL    CHAR
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.SHOPPINGORDER
   add constraint SQL051103095642440 primary key (ORDERID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: SHOPPINGORDERITEM                                     */
/*==============================================================*/
create table YKT_WEB.SHOPPINGORDERITEM  (
   ORDERID              VARCHAR2(100)                   not null,
   ITEMID               VARCHAR2(100)                   not null,
   SKU                  VARCHAR2(100),
   NAME                 VARCHAR2(100),
   DESCRIPTION          CLOB,
   PROPERTIES           CLOB,
   SUPPLIERUSERID       VARCHAR2(100),
   PRICE                NUMBER,
   QUANTITY             NUMBER,
   SHIPPEDDATE          TIMESTAMP
)
tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.SHOPPINGORDERITEM
   add constraint SQL051103095642960 primary key (ORDERID, ITEMID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: T_LEADQUERY_FUNCLIST                                  */
/*==============================================================*/
create table YKT_QUERY.T_LEADQUERY_FUNCLIST  (
   FUNC_CODE            VARCHAR2(4)                     not null,
   FUNC_NAME            VARCHAR2(100),
   FUNC_URL             VARCHAR2(100)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_QUERY
logging
monitoring
  noparallel;

alter table YKT_QUERY.T_LEADQUERY_FUNCLIST
   add constraint SYS_C007534 primary key (FUNC_CODE)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_QUERY
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: T_LEADQUERY_OPERATOR                                  */
/*==============================================================*/
create table YKT_QUERY.T_LEADQUERY_OPERATOR  (
   OPER_CODE            VARCHAR2(10)                    not null,
   OPER_NAME            VARCHAR2(20)                    not null,
   PHONE                VARCHAR2(40),
   MOBILE               VARCHAR2(40),
   ADDR                 VARCHAR2(100),
   ZIP                  CHAR(6),
   EMAIL                VARCHAR2(80),
   OPER_PWD             VARCHAR2(100),
   STATUS               CHAR,
   LOGIN_TIME           VARCHAR2(32),
   LOGOUT_TIME          VARCHAR2(32),
   LOGIN_IP             VARCHAR2(20),
   LOGIN_FLAG           CHAR,
   REG_DATA             VARCHAR2(10),
   REG_TIME             VARCHAR2(10),
   IS_SHOP_OWNER        CHAR
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_QUERY
logging
monitoring
  noparallel;

alter table YKT_QUERY.T_LEADQUERY_OPERATOR
   add constraint SYS_C007537 primary key (OPER_CODE)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_QUERY
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: T_LEADQUERY_OPERLIMIT                                 */
/*==============================================================*/
create table YKT_QUERY.T_LEADQUERY_OPERLIMIT  (
   OPER_CODE            VARCHAR2(10)                    not null,
   FUNC_CODE            VARCHAR2(4)                     not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_QUERY
logging
monitoring
  noparallel;

alter table YKT_QUERY.T_LEADQUERY_OPERLIMIT
   add constraint SYS_C007540 primary key (OPER_CODE, FUNC_CODE)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_QUERY
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: T_LEADQUERY_STORELIMIT                                */
/*==============================================================*/
create table YKT_QUERY.T_LEADQUERY_STORELIMIT  (
   OPER_CODE            VARCHAR2(10)                    not null,
   STORE_CODE           VARCHAR2(6)                     not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_QUERY
logging
monitoring
  noparallel;

alter table YKT_QUERY.T_LEADQUERY_STORELIMIT
   add constraint SYS_C007543 primary key (OPER_CODE, STORE_CODE)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_QUERY
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: UPLOAD_FILES                                          */
/*==============================================================*/
create table YKT_WEB.UPLOAD_FILES  (
   ID                   NUMBER                          not null,
   STORE_FILENAME       VARCHAR2(240),
   OLD_FILENAME         VARCHAR2(240)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.UPLOAD_FILES
   add constraint SQL051103124024410 primary key (ID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: USERS_GROUPS                                          */
/*==============================================================*/
create table YKT_WEB.USERS_GROUPS  (
   USERID               VARCHAR2(100)                   not null,
   GROUPID              VARCHAR2(100)                   not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: USERS_PROJPROJECTS                                    */
/*==============================================================*/
create table YKT_WEB.USERS_PROJPROJECTS  (
   USERID               VARCHAR2(100)                   not null,
   PROJECTID            VARCHAR2(100)                   not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: USERS_PROJTASKS                                       */
/*==============================================================*/
create table YKT_WEB.USERS_PROJTASKS  (
   USERID               VARCHAR2(100)                   not null,
   TASKID               VARCHAR2(100)                   not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: USERS_ROLES                                           */
/*==============================================================*/
create table YKT_WEB.USERS_ROLES  (
   USERID               VARCHAR2(100)                   not null,
   ROLEID               VARCHAR2(100)                   not null
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

/*==============================================================*/
/* Table: USERTRACKER                                           */
/*==============================================================*/
create table YKT_WEB.USERTRACKER  (
   USERTRACKERID        VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   MODIFIEDDATE         TIMESTAMP,
   REMOTEADDR           VARCHAR2(100),
   REMOTEHOST           VARCHAR2(100),
   USERAGENT            VARCHAR2(100)
)
  pctfree 10
initrans 1
maxtrans 255
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace TS_YKT_WEB
logging
monitoring
  noparallel;

alter table YKT_WEB.USERTRACKER
   add constraint SQL051103095644400 primary key (USERTRACKERID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: USERTRACKERPATH                                       */
/*==============================================================*/
create table YKT_WEB.USERTRACKERPATH  (
   USERTRACKERPATHID    VARCHAR2(100)                   not null,
   USERTRACKERID        VARCHAR2(100)                   not null,
   PATH                 CLOB                            not null,
   PATHDATE             TIMESTAMP                       not null
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.USERTRACKERPATH
   add constraint SQL051103095644960 primary key (USERTRACKERPATHID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: USER_                                                 */
/*==============================================================*/
create table YKT_WEB.USER_  (
   USERID               VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   CREATEDATE           TIMESTAMP,
   PASSWORD_            VARCHAR2(100),
   PASSWORDENCRYPTED    CHAR,
   PASSWORDEXPIRATIONDATE TIMESTAMP,
   PASSWORDRESET        CHAR,
   FIRSTNAME            VARCHAR2(100),
   MIDDLENAME           VARCHAR2(100),
   LASTNAME             VARCHAR2(100),
   NICKNAME             VARCHAR2(100),
   MALE                 CHAR,
   BIRTHDAY             TIMESTAMP,
   EMAILADDRESS         VARCHAR2(100),
   SMSID                VARCHAR2(100),
   AIMID                VARCHAR2(100),
   ICQID                VARCHAR2(100),
   MSNID                VARCHAR2(100),
   YMID                 VARCHAR2(100),
   FAVORITEACTIVITY     VARCHAR2(100),
   FAVORITEBIBLEVERSE   VARCHAR2(100),
   FAVORITEFOOD         VARCHAR2(100),
   FAVORITEMOVIE        VARCHAR2(100),
   FAVORITEMUSIC        VARCHAR2(100),
   LANGUAGEID           VARCHAR2(100),
   TIMEZONEID           VARCHAR2(100),
   THEMEID              VARCHAR2(100),
   COLORSCHEMEID        VARCHAR2(100),
   GREETING             VARCHAR2(100),
   RESOLUTION           VARCHAR2(100),
   COMMENTS             CLOB,
   LOGINDATE            TIMESTAMP,
   LOGINIP              VARCHAR2(100),
   LASTLOGINDATE        TIMESTAMP,
   LASTLOGINIP          VARCHAR2(100),
   FAILEDLOGINATTEMPTS  NUMBER,
   AGREEDTOTERMSOFUSE   CHAR,
   ACTIVE_              CHAR
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.USER_
   add constraint SQL051103095643450 primary key (USERID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: WIKINODE                                              */
/*==============================================================*/
create table YKT_WEB.WIKINODE  (
   NODEID               VARCHAR2(100)                   not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   MODIFIEDDATE         TIMESTAMP,
   READROLES            VARCHAR2(100),
   WRITEROLES           VARCHAR2(100),
   NAME                 VARCHAR2(100),
   DESCRIPTION          CLOB,
   SHARING              CHAR,
   LASTPOSTDATE         TIMESTAMP
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.WIKINODE
   add constraint SQL051103095645560 primary key (NODEID)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;

/*==============================================================*/
/* Table: WIKIPAGE                                              */
/*==============================================================*/
create table YKT_WEB.WIKIPAGE  (
   NODEID               VARCHAR2(100)                   not null,
   TITLE                VARCHAR2(100)                   not null,
   VERSION              NUMBER                          not null,
   COMPANYID            VARCHAR2(100)                   not null,
   USERID               VARCHAR2(100)                   not null,
   USERNAME             VARCHAR2(100),
   CREATEDATE           TIMESTAMP,
   CONTENT              CLOB,
   FORMAT               VARCHAR2(100),
   HEAD                 CHAR
)
 tablespace TS_YKT_WEB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

alter table YKT_WEB.WIKIPAGE
   add constraint SQL051103095646100 primary key (NODEID, TITLE, VERSION)
      using index
    pctfree 10
    initrans 2
    maxtrans 255
    tablespace TS_YKT_WEB
    storage
    (
        initial 64K
        minextents 1
        maxextents unlimited
    )
     logging;
	 
create table YKT_CUR.T_TRADECODE_SHOP
(
  TRADE_CODE NUMBER not null,
  SHOP_ID    NUMBER not null
)
tablespace TS_YKT_CUR
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table YKT_CUR.T_TRADECODE_SHOP
  add primary key (TRADE_CODE, SHOP_ID)
  using index 
  tablespace TS_YKT_CUR
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );