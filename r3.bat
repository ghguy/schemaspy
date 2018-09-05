set PATH=C:\Program Files (x86)\Graphviz2.38\bin;%PATH%

java -jar ./schemaSpy_5.0.0.jar -dp ./ojdbc14.jar -t orathin -host localhost -port 1521 -db XE -s CPTAC -u cptac -p admin -o cptac 


pause