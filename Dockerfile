FROM mysql:5.7.30

ENV MYSQL_ROOT_PASSWORD root
ARG TEST_DB_REPO=https://github.com/datacharmer/test_db.git

MAINTAINER Xianyi Ye <https://cn.linkedin.com/in/yexianyi>

RUN apt-get update -y \
  && apt-get install pciutils -y \
  && apt-get install git -y \
  && git clone ${TEST_DB_REPO} \
  && cd test_db \
  && mysql -uroot -p${MYSQL_ROOT_PASSWORD} < employees.sql
  && wget ${MODEL_URL} \
  && apt-get purge git -y \
  && apt-get autoremove git -y \
  && apt-get clean
