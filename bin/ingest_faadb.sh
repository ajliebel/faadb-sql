rm -Rf /home/postgres/temp
wget -P/home/postgres/temp http://registry.faa.gov/database/AR122015.zip
unzip -o /home/postgres/temp/AR122015.zip -d /home/postgres/temp
psql -d faadb -f sql/import_faadb.sql

