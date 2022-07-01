<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="../css/customer_service.css">
</head>
<body>
	<jsp:include page="./Header.jsp"></jsp:include>

    <main>
        <div class="customer_support"><p>고객지원</p></div>
        <div class="top">
            <div class="qna"><a href="#">
                <img class="thumnail_headset" src="../image/customer_service/headset.png" alt="inquiry">
                <p class="qna_wr" >1:1문의</p>
            </a></div>
            <div class="repair"><a href="#">
                <img class="thumnail_repair" src="../image/customer_service/repairtool.PNG" alt="">
                <p class="repair_wr">A/S및 부품 신청</p>
            </a></div>       
            <div class="manual_book"><a href="./manual.jsp">
                <img class="thumnail_book" src="../image/customer_service/book-bookmark.png" alt="">
                <P class="manual_wr">제품 설명서 및 동영상 가이드</P>
            </a></div>              
        </div>
        
        <div class="frequent_qna">
            <p>자주 묻는 질문</p>
        </div>

        <table> <!--게시판-->
            <colgroup>
              <col class="select">
              <col class="no">
              <col class="title">
              <col class="writer">
              <col class="date">
            </colgroup>
            <thead>
              <tr>
                <th><input class="check.all" type="checkbox"></th>
                <th><p>번호</p></th>
                <th><p>제목</p></th>
                <th><p>작성자</p></th>
                <th><p>날짜</p></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><input class="check" type="checkbox"></td>
                <td><p>1</p></td>
                <td><a href="#"><p>글의 제목 - 1</p></a></td>
                <td><p>앙리</p></td>
                <td><p>2019.10.14</p></td>
              </tr>
              <tr>
                <td><input class="check" type="checkbox"></td>
                <td><p>2</p></td>
                <td><a href="#"><p>글의 제목 - 2</p></a></td>
                <td><p>포그바</p></td>
                <td><p>2019.10.14</p></td>
              </tr>
              <tr>
                <td><input class="check" type="checkbox"></td>
                <td><p>3</p></td>
                <td><a href="#"><p>글의 제목 - 3</p></a></td>
                <td><p>음바페</p></td>
                <td><p>2019.10.14</p></td>
              </tr>
              <tr>
                <td><input class="check" type="checkbox"></td>
                <td><p>4</p></td>
                <td><a href="#"><p>글의 제목 - 4</p></a></td>
                <td><p>네이마르</p></td>
                <td><p>2019.10.14</p></td>
              </tr>
              <tr>
                <td><input class="check" type="checkbox"></td>
                <td><p>5</p></td>
                <td><a href="#"><p>글의 제목 - 5</p></a></td>
                <td><p>손흥민</p></td>
                <td><p>2019.10.14</p></td>
              </tr>
            </tbody>
          </table>
          <div class="page-box">
            <a class="btn" href="#">&lt;&lt;</a>
            <a class="btn" href="#">&lt;</a>
            
            <!--  숫자 버튼  -->
            <a class="btn number" href="#">1</a>
            <a class="btn number" href="#">2</a>
            <a class="btn number on" href="#">3</a>
            <a class="btn number" href="#">4</a>
            <a class="btn number" href="#">5</a>
            
            <a class="btn" href="#">&gt;</a>
            <a class="btn" href="#">&gt;&gt;</a>
          </div> <!--게시판-->

    </main>
    <script src="../JS/customer_service.js"></script>
</body>
</html>