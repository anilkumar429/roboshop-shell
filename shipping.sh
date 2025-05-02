#component_name=shipping
#source common.sh
#
#java
#
#dnf install mysql -y
#mysql -h mysql-dev.apps11.shop -uroot -pRoboShop@1 < /app/db/schema.sql
#mysql -h mysql-dev.apps11.shop -uroot -pRoboShop@1 < /app/db/app-user.sql
#mysql -h mysql-dev.apps11.shop -uroot -pRoboShop@1 < /app/db/master-data.sql
#
#
#systemd_setup


set -e

if [ -z "$1" ]; then
  echo Input DB Password is missing
  exit 1
fi

component_name=shipping
source common.sh

java

dnf install mysql -y
for file in schema app-user master-data; do
  mysql -h mysql-dev.apps11.shop -uroot -p$1 < /app/db/$file.sql
done

systemd_setup

