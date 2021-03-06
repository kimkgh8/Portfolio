<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>

<head>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link href="../../resouces/css/style.css" rel="stylesheet" type="text/css">
    <link href="../../resouces/css/iconStyle.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../../resouces/js/main.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" href="path/to/fontello/css/fontello.css">
    <link rel="stylesheet" href="path/to/fontello/css/animation.css">
    <title>WelCome.</title>
</head>

<body class="welcome-body">
    <script>
        AOS.init();
    </script>
    <div data-aos="flip-up" class="jb-content">
        <div class="jb-container">

            <div class="jb-header">
                <h1>놀땐 놀고 할땐 하자</h1>
            </div>
            <div class="jb-main">
                <img class="jb-mainImg" src="../../resouces/image/codeImage.jpg" /><br />
                <br />
                <p>
                    컴퓨터는 거짓말을 하지 않는다. <br /> <br /> <small>개발자의 길을 걸으면서 들은
                        생각입니다. 소스 안에 항상 답이 있다고 생각 합니다.</small>
                </p>
                <br />
                <br /> <img src="https://fontmeme.com/permalink/210708/401164043f2cc79e7fa1c63d51ac190c.png" alt="cursive-type" border="0" width=200px height=auto>
            </div>
            <div class="jb-footer">
                <div class="container" id="icons">
                    <div class="row">
                        <div class="span3" title="Code: 0xe801">
                            <i class="demo-icon icon-user"></i> <span class="i-name"><a href="comment">Kim Geunho</a></span> <span class="i-code">0xe801</span>
                        </div>
                        <div class="span3" title="Code: 0xe800">
                            <i class="demo-icon icon-mail"></i> <span class="i-name"><a href="mailto:﻿" asdlkjd1 @naver.com>asdlkjd1@naver.com</a></span> <span class="i-code">0xe800</span>
                        </div>
                        <div class="span3" title="Code: 0xf1d2">
                            <i class="demo-icon icon-git-squared"></i> <span class="i-name"><a href="https://github.com/kimkgh8">https://github.com/kimkgh8</a></span>
                            <span class="i-code">0xf1d2</span>
                        </div>
                    </div>
                    <div class="container footer">
                        developer by <span class="i-name">KIM GEUNHO</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="jb-content">
        <div class="jb-container">
            <div class="jb-header">
                <h1>Project</h1>
            </div>
            <div class="jb-main">
                <p>
                    문서 관리 시스템<br /> <br /> <small> 제품 사양 정보에 대한 문서들을 관리하는
                        시스템. <br />
                    </small><small>현행 시스템은 비주얼베이직이였기 때문에 기능을 java로 리뉴얼하는 프로젝트였습니다. <br />
                    </small><small>프론트엔드는 일본의 한 업체의 패키지를 이용하고 java의 API와배치프로그램을
                        개발하였습니다.<br /> <br />
                        <h2>■ 담당 업무</h2>
                        <ul>
                            <li>신규 프로젝트라고 생각해도 될 정도로 정보가 없었기 때문에 기능을 사용할 수있는지의 검증 및 테스트를
                                하였습니다.</li>
                            <li>설계서 작성 후 코딩, 단위 테스트</li>
                            <li>결합 테스트의 결함 조사, 대응</li>
                            <li>API,배치프로그램의 전반적인 내용을 파악하고 있기 때문에 고객과의 문의도 담당하였습니다.</li>
                            <li>개발 후의 유지보수</li>
                        </ul>
                        <h2>■ 환경</h2>
                        <ul>
                            <li>OS : Windows</li>
                            <li>DB : Oracle 12c</li>
                            <li>언어 : Java</li>
                            <li>툴 : Eclipse</li>
                        </ul> <br />
                        <h2>■ 참가 기간 : 2020년 8월 ~ 현재</h2>
                    </small>
                    <button data-aos="zoom-in" class="jb-main-button" onclick="showPopup(false)">
                        <span>주요 API</span>
                    </button>
                    <div id="popup" class="hide">
                        <div class="content">
                            <img class="jb-dataFlowImg" src="../../resouces/image/dataflow.JPG" /><br /> ・문서 사후 처리 프로그램
                            : 보통은 문서의 데이터를 DB에 출력하는 처리 프로그램 <br />DB에 출력하는 처리 외로 다른 문서의 정보를
                            이용하여 해당 문서의 항목을 갱신하는 프로그램 등 도 있었습니다. <br />그 안에 비동기 처리도 있었기 때문에
                            스레드를 이용한 개발도 경험 했습니다. <br /> <br /> ・플러그인 : 문서의 등록/삭제/갱신 등의 처리
                            전의 문서의 내용에 문제가 없는지 체크하는 처리를 포함 하고 있습니다. <br /> <br /> ・배치프로그램 :
                            문서의 여러 가지 정보를 수집(SQL)하여 DB에 출력하는 프로그램(약 6만건 이상) <br />위의 배치 프로그램은
                            데이터 수가 만 단위였기 때문에 SQL튜닝 및 코드 최적화 작업을 실시하였습니다. <br /> <br /> 이
                            프로젝트에서는 많은 데이터를 관리 및 작업을 해야했기 때문에 반복문을 많이 사용하여 효율적인 처리를 할수있는가에 대해
                            배우면서 성장했던 유익한 프로젝트였습니다.
                            <button data-aos="zoom-out" class="jb-main-button-close" onclick="closePopup()">X</button>
                        </div>
                    </div>
                </p>
            </div>
            <div class="jb-footer">
                <div class="container" id="icons">
                    <div class="row">
                        <div class="span3" title="Code: 0xe801">
                            <i class="demo-icon icon-user"></i> <span class="i-name"><a href="comment">Kim Geunho</a></span> <span class="i-code">0xe801</span>
                        </div>
                        <div class="span3" title="Code: 0xe800">
                            <i class="demo-icon icon-mail"></i> <span class="i-name"><a href="mailto:﻿" asdlkjd1 @naver.com>asdlkjd1@naver.com</a></span> <span class="i-code">0xe800</span>
                        </div>
                        <div class="span3" title="Code: 0xf1d2">
                            <i class="demo-icon icon-git-squared"></i> <span class="i-name"><a href="https://github.com/kimkgh8">https://github.com/kimkgh8</a></span>
                            <span class="i-code">0xf1d2</span>
                        </div>
                    </div>
                    <div class="container footer">
                        Generated by <a href="https://fontello.com">fontello.com</a>
                        developer by <span class="i-name">KIM GEUNHO</span>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="jb-content">
        <div class="jb-container">
            <div class="jb-header">
                <h1>Project</h1>
            </div>
            <div class="jb-main">
                <p>
                    부동산 회사의 영업 지원 시스템<br /> <br /> <small> 부동산 관련 영업의 지원
                        시스템으로써 영업에 필요한 자료를 작성, 관리 하는 시스템 <br />
                    </small><small>완성된 시스템에 새로운 기능을 추가 및 기존 버그 수정을 주로 하는 프로젝트 <br />
                    </small><small>프론트엔드 백엔드 구분 없이 다양한 경험을 했던 프로젝트로 기억에 남아 있습니다.<br />
                    </small><small>・100줄 이상의 SQL문들이 존재해서 그 내용을 해석해 버그를 찾아내기도 했습니다. 그
                        경험이 SQL에 대한 이해도를 높일수 있던 좋은 경험이였다고 생각합니다.<br />
                    </small><small>영업 지원 시스템이지만 그 이외에도 여러가지 시스템이 존재해서 상호 작용을 하는 기능들도 있어
                        팀 단위로 커뮤니케이션을 하면서 팀단위 작업을 많이 했습니다.<br /> <br />
                        <h2>■ 담당 업무</h2>
                        <ul>
                            <li>현행 시스템을 리뉴얼한 시스템에 기능을 추가하는 업무</li>
                            <li>시스템의 결함에 대한 조사 및 처리를 하였습니다.</li>
                        </ul>
                        <h2>■ 환경</h2>
                        <ul>
                            <li>OS : Windows</li>
                            <li>DB : SQL Server 2014</li>
                            <li>언어 : Java,JavaScript,JSON, XML, HTML</li>
                            <li>툴 : Eclipse, Apache, Backlog, SVN</li>
                        </ul> <br />
                        <h2>■ 참가 기간 : 2019년 12월 ~ 2020년 7월</h2>
                    </small>
                </p>
            </div>
            <div class="jb-footer">
                <div class="container" id="icons">
                    <div class="row">
                        <div class="span3" title="Code: 0xe801">
                            <i class="demo-icon icon-user"></i> <span class="i-name"><a href="comment">Kim Geunho</a></span> <span class="i-code">0xe801</span>
                        </div>
                        <div class="span3" title="Code: 0xe800">
                            <i class="demo-icon icon-mail"></i> <span class="i-name"><a href="mailto:﻿" asdlkjd1 @naver.com>asdlkjd1@naver.com</a></span> <span class="i-code">0xe800</span>
                        </div>
                        <div class="span3" title="Code: 0xf1d2">
                            <i class="demo-icon icon-git-squared"></i> <span class="i-name"><a href="https://github.com/kimkgh8">https://github.com/kimkgh8</a></span>
                            <span class="i-code">0xf1d2</span>
                        </div>
                    </div>
                    <div class="container footer">
                        Generated by <a href="https://fontello.com">fontello.com</a>
                        developer by <span class="i-name">KIM GEUNHO</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="jb-content">
        <div class="jb-container">
            <div class="jb-header">
                <h1>Project</h1>
            </div>
            <div class="jb-main">
                <p>
                    신용카드 결제 인증 서비스<br /> <br /> <small> 신용카트의 결제정보 일람, 데이터 분석
                        후 자료 작성, 전자상 거래에 필요한 결제 기능을 제공하는 서비스 <br />
                    </small><small>한국에서 1년 정도 교육을 받고 처음 참가하게된 프로젝트<br />
                    </small><small>설계서 작성을 시작으로 코딩, 테스트를 하는 애자일 방식의 개발 프로젝트였습니다.<br />
                    </small><small>개발 단계로써는 1차 개발이 끝나고 그 이후의 개발단계였기 때문에, 성능에 대한 부분도
                        고려했어야 했기 때문에 처리의 성능 확인 및 SQL의 성능을 확인하는 작업도 했던 기억이 있습니다.<br /> <br />
                        <h2>■ 담당 업무</h2>
                        <ul>
                            <li>카드 결제 관련 기능을 개발 및 테스트</li>
                        </ul>
                        <h2>■ 환경</h2>
                        <ul>
                            <li>OS : Windows, Linux</li>
                            <li>DB : Oracle 11g</li>
                            <li>언어 : Java, HTML, JavaScript</li>
                            <li>툴 : JSP, Junit, Eclipse, Github, Jmeter</li>
                        </ul> <br />
                        <h2>■ 참가 기간 : 2018년 10월 ~ 2019년 7월</h2>
                    </small>
                </p>
            </div>


            <div class="jb-footer">
                <div class="container" id="icons">
                    <div class="row">
                        <div class="span3" title="Code: 0xe801">
                            <i class="demo-icon icon-user"></i> <span class="i-name"><a href="comment">Kim Geunho</a></span> <span class="i-code">0xe801</span>
                        </div>
                        <div class="span3" title="Code: 0xe800">
                            <i class="demo-icon icon-mail"></i> <span class="i-name"><a href="mailto:﻿" asdlkjd1 @naver.com>asdlkjd1@naver.com</a></span> <span class="i-code">0xe800</span>
                        </div>
                        <div class="span3" title="Code: 0xf1d2">
                            <i class="demo-icon icon-git-squared"></i> <span class="i-name"><a href="https://github.com/kimkgh8">https://github.com/kimkgh8</a></span>
                            <span class="i-code">0xf1d2</span>
                        </div>
                    </div>
                    <div class="container footer">
                        Generated by <a href="https://fontello.com">fontello.com</a>
                        developer by <span class="i-name">KIM GEUNHO</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>