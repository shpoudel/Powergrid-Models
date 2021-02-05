declare -r DB_URL="http://localhost:8889/bigdata/namespace/kb/sparql"
declare -r CIMHUB_PATH="../../CIMHub/target/libs/*:../../CIMHub/target/cimhub-0.0.1-SNAPSHOT.jar"
declare -r CIMHUB_PROG="gov.pnnl.gridappsd.cimhub.CIMImporter"
declare -r CIMHUB_UTILS="../../CIMHub/utils"

#curl -D- -X POST $DB_URL --data-urlencode "update=drop all"

#curl -D- -H "Content-Type: application/xml" --upload-file ./cimxml/ACEP_PSIL.xml -X POST $DB_URL
#curl -D- -H "Content-Type: application/xml" --upload-file ./cimxml/EPRI_DPV_J1.xml -X POST $DB_URL
#curl -D- -H "Content-Type: application/xml" --upload-file ./cimxml/IEEE123.xml -X POST $DB_URL
#curl -D- -H "Content-Type: application/xml" --upload-file ./cimxml/IEEE123_PV.xml -X POST $DB_URL
#curl -D- -H "Content-Type: application/xml" --upload-file ./cimxml/IEEE13.xml -X POST $DB_URL
#curl -D- -H "Content-Type: application/xml" --upload-file ./cimxml/IEEE13_Assets.xml -X POST $DB_URL
#curl -D- -H "Content-Type: application/xml" --upload-file ./cimxml/IEEE37.xml -X POST $DB_URL
#curl -D- -H "Content-Type: application/xml" --upload-file ./cimxml/IEEE8500.xml -X POST $DB_URL
#curl -D- -H "Content-Type: application/xml" --upload-file ./cimxml/IEEE8500_3subs.xml -X POST $DB_URL
#curl -D- -H "Content-Type: application/xml" --upload-file ./cimxml/R2_12_47_2.xml -X POST $DB_URL
#curl -D- -H "Content-Type: application/xml" --upload-file ./cimxml/Transactive.xml -X POST $DB_URL

#java -cp $CIMHUB_PATH $CIMHUB_PROG -u=$DB_URL -o=idx test

#python3 $CIMHUB_UTILS/ListMeasureables.py acep_psil     _77966920-E1EC-EE8A-23EE-4EFD23B205BD Meas
#python3 $CIMHUB_UTILS/ListMeasureables.py eprij1        _67AB291F-DCCD-31B7-B499-338206B9828F Meas
#python3 $CIMHUB_UTILS/ListMeasureables.py ieee13assets  _5B816B93-7A5F-B64C-8460-47C17D6E4B0F Meas
#python3 $CIMHUB_UTILS/ListMeasureables.py ieee13nodeckt _49AD8E07-3BF9-A4E2-CB8F-C3722F837B62 Meas
#python3 $CIMHUB_UTILS/ListMeasureables.py ieee37        _49003F52-A359-C2EA-10C4-F4ED3FD368CC Meas
#python3 $CIMHUB_UTILS/ListMeasureables.py ieee123       _C1C3E687-6FFD-C753-582B-632A27E28507 Meas
#python3 $CIMHUB_UTILS/ListMeasureables.py ieee123pv     _E407CBB6-8C8D-9BC9-589C-AB83FBF0826D Meas
#python3 $CIMHUB_UTILS/ListMeasureables.py ieee8500      _4F76A5F9-271D-9EB8-5E31-AA362D86F2C3 Meas
#python3 $CIMHUB_UTILS/ListMeasureables.py ieee8500enh   _AAE94E4A-2465-6F5E-37B1-3E72183A4E44 Meas
#python3 $CIMHUB_UTILS/ListMeasureables.py r2_12_47_2    _9CE150A8-8CC5-A0F9-B67E-BBD8C79D3095 Meas
#python3 $CIMHUB_UTILS/ListMeasureables.py transactive   _503D6E20-F499-4CC7-8051-971E23D0BF79 Meas

./insert_all_measurements.sh



