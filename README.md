# Collabo
TeamProject + Reservation system + Spring legacy Maven MVC project + Oracle

### Spring Lagacy 팀 프로젝트(예약시스템)
### 2022-11-17 프로젝트 시작

## 📢 프로젝트 설명
- 스프링 활용 예약시스템 팀프로젝트


## ⚙ 개발 환경
- 운영체제 : Windows 11
-통합개발환경(IDE) : IntelliJ, STS
- JDK 버전 : JDK 1.8
- 데이터 베이스 : Oracle
- 빌드 툴 : Maven
- 관리 툴 : GitHub


## 🔌 Dependencies (추가예정)
- Lombok
- OracleDB Driver
- Spring Web
- Mybatis


## 💻 기술 스택
- 백엔드
  - Mabatis
- 프론트엔드
  - HTML, CSS, Javascript, Bootstrap
- 데이터베이스
  - OracleDB Driver, sqlDeveloper


## 🛠 DB 설계 (추가예정) (pk=Primary Key , fk = Foreign Key)
- Users :

- Ticket :
  *id(pk)
  *name
  *price
  
- User_Ticket :
  *id(pk)
  *ticketId(fk) = Ticket(id)
  *usersId(fk) = Users(id)
  *reserDate
  *buyDate
  
- Attraction :
  *id(pk)
  *name

- AttrTime :
  *id(pk)
  *time
  *seat
  *attrId(fk) = Attraction(id)
  
- Notice :


## 🕹 구현 기능
- 
- 

## 🔗 Prototype Link
