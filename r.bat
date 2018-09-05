rem https://graphviz.gitlab.io/_pages/Download/Download_windows.html
set PATH=C:\Program Files (x86)\Graphviz2.38\bin;%PATH%

java -jar .\schemaSpy_5.0.0.jar -dp .\mssql-jdbc-7.0.0.jre8.jar -t mssql05 -host 137.132.1.204 -port 62242 -db HanshanERS_TEST -s dbo -u sa -p h@nsh@n -o erstest


pause