
SELECT
 Cn.GROUP_ID,
 Cn.CONTRACT_ID,
 Cn.CONTRACT_NUMBER,
 A=IsNull(
  (SELECT
     SUM(IsNull(C.QNT_ALL,0))
    FROM
     ProCalcs C
    WHERE
     C.DATE_CALC='2004-08-31' AND
     C.CONTRACT_ID=Cn.CONTRACT_ID
  ),0),
 B= IsNull(
  (SELECT
     SUM(IsNull(CD.CALC_QUANTITY,0))
    FROM
     ProCalcs C,
     ProCalcDetails CD
    WHERE
     C.DATE_CALC='2004-08-31' AND
     C.CONTRACT_ID=Cn.CONTRACT_ID AND
     CD.CALC_ID=C.CALC_ID AND
     CD.DECODE_ID<>0 AND
     MEASURE_ID=4
  ),0)
 INTO
  #TmpTab 
 FROM
  ProContracts Cn
-- WHERE
--  Cn.GROUP_ID=10011
 SELECT
    'кВт в ProCalcs'=SUM(IsNull(A,0)),
    'кВт в ProCalcDetails'=SUM(IsNull(B,0)),
    'Разность'=SUM(IsNull(A,0))-SUM(IsNull(B,0))
  FROM 
   #TmpTab

 SELECT
 GROUP_ID,
 CONTRACT_ID,
 CONTRACT_NUMBER,
 'кВт в ProCalcs'=A,
 'кВт в ProCalcDetails'=B
  FROM 
   #TmpTab
  WHERE
   A<>B
ORDER BY
 GROUP_ID,
 CONTRACT_NUMBER

DROP TABLE #TmpTab
