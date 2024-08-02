## minDay Project :green_book: Database

MySQL을 사용했으며 전체 스키마 정보 및 서비스 운영에 필요한 기본적인 데이터를 백업해두었습니다. 


> ## ERD
<img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white"> 


![insideoutDB_ERD_0726(0802)](https://github.com/user-attachments/assets/612cab5e-599a-4c3e-86d7-9ef91c737b3e)


> ## 배포
<img src="https://img.shields.io/badge/AWS RDS-527FFF?style=for-the-badge&logo=amazonrds&logoColor=white">
배포는 AWS RDS 를 사용하였습니다

프로젝트 시간상의 문제로 프론트와 백엔드를 배포하지 못해 호스트와 비밀번호를 이용해 팀원들끼리만 DB에 접근하고 있습니다

_현재 프리티어 사용중입니다_


> ## 백업

1. dump-first.sql : 2024.07.19 InsideOut Database (MySQL)
2. dump-sequelize.sql: 2024.07.23 InsideOut Database (sequelize Model)
3. dump-data-Insert.sql: 2027.07.25 InsideOut Database (emoji, contents, paragraph data update)

> ## 임포트
만약 DB Schema 정보를 임포트하고 싶으시다면 로컬 cmd 창에서 다음을 실행해주세요

`
CREATE DATABASE insideout;

mysql -u (user) -p insideout < /경로/이름.sql
`



