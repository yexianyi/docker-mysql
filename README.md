# Introduction
This image is based on official mysql image and integrated test db (Employee dataset) which could contribute to personal testing for performance.

For the sample dataset detail, pls review https://github.com/datacharmer/test_db

# Run
docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag

e.g.
docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:latest
