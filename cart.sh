component_name=cart
source common.sh



#dnf module disable nodejs -y    ---nodejs function
#dnf module enable nodejs:20 -y
#dnf install nodejs -y

#cp cart.service /etc/systemd/system/cart.service

nodejs

# nodejs function
#useradd roboshop
#rm -rf /app
#mkdir /app
#cd /app
#npm install
#curl -L -o /tmp/cart.zip https://roboshop-artifacts.s3.amazonaws.com/cart-v3.zip
#cd /app
#unzip /tmp/cart.zip
#cd /app
#npm install

#systemctl daemon-reload
#systemctl enable cart
#systemctl start cart

systemd_setup