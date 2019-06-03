--
-- sqlplus -S kt_zh/kt_zh@ora18 @create-schema
--

drop table arv_adressen_p;

create table arv_adressen_p (
   bfsnr             integer             not null,
   onrp              varchar2( 10)           null,
   plz               integer             not null,
   zusatzziffern     varchar2(  2)       not null,
   ortschaftsname    varchar2( 50)       not null,
   kanton            varchar2( 50)           null,
   strassenname      varchar2(100)       not null,
   hausnummer        varchar2( 10)           null,
-- geomy             decimal(10, 3)      not null,
-- geomx             decimal(10, 3)      not null,
   geomy             float               not null,  -- TODO: is float sufficient?
   geomx             float               not null,
   status            varchar2( 10)           null,
   status_gp         varchar2(100)           null,
   parz_nr           varchar2(100)           null,
   gvz_nr            varchar2(100)           null,
   gwr_egid          integer                 null,
   gwr_edid          varchar2(100)           null,
   gebaeudeart       varchar2(100)           null,
   quelle            varchar2(100)           null,
   e                 varchar2(100)           null,
   n                 varchar2(100)           null
-- e                 decimal(10, 3)      not null,
-- n                 decimal(10, 3)      not null
);

exit;
