*&---------------------------------------------------------------------*
*&  Include           ZIN1_ACCOUNT_STATEMENT_VEND
*&---------------------------------------------------------------------*

TYPES : BEGIN OF str_final1,
          icon   TYPE icon_d,
          bukrs  TYPE bsik-bukrs,
          lifnr  TYPE bsik-lifnr,
          name1  TYPE lfa1-name1,
          umsks  TYPE bsik-umsks,
          umskz  TYPE bsik-umskz,
          augdt  TYPE bsik-augdt,
          augbl  TYPE bsik-augbl,
          zuonr  TYPE bsik-zuonr,
          gjahr  TYPE bsik-gjahr,
          belnr  TYPE bsik-belnr,
          buzei  TYPE bsik-buzei,
          budat  TYPE bsik-budat,
          bldat  TYPE bsik-bldat,
          xblnr  TYPE bsik-xblnr,
          blart  TYPE bsik-blart,
          bschl  TYPE bsik-bschl,
          shkzg  TYPE bsik-shkzg,
          gsber  TYPE bsik-gsber,
          sgtxt  TYPE bsik-sgtxt,
          hkont  TYPE bsik-hkont,
          zfbdt  TYPE bsik-zfbdt,
          kostl  TYPE bsik-kostl,
          prctr  TYPE bsik-prctr,
          bupla  TYPE bsik-bupla,
          secco  TYPE bsik-secco,
          chect  TYPE payr-chect,
          bktxt  TYPE bkpf-bktxt,
          text   TYPE bsik-sgtxt,
          credit TYPE bsik-dmbtr,
          debit  TYPE bsik-dmbtr,
          cname  TYPE cskt-ktext,
          pname  TYPE cepct-ktext,
          saknr  TYPE skat-saknr,
          gl20t  TYPE skat-txt20,
          gl50t  TYPE skat-txt50,
          txt20  TYPE skat-txt20,
          txt50  TYPE skat-txt50,
        END OF str_final1.

TYPES : BEGIN OF str_bal1,
          lifnr  TYPE bsik-lifnr,
          name1  TYPE lfa1-name1,
          stras  TYPE lfa1-stras,
          ort01  TYPE lfa1-ort01,
          ort02  TYPE lfa1-ort02,
          pstlz  TYPE lfa1-pstlz,
          opbal  TYPE bsik-dmbtr,
          clbal  TYPE bsik-dmbtr,
          opdate TYPE sy-datum,
          cldate TYPE sy-datum,
        END OF str_bal1.

TYPES : BEGIN OF str_bsik1,
          bukrs TYPE bsik-bukrs,
          lifnr TYPE bsik-lifnr,
          umsks TYPE bsik-umsks,
          umskz TYPE bsik-umskz,
          augdt TYPE bsik-augdt,
          augbl TYPE bsik-augbl,
          zuonr TYPE bsik-zuonr,
          gjahr TYPE bsik-gjahr,
          belnr TYPE bsik-belnr,
          buzei TYPE bsik-buzei,
          budat TYPE bsik-budat,
          bldat TYPE bsik-bldat,
          xblnr TYPE bsik-xblnr,
          blart TYPE bsik-blart,
          bschl TYPE bsik-bschl,
          shkzg TYPE bsik-shkzg,
          gsber TYPE bsik-gsber,
          dmbtr TYPE bsik-dmbtr,
          wrbtr TYPE bsik-wrbtr,
          sgtxt TYPE bsik-sgtxt,
          hkont TYPE bsik-hkont,
          zfbdt TYPE bsik-zfbdt,
          kostl TYPE bsik-kostl,
          prctr TYPE bsik-prctr,
          bupla TYPE bsik-bupla,
          secco TYPE bsik-secco,
        END OF str_bsik1.

TYPES : BEGIN OF str_bkpf1,
          bukrs TYPE bkpf-bukrs,
          belnr TYPE bkpf-belnr,
          gjahr TYPE bkpf-gjahr,
          bktxt TYPE bkpf-bktxt,
        END OF str_bkpf1.

TYPES : BEGIN OF str_bseg1,
          bukrs TYPE bseg-bukrs,
          belnr TYPE bseg-belnr,
          gjahr TYPE bseg-gjahr,
          buzei TYPE bseg-buzei,
          dmbtr TYPE bseg-dmbtr,
          kostl TYPE bseg-kostl,
          anln1 TYPE bseg-anln1,
          anln2 TYPE bseg-anln2,
          hkont TYPE bseg-hkont,
          kunnr TYPE bseg-kunnr,
          lifnr TYPE bseg-lifnr,
          prctr TYPE bseg-prctr,
        END OF str_bseg1.

TYPES : BEGIN OF str_skat1,
          spras TYPE skat-spras,
          ktopl TYPE skat-ktopl,
          saknr TYPE skat-saknr,
          txt20 TYPE skat-txt20,
          txt50 TYPE skat-txt50,
        END OF str_skat1.

TYPES : BEGIN OF str_lfa1,
          lifnr TYPE lfa1-lifnr,
          name1 TYPE lfa1-name1,
          ort01 TYPE lfa1-ort01,
          ort02 TYPE lfa1-ort01,
          pstlz TYPE lfa1-pstlz,
          stras TYPE lfa1-stras,
          land1 TYPE lfa1-land1,
          regio TYPE lfa1-regio,
          telf1 TYPE lfa1-telf1,
          telf2 TYPE lfa1-telf2,
          adrnr TYPE lfa1-adrnr,
        END OF str_lfa1.
TYPES: BEGIN OF ty_adrc,
         addrnumber TYPE adrc-addrnumber,
         str_suppl1 TYPE adrc-str_suppl1,
         str_suppl2 TYPE adrc-str_suppl2,
         str_suppl3 TYPE adrc-str_suppl3,
         street     TYPE adrc-street,
         house_num1 TYPE adrc-house_num1,
         location   TYPE adrc-location,
       END OF ty_adrc.
DATA: it_adrc TYPE TABLE OF ty_adrc,
      ls_adrc TYPE ty_adrc.


TYPES : BEGIN OF str_anla1,
          bukrs TYPE anla-bukrs,
          anln1 TYPE anla-anln1,
          anln2 TYPE anla-anln2,
          txt50 TYPE anla-txt50,
        END OF str_anla1.

TYPES : BEGIN OF str_payr1,
          zbukr TYPE payr-zbukr,
          chect TYPE payr-chect,
          vblnr TYPE payr-vblnr,
          gjahr TYPE payr-gjahr,
        END OF str_payr1.

TYPES : BEGIN OF str_cskt1,
          spras TYPE cskt-spras,
          kokrs TYPE cskt-kokrs,
          kostl TYPE cskt-kostl,
          ktext TYPE cskt-ktext,
          ltext TYPE cskt-ltext,
        END OF str_cskt1.

TYPES : BEGIN OF str_cepct1,
          spras TYPE cepct-spras,
          prctr TYPE cepct-prctr,
          kokrs TYPE cepct-kokrs,
          ktext TYPE cepct-ktext,
          ltext TYPE cepct-ltext,
        END OF str_cepct1.

*TYPES : BEGIN OF STR_CHK,
*        BELNR TYPE BSIK-BELNR,
*        LIFNR TYPE BSIK-LIFNR,
*        DMBTR TYPE BSIK-DMBTR,
*        END OF STR_CHK.

TYPES : BEGIN OF op_bal1,
          lifnr TYPE lfa1-lifnr,
          name1 TYPE lfa1-name1,
          stras TYPE lfa1-stras,
          ort01 TYPE lfa1-ort01,
          ort02 TYPE lfa1-ort01,
          pstlz TYPE lfa1-pstlz,
          opbal TYPE bsik-dmbtr,
          clbal TYPE bsik-dmbtr,
        END OF op_bal1.


DATA : it_bsak1           TYPE TABLE OF str_bsik1,
       wa_bsak1           TYPE str_bsik1,
       it_bsik1           TYPE TABLE OF str_bsik1,
       wa_bsik1           TYPE str_bsik1,
       w_bsik1            TYPE str_bsik1,
       it_bkpf1           TYPE TABLE OF str_bkpf1,
       wa_bkpf1           TYPE str_bkpf1,
       it_bseg1           TYPE TABLE OF str_bseg1,
       wa_bseg1           TYPE str_bseg1,
       it_bsegccpc1       TYPE TABLE OF str_bseg1,
       wa_bsegccpc1       TYPE str_bseg1,
       it_bsegasset1      TYPE TABLE OF str_bseg1,
       wa_bsegasset1      TYPE str_bseg1,
       it_bsegac1         TYPE TABLE OF str_bseg1,
       wa_bsegac1         TYPE str_bseg1,
       it_skat1           TYPE TABLE OF str_skat1,
       wa_skat1           TYPE str_skat1,
       it_lfa1            TYPE TABLE OF str_lfa1,
       wa_lfa1            TYPE str_lfa1,
       it_payr1           TYPE TABLE OF str_payr1,
       wa_payr1           TYPE str_payr1,
       it_anla1           TYPE TABLE OF str_anla1,
       wa_anla1           TYPE str_anla1,
       it_cskt1           TYPE TABLE OF str_cskt1,
       wa_cskt1           TYPE str_cskt1,
       it_cepct1          TYPE TABLE OF str_cepct1,
       wa_cepct1          TYPE str_cepct1,
       it_vendorbal1      TYPE TABLE OF zin1_vendorbal,
       it_vendorbal1_copy TYPE TABLE OF zin1_vendorbal,
       wa_vendorbal1      TYPE zin1_vendorbal,
       it_final1          TYPE TABLE OF zin1_vendor_ledger,
       it_final1_copy     TYPE TABLE OF zin1_vendor_ledger,
       wa_final1          TYPE zin1_vendor_ledger.

DATA : rate     TYPE tcurr-ukurs,
       v_amount TYPE bseg-wrbtr, "bsik-dmbtr.
       deb_amt  TYPE bseg-wrbtr. "bsik-dmbtr.
DATA : t_rate    TYPE  tcurr-ukurs,
       t_amount  TYPE  bseg-wrbtr,
       vend_bal  TYPE  bseg-wrbtr,
       ven_bal   TYPE  bseg-wrbtr,
       ven_bal1  TYPE  bseg-wrbtr,
       cust_bal  TYPE  bseg-wrbtr, ",t_amount,.
       cl_rate   TYPE tcurr-ukurs,
       cl_amount TYPE  bseg-wrbtr, "cl_rate,cl_amount,cl_bal.
       cl_bal    TYPE bseg-wrbtr,
       n         TYPE i.

DATA :"pdf_tab       LIKE tline OCCURS 0 WITH HEADER LINE,
  w_pdftab  LIKE LINE OF pdf_tab,
  "tab_otf_final TYPE itcoo OCCURS 0 WITH HEADER LINE,
  "file_size     TYPE i,
  "bin_filesize  TYPE i,
  "file_name     TYPE string,
  file_path TYPE string.
"full_path     TYPE string.
DATA: txt_customer_name TYPE string.



DATA: document_data LIKE  sodocchgi1.
DATA: gs_docdata TYPE sodocchgi1, " Data of an object which can be changed
      gs_ctrlop  TYPE ssfctrlop,   " Smart Forms: Control structure
      gs_outopt  TYPE ssfcompop,   " SAP Smart Forms: Smart Composer (transfer) options
      gs_otfdata TYPE ssfcrescl,  " Smart Forms: Return value at end of form printing
      gs_reclist TYPE somlreci1,  " SAPoffice: Structure of the API Recipient List
      gs_pdf_tab TYPE tline,      " Workarea for SAP Script Text Lines
      gs_objpack TYPE sopcklsti1. " SAPoffice: Description of Imported Object Components

DATA: gv_tab_lines TYPE i.

DATA: gv_pos TYPE i,
      gv_len TYPE i.

DATA: it_message TYPE solisti1 OCCURS 10 WITH HEADER LINE.
DATA: lv_message(100) TYPE c.
*  DATA: TAB_LINES LIKE SY-TABIX.
*  DATA: TAB_LINES type.
DATA : tab_lines TYPE i.
DATA: it_packing_list   TYPE TABLE OF sopcklsti1 WITH HEADER LINE,
      it_receivers      TYPE TABLE OF somlreci1 WITH HEADER LINE,
      it_solix          TYPE STANDARD TABLE OF solix,
      ld_sender_address LIKE soextreci1-receiver,
      ld_sender_addrty  LIKE soextreci1-adr_typ,
      wa_solix          TYPE solisti1.

DATA: gt_objbin LIKE solisti1 OCCURS 0 WITH HEADER LINE,
      gs_objbin TYPE solisti1.

DATA: binfilesize TYPE i,
      binfile     TYPE xstring.

DATA : st_job_output_options   TYPE ssfcresop,
       st_document_output_info TYPE ssfcrespd.

*DATA : lv_text TYPE string.   "VE

DATA:
  lv_obj        TYPE balobj_d,
  ls_header     TYPE balhdri,
  lv_log_handle TYPE balloghndl,
  lv_log_number TYPE balognr,
  lt_lognum     TYPE TABLE OF balnri,
  ls_lognum     TYPE balnri.



*-------------------------------------------------------*
* Declerations for SLG1 logs
*-------------------------------------------------------*

DATA :
  gt_msg TYPE balmi_tab,
  gs_msg TYPE balmi.

" General Ledger: With final balance for posting
TYPES :
  BEGIN OF t_message,
    msg_typ TYPE char4 ,                              " Message type
    msg_txt TYPE bapiret2-message ,                   " Message text
  END OF t_message.
*-------------------------------------------------------*
* Declerations to display messages in foreground
*-------------------------------------------------------*
DATA:
  gt_message TYPE TABLE OF t_message,
  gs_message TYPE t_message.
*-------------------------------------------------------*



*&---------------------------------------------------------------------*
*&      FORM  GET_DATA
*&---------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
*FORM SELECT_DATA1.
*IF vend IS NOT INITIAL AND custno-low IS NOT INITIAL.
*  MESSAGE 'Please Select Correct Radio Button' TYPE 'E'.
*ENDIF.

DATA : it_keybalance1 TYPE STANDARD TABLE OF bapi3008_3,
       wa_keybalance1 TYPE bapi3008_3,
       key_date       TYPE datum.


SELECT bukrs
       lifnr
       umsks
       umskz
       augdt
       augbl
       zuonr
       gjahr
       belnr
       buzei
       budat
       bldat
       xblnr
       blart
       bschl
       shkzg
       gsber
       dmbtr
       wrbtr
       sgtxt
       hkont
       zfbdt
       kostl
       prctr
       bupla
       secco
  FROM bsik
  INTO TABLE it_bsik1
  WHERE bukrs EQ compcode
    AND waers EQ currency
    AND lifnr IN vendorno
    AND budat LE postdate
    AND prctr IN procent.

SELECT bukrs
       lifnr
       umsks
       umskz
       augdt
       augbl
       zuonr
       gjahr
       belnr
       buzei
       budat
       bldat
       xblnr
       blart
       bschl
       shkzg
       gsber
       dmbtr
       wrbtr
       sgtxt
       hkont
       zfbdt
       kostl
       prctr
       bupla
       secco
  FROM bsak
  INTO TABLE it_bsak1
  WHERE bukrs EQ compcode
    AND waers EQ currency
    AND lifnr IN vendorno
    AND budat LE postdate
   AND  augdt > postdate
    AND prctr IN procent.

LOOP AT it_bsak1 INTO wa_bsak1 WHERE blart = 'AB'.
  SELECT SUM( dmbtr ) FROM bsak INTO cr_chk WHERE belnr = wa_bsak1-belnr AND lifnr = wa_bsak1-lifnr AND shkzg = 'H'.
  SELECT SUM( dmbtr ) FROM bsak INTO dr_chk WHERE belnr = wa_bsak1-belnr AND lifnr = wa_bsak1-lifnr AND shkzg = 'S'.
  IF cr_chk = dr_chk AND wa_bsak1-belnr = wa_bsak1-augbl.
    DELETE it_bsak1 WHERE belnr = wa_bsak1-belnr AND lifnr = wa_bsak1-lifnr.
  ENDIF.
ENDLOOP.

APPEND LINES OF it_bsak1 TO it_bsik1.
SORT it_bsik1 ASCENDING BY lifnr budat belnr.

IF NOT it_bsik1 IS INITIAL.
  SELECT bukrs belnr gjahr bktxt FROM bkpf INTO TABLE it_bkpf1 FOR ALL ENTRIES IN it_bsik1
    WHERE bukrs = it_bsik1-bukrs AND belnr = it_bsik1-belnr AND gjahr = it_bsik1-gjahr.

  SELECT bukrs belnr gjahr buzei dmbtr kostl anln1 anln2 hkont kunnr lifnr prctr FROM bseg INTO TABLE it_bseg1 FOR ALL ENTRIES IN it_bsik1
    WHERE bukrs = it_bsik1-bukrs AND belnr = it_bsik1-belnr AND gjahr = it_bsik1-gjahr. "#EC CI_NOORDER

  APPEND LINES OF it_bseg1 TO it_bsegccpc1.
  DELETE it_bsegccpc1 WHERE kostl = '' AND prctr = ''.
  APPEND LINES OF it_bseg1 TO it_bsegasset1.
  DELETE it_bsegasset1 WHERE anln1 = ''.
  APPEND LINES OF it_bseg1 TO it_bsegac1.
  DELETE it_bsegac1 WHERE lifnr <> ''.
  SORT it_bsegac1 DESCENDING BY belnr dmbtr.
  DELETE ADJACENT DUPLICATES FROM it_bsegac1 COMPARING belnr.

  SELECT spras ktopl saknr txt20 txt50 FROM skat INTO TABLE it_skat1 FOR ALL ENTRIES IN it_bseg1
    WHERE  spras = 'E' AND ktopl = compcode AND saknr = it_bseg1-hkont.

  SELECT lifnr name1 ort01 ort02 pstlz stras land1 regio telf1 telf2 adrnr FROM lfa1 INTO CORRESPONDING FIELDS OF "#EC CI_NO_TRANSFORM
    TABLE it_lfa1 FOR ALL ENTRIES IN it_bsik1
    WHERE lifnr = it_bsik1-lifnr.
  IF it_lfa1 IS NOT INITIAL.
    SELECT  addrnumber                             "#EC CI_NO_TRANSFORM
       str_suppl1
       str_suppl2
       str_suppl3
       street
       house_num1
       location FROM adrc INTO TABLE it_adrc
 FOR ALL ENTRIES IN it_lfa1
  WHERE addrnumber = it_lfa1-adrnr.


    SELECT spras land1 landx FROM t005t INTO TABLE it_t005t FOR ALL ENTRIES IN it_lfa1 "CI_FAE_LINES_ENSURED
      WHERE land1 = it_lfa1-land1 AND spras = 'EN'.

    SELECT spras bland bezei FROM t005u INTO TABLE it_t005u FOR ALL ENTRIES IN it_lfa1 "CI_FAE_LINES_ENSURED
      WHERE  bland = it_lfa1-regio AND land1 = it_lfa1-land1 AND spras = 'EN'.

  ENDIF.



  SELECT zbukr chect vblnr gjahr FROM payr INTO TABLE it_payr1 FOR ALL ENTRIES IN it_bsik1 "CI_FAE_LINES_ENSURED
      WHERE zbukr = it_bsik1-bukrs AND vblnr = it_bsik1-belnr AND gjahr = it_bsik1-gjahr.

  SELECT spras kokrs kostl ktext ltext FROM cskt INTO TABLE it_cskt1 FOR ALL ENTRIES IN it_bsik1 "CI_FAE_LINES_ENSURED
    WHERE spras = 'E' AND kokrs = compcode AND kostl = it_bsik1-kostl.


  SELECT spras prctr kokrs ktext ltext FROM cepct INTO TABLE it_cepct1 FOR ALL ENTRIES IN it_bsik1 "CI_FAE_LINES_ENSURED
    WHERE spras = 'E' AND kokrs = compcode AND prctr = it_bsik1-prctr.

  IF it_bsegasset1 IS NOT INITIAL.
    SELECT bukrs anln1 anln2 txt50 FROM anla INTO TABLE it_anla1 FOR ALL ENTRIES IN it_bsegasset1 "CI_FAE_LINES_ENSURED
  WHERE bukrs = it_bsegasset1-bukrs AND anln1 = it_bsegasset1-anln1 AND anln2 = it_bsegasset1-anln2.

  ENDIF.



  IF it_bsegccpc1  IS NOT INITIAL.
    SELECT spras kokrs kostl ktext ltext FROM cskt APPENDING TABLE it_cskt1 FOR ALL ENTRIES IN it_bsegccpc1 "CI_FAE_LINES_ENSURED
        WHERE spras = 'E' AND kokrs = compcode AND kostl = it_bsegccpc1-kostl.


    SELECT spras prctr kokrs ktext ltext FROM cepct APPENDING TABLE it_cepct1 FOR ALL ENTRIES IN it_bsegccpc1 "CI_FAE_LINES_ENSURED
      WHERE spras = 'E' AND kokrs = compcode AND prctr = it_bsegccpc1-prctr.
  ENDIF.

ENDIF.

*  key_date  = '01042017'."postdate-low - 1.
*  IF postdate-high IS INITIAL.
*    postdate-high = postdate-low.
*  ENDIF.
CLEAR wa_vendorbal1.
LOOP AT it_lfa1 INTO wa_lfa1.
  wa_vendorbal1-lifnr = wa_lfa1-lifnr.
  wa_vendorbal1-name1 = wa_lfa1-name1.
  wa_vendorbal1-stras = wa_lfa1-stras.
  wa_vendorbal1-ort01 = wa_lfa1-ort01.
  wa_vendorbal1-ort02 = wa_lfa1-ort02.
  wa_vendorbal1-pstlz = wa_lfa1-pstlz.
  wa_vendorbal1-telf1 = wa_lfa1-telf1.
  wa_vendorbal1-telf2 = wa_lfa1-telf2.
  READ TABLE it_adrc INTO ls_adrc WITH KEY addrnumber = wa_lfa1-adrnr.
  wa_vendorbal1-str_suppl1 = ls_adrc-str_suppl1.
  wa_vendorbal1-str_suppl2 = ls_adrc-str_suppl2.
  wa_vendorbal1-str_suppl3 = ls_adrc-str_suppl3.
  wa_vendorbal1-street = ls_adrc-street.
  wa_vendorbal1-house_num1 = ls_adrc-house_num1.
  wa_vendorbal1-location = ls_adrc-location.

  READ TABLE it_t005t INTO wa_t005t WITH KEY land1 = wa_lfa1-land1.
  wa_vendorbal1-landx = wa_t005t-landx.

  READ TABLE it_t005u INTO wa_t005u WITH KEY bland = wa_lfa1-regio.
  wa_vendorbal1-bezei = wa_t005u-bezei.

  CALL FUNCTION 'BAPI_AP_ACC_GETKEYDATEBALANCE'
    EXPORTING
      companycode  = compcode
      vendor       = wa_lfa1-lifnr
      keydate      = key_date
      balancespgli = abap_true
      noteditems   = abap_true
    TABLES
      keybalance   = it_keybalance1.

  LOOP AT it_keybalance1 INTO wa_keybalance1." WHERE WA_KEYBALANCE1-CURRENCY = CURRENCY.
    IF currency = wa_keybalance1-currency AND wa_keybalance1-sp_gl_ind NE 'F'.
      wa_vendorbal1-opbal = wa_vendorbal1-opbal + wa_keybalance1-lc_bal.
    ENDIF.
  ENDLOOP.
***************************************************
  IF currency EQ 'EUR' OR currency EQ 'USD'.
    CLEAR : w_bsik1,n.

    READ TABLE it_bsik1 INTO w_bsik1 WITH KEY lifnr = wa_vendorbal1-lifnr.
    DESCRIBE TABLE it_bsik1 LINES n.
    CLEAR w_bsik1.
    READ TABLE it_bsik1 INTO w_bsik1 INDEX n.

    CLEAR : cl_rate,cl_amount,cl_bal.
    SELECT SINGLE kursf FROM bkpf INTO cl_rate WHERE
        bukrs = w_bsik1-bukrs AND belnr = w_bsik1-belnr AND gjahr = w_bsik1-gjahr.

    CALL FUNCTION 'CONVERT_CURRENCY_BY_RATE'
      EXPORTING
        from_amount   = wa_vendorbal1-opbal
        from_currency = 'INR'
        from_factor   = '1'
        rate          = cl_rate
        to_currency   = currency
        to_factor     = '1'
      IMPORTING
        to_amount     = cl_amount
*        EXCEPTIONS
*       NO_RATE_FOUND = 1
*       OTHERS        = 2
      .

*****      cl_bal = cl_AMOUNT * 10.
    cl_bal = cl_amount.
    wa_vendorbal1-opbal = cl_bal.

    wa_vendorbal1-clbal = wa_vendorbal1-opbal.

  ELSE.
    wa_vendorbal1-clbal = wa_vendorbal1-opbal.
  ENDIF.

***************************************************

*    wa_vendorbal1-clbal = wa_vendorbal1-opbal.
*    wa_vendorbal1-opdate = postdate-low.
*    wa_vendorbal1-cldate = postdate-high.
  wa_vendorbal1-cldate = postdate.
  APPEND wa_vendorbal1 TO it_vendorbal1.
  CLEAR: wa_vendorbal1, it_keybalance1, wa_lfa1.
ENDLOOP.

LOOP AT it_bsik1 INTO wa_bsik1.
  wa_final1-bukrs = wa_bsik1-bukrs.
  wa_final1-lifnr = wa_bsik1-lifnr.
  wa_final1-umsks = wa_bsik1-umsks.
  wa_final1-umskz = wa_bsik1-umskz.
  wa_final1-augdt = wa_bsik1-augdt.
  wa_final1-augbl = wa_bsik1-augbl.
  wa_final1-gjahr = wa_bsik1-gjahr.
  wa_final1-belnr = wa_bsik1-belnr.
  wa_final1-buzei = wa_bsik1-buzei.
  wa_final1-budat = wa_bsik1-budat.
  wa_final1-bldat = wa_bsik1-bldat.
  wa_final1-xblnr = wa_bsik1-xblnr.
  wa_final1-blart = wa_bsik1-blart.
  wa_final1-bschl = wa_bsik1-bschl.
  wa_final1-shkzg = wa_bsik1-shkzg.
  wa_final1-gsber = wa_bsik1-gsber.
  wa_final1-hkont = wa_bsik1-hkont.
  wa_final1-zfbdt = wa_bsik1-zfbdt.
  wa_final1-kostl = wa_bsik1-kostl.
  wa_final1-prctr = wa_bsik1-prctr.
  wa_final1-bupla = wa_bsik1-bupla.
  wa_final1-secco = wa_bsik1-secco.

  CALL FUNCTION 'FI_CONVERT_FIRSTCHARS_TOUPPER'
    EXPORTING
      input_string  = wa_bsik1-sgtxt
      separators    = ' -.,'
    IMPORTING
      output_string = wa_final1-sgtxt.

  CALL FUNCTION 'FI_CONVERT_FIRSTCHARS_TOUPPER'
    EXPORTING
      input_string  = wa_bsik1-zuonr
      separators    = ' -.,'
    IMPORTING
      output_string = wa_final1-zuonr.

  IF wa_final1-shkzg = 'S'.
*      wa_final1-debit = wa_bsik1-dmbtr.
    IF currency EQ 'USD' OR currency EQ 'EUR'.
      CLEAR : rate,v_amount,deb_amt.
*      SELECT SINGLE UKURS FROM TCURR INTO RATE WHERE FCURR = 'INR' AND KURST = 'M' AND TCURR = CURRENCY.
*        RATE = RATE * -1.
      SELECT SINGLE kursf FROM bkpf INTO rate WHERE
          bukrs = wa_bsik1-bukrs AND belnr = wa_bsik1-belnr AND gjahr = wa_bsik1-gjahr.

*****      DEB_AMT = V_AMOUNT * 10.
      deb_amt = v_amount.
**      wa_final1-debit = DEB_AMT.
      wa_final1-debit = wa_bsik1-wrbtr.
    ELSE.
**      wa_final1-debit = wa_bsik1-dmbtr.
      wa_final1-debit = wa_bsik1-wrbtr.
    ENDIF.

    READ TABLE it_vendorbal1 INTO wa_vendorbal1 WITH KEY lifnr = wa_final1-lifnr.
*      wa_vendorbal1-clbal = wa_vendorbal1-clbal + wa_bsik1-dmbtr.
    """"""""""""""""""""""""""""""""""""""""""""""""""
*       READ TABLE it_final INTO WA_TEMP INDEX 1.
    IF currency EQ 'USD' OR currency EQ 'EUR'.
      CLEAR : t_rate,t_amount,vend_bal.
      SELECT SINGLE kursf FROM bkpf INTO t_rate WHERE
      bukrs = wa_bsik1-bukrs AND belnr = wa_bsik1-belnr AND gjahr = wa_bsik1-gjahr.
*     T_RATE = T_RATE * -1.
      CALL FUNCTION 'CONVERT_CURRENCY_BY_RATE'
        EXPORTING
          from_amount   = wa_bsik1-dmbtr
          from_currency = 'INR'
          from_factor   = '1'
          rate          = t_rate
          to_currency   = currency
          to_factor     = '1'
        IMPORTING
          to_amount     = t_amount
*        EXCEPTIONS
*         NO_RATE_FOUND = 1
*         OTHERS        = 2
        .

*****      VEND_BAL = T_amount * 10.
      vend_bal = t_amount.
**       wa_vendorbal1-clbal = wa_vendorbal1-clbal + VEND_BAL.
      wa_vendorbal1-clbal = wa_vendorbal1-clbal + wa_bsik1-wrbtr.
      MODIFY it_vendorbal1 FROM wa_vendorbal1 TRANSPORTING clbal WHERE lifnr = wa_final1-lifnr.

    ELSE.
**      wa_vendorbal1-clbal = wa_vendorbal1-clbal + wa_bsik1-dmbtr.
      wa_vendorbal1-clbal = wa_vendorbal1-clbal + wa_bsik1-wrbtr.
      MODIFY it_vendorbal1 FROM wa_vendorbal1 TRANSPORTING clbal WHERE lifnr = wa_final1-lifnr.
    ENDIF.
    """""""""""""""""""""""""""""""""""""""""""""""""""""
  ELSE.
*      wa_final1-credit = wa_bsik1-dmbtr.
    IF currency EQ 'USD' OR currency EQ 'EUR'.
      CLEAR : rate,v_amount,deb_amt.
*      SELECT SINGLE UKURS FROM TCURR INTO RATE WHERE FCURR = 'INR' AND KURST = 'M' AND TCURR = CURRENCY.
*        RATE = RATE * -1.
      SELECT SINGLE kursf FROM bkpf INTO rate WHERE
              bukrs = wa_bsik1-bukrs AND belnr = wa_bsik1-belnr AND gjahr = wa_bsik1-gjahr.

*****      DEB_AMT = V_AMOUNT * 10.
      deb_amt = v_amount.
*      wa_final1-credit = DEB_AMT.
      wa_final1-credit = wa_bsik1-wrbtr.
**      wa_final1-debit = DEB_AMT  * -1.
      wa_final1-debit = wa_bsik1-wrbtr  * -1.
    ELSE.
      wa_final1-credit = wa_bsik1-dmbtr.
**      wa_final1-debit = wa_bsik1-dmbtr * -1.
      wa_final1-debit = wa_bsik1-wrbtr * -1.
    ENDIF.

    READ TABLE it_vendorbal1 INTO wa_vendorbal1 WITH KEY lifnr = wa_final1-lifnr.
*      wa_vendorbal1-clbal = wa_vendorbal1-clbal - wa_bsik1-dmbtr.
    """""""""""""""""""""""""""""""""""""

    IF currency EQ 'USD' OR currency EQ 'EUR'.
      CLEAR : t_rate,t_amount,vend_bal.
      SELECT SINGLE kursf FROM bkpf INTO t_rate WHERE
      bukrs = wa_bsik1-bukrs AND belnr = wa_bsik1-belnr AND gjahr = wa_bsik1-gjahr.
*     T_RATE = T_RATE * -1.
      CALL FUNCTION 'CONVERT_CURRENCY_BY_RATE'
        EXPORTING
          from_amount   = wa_bsik1-dmbtr
          from_currency = 'INR'
          from_factor   = '1'
          rate          = t_rate
          to_currency   = currency
          to_factor     = '1'
        IMPORTING
          to_amount     = t_amount
*        EXCEPTIONS
*         NO_RATE_FOUND = 1
*         OTHERS        = 2
        .

*****     VEND_BAL = T_amount * 10.
      vend_bal = t_amount.
**          wa_vendorbal1-clbal = wa_vendorbal1-clbal - VEND_BAL.
      wa_vendorbal1-clbal = wa_vendorbal1-clbal - wa_bsik1-wrbtr.
      MODIFY it_vendorbal1 FROM wa_vendorbal1 TRANSPORTING clbal WHERE lifnr = wa_final1-lifnr.
    ELSE.
**      wa_vendorbal1-clbal = wa_vendorbal1-clbal - wa_bsik1-dmbtr.
      wa_vendorbal1-clbal = wa_vendorbal1-clbal - wa_bsik1-wrbtr.
      MODIFY it_vendorbal1 FROM wa_vendorbal1 TRANSPORTING clbal WHERE lifnr = wa_final1-lifnr.
    ENDIF.

    """"""""""""""""""""""""""""""""""""""
*      MODIFY it_vendorbal1 FROM wa_vendorbal1 TRANSPORTING clbal WHERE lifnr = wa_final1-lifnr.
  ENDIF.

  READ TABLE it_bsegccpc1 INTO wa_bsegccpc1 WITH KEY bukrs = wa_final1-bukrs belnr = wa_final1-belnr gjahr = wa_final1-gjahr.
  IF wa_final1-kostl IS INITIAL AND wa_bsegccpc1 IS NOT INITIAL.
    wa_final1-kostl = wa_bsegccpc1-kostl.
  ENDIF.
  IF wa_final1-prctr IS INITIAL AND wa_bsegccpc1 IS NOT INITIAL.
    wa_final1-prctr = wa_bsegccpc1-prctr.
  ENDIF.

  READ TABLE it_bsegasset1 INTO wa_bsegasset1 WITH KEY bukrs = wa_final1-bukrs belnr = wa_final1-belnr gjahr = wa_final1-gjahr.
  wa_final1-anln1 = wa_bsegasset1-anln1.
  wa_final1-anln2 = wa_bsegasset1-anln2.
  wa_vendorbal1-gjahr = wa_bsegccpc1-gjahr.

  MODIFY it_vendorbal1 FROM wa_vendorbal1 TRANSPORTING gjahr WHERE lifnr = wa_final1-lifnr.

  IF wa_final1-lifnr IS NOT INITIAL.
    READ TABLE it_bsegac1 INTO wa_bsegac1 WITH KEY bukrs = wa_final1-bukrs belnr = wa_final1-belnr gjahr = wa_final1-gjahr.
    wa_final1-saknr = wa_bsegac1-hkont.
    READ TABLE it_skat1 INTO wa_skat1 WITH KEY saknr = wa_final1-saknr.
    wa_final1-glt20 = wa_skat1-txt20.
    wa_final1-glt50 = wa_skat1-txt50.
    CLEAR wa_skat1.
  ENDIF.

  READ TABLE it_bkpf1 INTO wa_bkpf1 WITH KEY bukrs = wa_final1-bukrs belnr = wa_final1-belnr gjahr = wa_final1-gjahr.
  CALL FUNCTION 'FI_CONVERT_FIRSTCHARS_TOUPPER'
    EXPORTING
      input_string  = wa_bkpf1-bktxt
      separators    = ' -.,'
    IMPORTING
      output_string = wa_final1-bktxt.

  READ TABLE it_skat1 INTO wa_skat1 WITH KEY saknr = wa_final1-hkont.
  wa_final1-txt20 = wa_skat1-txt20.
  wa_final1-txt50 = wa_skat1-txt50.

  READ TABLE it_lfa1 INTO wa_lfa1 WITH KEY lifnr = wa_final1-lifnr.
  wa_final1-name1 = wa_lfa1-name1.
  wa_final1-ort02 = wa_lfa1-ort02.

  READ TABLE it_anla1 INTO wa_anla1 WITH KEY bukrs = wa_final1-bukrs anln1 = wa_final1-anln1 anln2 = wa_final1-anln2.
  wa_final1-aname = wa_anla1-txt50.

  READ TABLE it_payr1 INTO wa_payr1 WITH KEY zbukr = wa_final1-bukrs vblnr = wa_final1-belnr gjahr = wa_final1-gjahr.
  wa_final1-chect = wa_payr1-chect.

  READ TABLE it_cskt1 INTO wa_cskt1 WITH KEY kostl = wa_final1-kostl.
  wa_final1-cname = wa_cskt1-ktext.

  READ TABLE it_cepct1 INTO wa_cepct1 WITH KEY prctr = wa_final1-prctr.
  wa_final1-pname = wa_cepct1-ktext.

  APPEND wa_final1 TO it_final1.

  CLEAR : wa_final1, wa_bsik1, wa_bkpf1, wa_bseg1, wa_bsegasset1, wa_bsegccpc1, wa_anla1, wa_lfa1, wa_skat1, wa_payr1, wa_cskt1, wa_cepct1 ,wa_vendorbal1.
ENDLOOP.

SORT it_final1 ASCENDING BY lifnr budat belnr.

*ENDFORM.                    "GET_DATA

*&---------------------------------------------------------------------*
*&      FORM  DISPLAY
*&---------------------------------------------------------------------*
*       TEXT
*----------------------------------------------------------------------*
*FORM DISPLAY.
*data : nast-spras type sy-langu value 'DE'.
*IF it_vendorbal1 IS NOT INITIAL.

DATA : lwa_param       TYPE sfpoutputparams,
       lv_doc_params   TYPE sfpdocparams,
       ls_form_output  TYPE fpformoutput,
*         currency       TYPE bsid-waers,
       lv_funcname1     TYPE funcname,
       lv_xstring      TYPE xstring,
       lv_bin_filesize TYPE i,
       lt_pdf_content  TYPE solix_tab,
       wa_packing_list TYPE sopcklsti1,
       lt_packing_list TYPE STANDARD TABLE OF sopcklsti1.
*       lt_bcs_pdf      TYPE   solix_tab.

CALL FUNCTION 'FP_JOB_OPEN'
  CHANGING
    ie_outputparams = lwa_param
  EXCEPTIONS
    cancel          = 1
    usage_error     = 2
    system_error    = 3
    internal_error  = 4
    OTHERS          = 5.
IF sy-subrc <> 0.
* Implement suitable error handling here
ENDIF.

CALL FUNCTION 'FP_FUNCTION_MODULE_NAME'
  EXPORTING
    i_name     = 'ZIN1_ACCOUNT_STATEMENT_VENDOR'
  IMPORTING
    e_funcname = lv_funcname1
*   E_INTERFACE_TYPE           =
*   EV_FUNCNAME_INBOUND        =
  .





IF chkb = 'X'.
*--------------------------------------------------------------------*
  LOOP AT vendorno INTO DATA(wa_vend).
    LOOP AT it_vendorbal1 INTO wa_vendorbal1 WHERE lifnr = wa_vend-low.
      IF sy-subrc EQ 0 .
        REFRESH : it_final1_copy[], it_vendorbal1_copy[].
        CLEAR : tab_otf_data.
        APPEND wa_vendorbal1 TO it_vendorbal1_copy.
        LOOP AT it_final1 INTO wa_final1 WHERE lifnr = wa_vendorbal1-lifnr.
          APPEND wa_final1 TO it_final1_copy.
          CLEAR wa_final1.
        ENDLOOP.
*--------------------------------------------------------------------*
         CLEAR: LV_DOC_PARAMS, CPARAM.
        cparam-no_dialog = 'X'.
        cparam-getotf = 'X'.



        CALL FUNCTION lv_funcname1    "'/1BCDWB/SM00000122'
          EXPORTING
            /1bcdwb/docparams  = lv_doc_params
            it_final           = it_final1_copy
            it_vendorbal       = it_vendorbal1_copy
            currency           = currency
          IMPORTING
            /1bcdwb/formoutput = ls_form_output
          EXCEPTIONS
            usage_error        = 1
            system_error       = 2
            internal_error     = 3
            OTHERS             = 4.
        IF sy-subrc <> 0.
* Implement suitable error handling here
        ENDIF.



*        CALL FUNCTION 'FP_JOB_CLOSE'
** IMPORTING
**   E_RESULT             =
*          EXCEPTIONS
*            usage_error    = 1
*            system_error   = 2
*            internal_error = 3
*            OTHERS         = 4.
*        IF sy-subrc <> 0.
** Implement suitable error handling here
*        ENDIF.

        lv_xstring = ls_form_output-pdf.

        CALL FUNCTION 'SCMS_XSTRING_TO_BINARY'
          EXPORTING
            buffer          = lv_xstring
            append_to_table = ' '
          IMPORTING
            output_length   = lv_bin_filesize
          TABLES
            binary_tab      = lt_bcs_pdf.




        REFRESH: i_reclist,
        i_objtxt,
        i_objbin,
        i_objpack.
        CLEAR : wa_objhead ,date,subject,subject.
        i_objbin[] = i_record[].
** CREATE MESSAGE BODY TITLE AND DESCRIPTION
*        i_objtxt = 'Dear Sir/Madam,'.
*        APPEND i_objtxt.
*
*        i_objtxt = ' '.
*        APPEND i_objtxt.

************ DH 14.09.22
        CALL FUNCTION 'CONVERSION_EXIT_IDATE_OUTPUT'
          EXPORTING
            input  = postdate
          IMPORTING
            output = postdate1.


*    CONCATENATE postdate '2' INTO postdate1.


        CONCATENATE 'Please find attached PDF copy of Balance Confirmation as on' postdate1 '.' INTO lv_text SEPARATED BY space.

        i_objtxt = lv_text.
        APPEND i_objtxt.
**********

*  i_objtxt = 'Please find the attached PDF copy of Balance Confirmation as on 31 st March 2022.'.
*  APPEND i_objtxt.

*        i_objtxt = ' '.
*        APPEND i_objtxt.
*
*        i_objtxt = ' '.
*        APPEND i_objtxt.
*
*        i_objtxt = 'Thanks & Regards,'.
*        APPEND i_objtxt.
*
*        i_objtxt = 'DELVAL Flow Controls Pvt Ltd'.
*        APPEND i_objtxt.

        DESCRIBE TABLE i_objtxt LINES v_lines_txt.
        READ TABLE i_objtxt INDEX v_lines_txt.
        wa_doc_chng-obj_name = 'SMARTFORM'.
        wa_doc_chng-expiry_dat = sy-datum + 0.
        wa_doc_chng-obj_descr = 'Balance Confirmation'.  "subject . "'CHECK LETTER'.
        wa_doc_chng-sensitivty = 'F'.
        wa_doc_chng-doc_size = v_lines_txt * 255.
* MAIN TEXT
        CLEAR i_objpack-transf_bin.
        i_objpack-head_start = 1.
        i_objpack-head_num = 0.
        i_objpack-body_start = 1.
        i_objpack-body_num = v_lines_txt.
        i_objpack-doc_type = 'RAW'.
        APPEND i_objpack.
* ATTACHMENT (PDF-ATTACHMENT)
        i_objpack-transf_bin = 'X'.
        i_objpack-head_start = 1.
        i_objpack-head_num = 0.
        i_objpack-body_start = 1.
        DESCRIBE TABLE i_objbin LINES v_lines_bin.
        READ TABLE i_objbin INDEX v_lines_bin.
        i_objpack-doc_size = v_lines_bin * 255 .
        i_objpack-body_num = v_lines_bin.
        i_objpack-doc_type = 'PDF'.
        i_objpack-obj_name = 'SMART'.
        i_objpack-obj_descr = attach . "'TEST'.
        APPEND i_objpack.

        CLEAR i_reclist.

        SELECT SINGLE adrnr
                      FROM lfa1
                      INTO lv_adrnr
                      WHERE lifnr = wa_vendorbal1-lifnr."vendorno-low.

        SELECT SINGLE smtp_addr
                      FROM adr6
                      INTO lv_smtp_addr
                      WHERE addrnumber = lv_adrnr.
        IF lv_smtp_addr IS NOT INITIAL.
          i_reclist-receiver = lv_smtp_addr.  "'rprabhudesai@delvalflow.com'. "'diksha.halve@primustechsys.com'. "'rprabhudesai@delvalflow.com'.   "'diksha.halve@primustechsys.com'.
          "lv_smtp_addr."w_adr6-smtp_addr."'RAJENDRA.PATHAK@COOPERCORP.IN'.
          i_reclist-rec_type = 'U'.
          APPEND i_reclist.


*        i_reclist-receiver = 'yjoshi@delvalflow.com'.
*        i_reclist-rec_type = 'U'.
*        APPEND i_reclist.
*
*        i_reclist-receiver = 'mkhasbag@delvalflow.com'.
*        i_reclist-rec_type = 'U'.
*        APPEND i_reclist.
*
*        i_reclist-receiver = 'rgaikwad@delvalflow.com'.
*        i_reclist-rec_type = 'U'.
*        APPEND i_reclist.



          i_reclist-receiver = 'pmasal@delvalflow.com'. "'rprabhudesai@delvalflow.com'.
          i_reclist-rec_type = 'U'.
          i_reclist-copy = 'X'.
          APPEND i_reclist.


          i_reclist-receiver = 'mjadhav@delvalflow.com'. "'stathe@delvalflow.com'.
          i_reclist-rec_type = 'U'.
          i_reclist-copy = 'X'.
          APPEND i_reclist.


          "Added By Nilay B. on 21.04.2023
          i_reclist-receiver = 'purchaseindia@delvalflow.com'.
          i_reclist-rec_type = 'U'.
          i_reclist-copy = 'X'.
          APPEND i_reclist.




          DATA lv_sender TYPE so_rec_ext VALUE ' balance.confirmation@delvalflow.com'.

*          WAIT UP TO 2 SECONDS.
*          CALL FUNCTION 'SO_DOCUMENT_SEND_API1'
*            EXPORTING
*              document_data              = wa_doc_chng
*              put_in_outbox              = 'X'
*              sender_address             = lv_sender
*              sender_address_type        = 'INT'
*              commit_work                = 'X'
*            TABLES
*              packing_list               = i_objpack
*              object_header              = wa_objhead
*              contents_bin               = i_objbin
*              contents_txt               = i_objtxt
*              receivers                  = i_reclist
*            EXCEPTIONS
*              too_many_receivers         = 1
*              document_not_sent          = 2
*              document_type_not_exist    = 3
*              operation_no_authorization = 4
*              parameter_error            = 5
*              x_error                    = 6
*              enqueue_error              = 7
*              OTHERS                     = 8.
*
*          IF sy-subrc = 0.
*            MESSAGE 'Mail Send Successfully' TYPE 'S'.
*          ENDIF.

          PERFORM send_mail.     "_ven .

* insert start log message
          gs_msg-msgty = 'S'.
          gs_msg-msgid = 'ZFI_CONF'.
          gs_msg-msgno = '003'.
          gs_msg-msgv1 = wa_vend-low.
          APPEND gs_msg TO gt_msg.
          CLEAR gs_msg.

          CONCATENATE 'Balance confirmation is succesfully, generated mail send to vendor ' wa_vend-low
          INTO gs_message-msg_txt SEPARATED BY space.
          gs_message-msg_typ = '@08@'.
          APPEND gs_message TO gt_message.
          CLEAR gs_message .

        ELSE.
* Insert start log message
          gs_msg-msgty = 'E'.
          gs_msg-msgid = 'ZFI_CONF'.
          gs_msg-msgno = '002'.
          gs_msg-msgv1 = wa_vend-low.
          APPEND gs_msg TO gt_msg.
          CLEAR gs_msg.

          CONCATENATE 'Mail ID does not exist againts vendor ' wa_vend-low
          INTO gs_message-msg_txt SEPARATED BY space.
          gs_message-msg_typ = '@0A@'.
          APPEND gs_message TO gt_message.
          CLEAR gs_message .

        ENDIF.

*--------------------------------------------------------------------*


      ENDIF.
    ENDLOOP..

    IF sy-subrc EQ 4.
* Insert start log message
      gs_msg-msgty = 'E'.
      gs_msg-msgid = 'ZFI_CONF'.
      gs_msg-msgno = '001'.
      gs_msg-msgv1 = wa_vend-low.
      APPEND gs_msg TO gt_msg.
      CLEAR gs_msg.

      CONCATENATE 'Balance does not exits against vendor' wa_vend-low
      INTO gs_message-msg_txt SEPARATED BY space.
      gs_message-msg_typ = '@0A@'.
      APPEND gs_message TO gt_message.
      CLEAR gs_message .
    ENDIF.
  ENDLOOP.

  CALL FUNCTION 'FP_JOB_CLOSE'
* IMPORTING
*   E_RESULT             =
          EXCEPTIONS
            usage_error    = 1
            system_error   = 2
            internal_error = 3
            OTHERS         = 4.
        IF sy-subrc <> 0.
* Implement suitable error handling here
        ENDIF.
*--------------------------------------------------------------------*

ELSE.

  CALL FUNCTION lv_funcname1     "'/1BCDWB/SM00000122'
    EXPORTING
      /1bcdwb/docparams  = lv_doc_params
      it_final           = it_final1
      it_vendorbal       = it_vendorbal1
      currency           = currency
    IMPORTING
      /1bcdwb/formoutput = ls_form_output
    EXCEPTIONS
      usage_error        = 1
      system_error       = 2
      internal_error     = 3
      OTHERS             = 4.
  IF sy-subrc <> 0.
* Implement suitable error handling here
  ENDIF.



  CALL FUNCTION 'FP_JOB_CLOSE'
* IMPORTING
*   E_RESULT             =
    EXCEPTIONS
      usage_error    = 1
      system_error   = 2
      internal_error = 3
      OTHERS         = 4.
  IF sy-subrc <> 0.
* Implement suitable error handling here
  ENDIF.



*    CALL FUNCTION fname
*      EXPORTING
*        currency           = currency
**       ARCHIVE_INDEX      =
**       ARCHIVE_INDEX_TAB  =
**       ARCHIVE_PARAMETERS =
*        control_parameters = cparam
**       MAIL_APPL_OBJ      =
**       MAIL_RECIPIENT     =
**       MAIL_SENDER        =
*        output_options     = outop
**       USER_SETTINGS      = 'X'
**    IMPORTING
**       DOCUMENT_OUTPUT_INFO       =
**       job_output_info    = tab_otf_data
**       JOB_OUTPUT_OPTIONS =
*      TABLES
*        it_final           = it_final1
*        it_vendorbal       = it_vendorbal1
** EXCEPTIONS
**       FORMATTING_ERROR   = 1
**       INTERNAL_ERROR     = 2
**       SEND_ERROR         = 3
**       USER_CANCELED      = 4
**       OTHERS             = 5
*      .
*    IF sy-subrc <> 0.
** MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
**         WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
*    ENDIF.

ENDIF.

IF chkb = 'X'.
*LOG genrated! Please check SLG1 for detailed logs.
  PERFORM slg0_log.
*Dispaly output IN ALV
  PERFORM display_alv.

ENDIF.

REFRESH: i_reclist,
i_objtxt,
i_objbin,
i_objpack.
* ENDIF.
*&---------------------------------------------------------------------*
*& Form send_mail_ven
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
*FORM send_mail_ven .
*
* DATA: lx_document_bcs TYPE REF TO cx_document_bcs VALUE IS INITIAL.
*  CLASS cl_bcs DEFINITION LOAD.
*
*  DATA: lo_send_request TYPE REF TO cl_bcs VALUE IS INITIAL.
*  lo_send_request = cl_bcs=>create_persistent( ).
*
** Message body and subject
*
*  DATA: lt_message_body TYPE bcsy_text VALUE IS INITIAL,
*        lo_document     TYPE REF TO cl_document_bcs VALUE IS INITIAL,
*        wa_body         TYPE soli.
*
*  APPEND 'Dear Sir/Madam,' TO lt_message_body.
*  APPEND ' ' TO lt_message_body.
*
*  wa_body-line = lv_objtxt .
*
*  APPEND wa_body TO lt_message_body .
*
*  APPEND ' ' TO lt_message_body.
*  APPEND ' ' TO lt_message_body.
*
*  APPEND 'Thanks & Regards,' TO lt_message_body.
*  APPEND 'DELVAL Flow Controls Pvt Ltd' TO lt_message_body.
*
*
*
*  lo_document = cl_document_bcs=>create_document(
*    i_type    = 'RAW'
*    i_text    = lt_message_body
*    i_subject = 'Balance Confirmation' ).
*
*
*  TRY.
*
*      lo_document->add_attachment(
*        EXPORTING
*          i_attachment_type    = 'PDF'
*          i_attachment_subject = 'Balance Confirmation'
*          i_att_content_hex    = lt_bcs_pdf ).
*
*    CATCH cx_document_bcs INTO lx_document_bcs.
*
*  ENDTRY.
*  lo_send_request->set_document( lo_document ).
*
*  DATA: lo_sender TYPE REF TO if_sender_bcs VALUE IS INITIAL,
*
*        l_send    TYPE adr6-smtp_addr.
*
*  lo_sender = cl_cam_address_bcs=>create_internet_address( 'balance.confirmation@delvalflow.com' ).
*
**  lo_sender = cl_sapuser_bcs=>create( sy-uname ).
*
** Set sender
*
*  lo_send_request->set_sender(
*    EXPORTING
*      i_sender = lo_sender ).
*
*
*  DATA:
*
*  lo_recipient TYPE REF TO if_recipient_bcs VALUE IS INITIAL.
*
*
*  IF lv_smtp_addr IS NOT INITIAL .
*
*    lo_recipient = cl_cam_address_bcs=>create_internet_address( lv_smtp_addr ).
*
*** Set recipient
*
*    lo_send_request->add_recipient(
*      EXPORTING
*        i_recipient = lo_recipient
*        i_express   = 'X' ).
*
**  lo_send_request->add_recipient(
*
**  EXPORTING
*
**  i_recipient = lo_recipient
*
**  i_express = 'X' ).
*
** Send email
*
*    DATA: lv_sent_to_all(1) TYPE c VALUE IS INITIAL.
*
*    lo_send_request->send(
*      EXPORTING
*        i_with_error_screen = 'X'
*      RECEIVING
*        result              = lv_sent_to_all ).
*
*    COMMIT WORK.
*
*  ENDIF.
*
*ENDFORM.
