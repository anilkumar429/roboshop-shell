component_name=catalouge
source common.sh



#dnf module disable nodejs -y   ----nodejs function
#dnf module enable nodejs:20 -y
#dnf install nodejs -y

#cp catalogue.service /etc/systemd/system/catalogue.service


nodejs
cp ${pwd}/mongo.repo /etc/yum.repos.d/mongo.repo

#rm -rf /app  ----nodejs function
#useradd roboshop
#mkdir /app
#curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue-v3.zip
#cd /app
#unzip /tmp/catalogue.zip
#cd /app
#npm install
#systemctl daemon-reload  -----systemd_setup function
#systemctl enable catalogue
#systemctl start catalogue

dnf install mongodb-mongosh -y
mongosh --host mongodb-dev.apps11.shop </app/db/master-data.js

systemd_setup