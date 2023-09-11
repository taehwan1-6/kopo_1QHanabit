<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="../layout/head.jsp" %>
</head>
<body>
<%@ include file="../layout/navbar.jsp" %>


<div class="app-wrapper">
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp"
                 data-wow-delay="0.1s" style="max-width: 600px;">
                <h6 class="text-primary">하나빗 갓생 예금</h6>
                <h2 class="mb-4">상품 가입</h2>
            </div>
            <div class="row g-4">

                <div class="col-md-12 col-lg-12 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item rounded overflow-hidden">
                        <div class="row">
                            <div class="col-lg-5 mt-5 mb-5" style="text-align: right;">
                                <img alt=""
                                     style="width: 90%; height: 90%;"
                                     src="${pageContext.request.contextPath}/assets/images/products/deposit/product.png">
                            </div>
                            <div class="col-lg-7 mt-5 mb-5">
                                <div class="position-relative p-4 " style="color: black;">
                                    <p>· 상품 약관과 상품설명서를 반드시 확인하여 주십시오.</p>
                                    <p>· 인터넷뱅킹으로 예ㆍ적금을 해지시 추가본인확인 절차 안내(금융감독원 보이스피싱 방지 대책)<br>
                                        &nbsp;&nbsp; 고객금융자산보호를 위하여 본인확인 절차 후 예ㆍ적금해지가 가능합니다.</p>
                                    <p>· 추가 본인확인 실시 : 휴대폰 SMS인증 또는 2채널인증(단, 해외에 체류하시는 경우 고객센터를
                                        <br>&nbsp;&nbsp;&nbsp;통한 유선통화 확인을 실시합니다.) 해지전 고객님의 고객정보를 반드시 확인하시기 바랍니다.</p>
                                    <p>· 예금신규(정기예금, 적금, 청약저축)의 경우 더(The) 간편뱅킹 서비스 가입여부와 관계없이
                                        <br>&nbsp;&nbsp;&nbsp;&nbsp;보안카드/OTP 입력 및 인증서 입력 없이 이용 가능합니다.</p>
                                    <p style="color: #ff328b">· 상품 해지시에는 보안매체(보안카드/OTP), 인증서
                                        비밀번호 입력이 필요합니다.</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-md mb-4 mb-md-0">
                    <div class="accordion mt-3" id="accordionExample">
                        <form name="joinOpenBankingForm">
                            <div class="col-12 col-lg-12 card accordion-item p-0">
                                <h2 class="accordion-header" id="headingOne">
                                    <button type="button" class="accordion-button collapsed"
                                            data-bs-toggle="collapse" data-bs-target="#accordionOne"
                                            aria-expanded="true" aria-controls="accordionOne">
                                        <h6>예·적금거래기본약관</h6></button>
                                </h2>

                                <div id="accordionOne" class="accordion-collapse collapse"
                                     data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <p>이 예금거래기본약관(이하 “약관”이라 한다)은 하나은행(이하 “은행”이라 한다)과 거래처(또는
                                            예금주)가 서로 믿음을 바탕으로 예금거래를 빠르고 틀림 없이 처리하는 한편, 서로의 이해관계를 합리적으로
                                            조정하기 위하여 기본적이고 일반적인 사항을 정한 것이다. 은행은 이 약관을 영업점에 놓아두고, 거래처는
                                            영업시간 중 언제든지 이 약관을 볼 수 있고 또한 그 교부를 청구할 수 있다.</p>
                                        <h6 style="color: #08a294;">제1조(적용범위)</h6>
                                        <p>이 약관은 입출금이 자유로운 예금, 거치식예금 및 적립식예금 거래에 적용한다.</p>


                                        <h6 style="color: #08a294;">제2조(실명거래)</h6>
                                        <p>① 거래처는 실명으로 거래하여야 한다.</p>
                                        <p>② 은행은 거래처의 실명확인을 위하여 주민등록증·사업자등록증 등 실명확인증표 또는 그밖에 필요한
                                            서류의 제시나 제출을 요구할 수 있고, 거래처는 이에 따라야 한다.</p>
                                        <h6 style="color: #08a294;">제3조(거래장소)</h6>
                                        <p>거래처는 예금계좌를 개설한 영업점(이하 “개설점”이라 한다)에서 모든 예금거래를 한다. 다만,
                                            은행이 정하는 바에 따라 다른 영업점이나 다른 금융기관, 또는 현금자동지급기·현금자동입출금기·컴퓨터·전화기
                                            등(이하 "전산통신기기")을 통하여 거래할 수 있다.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-12 col-lg-12 card accordion-item p-0">
                                <h2 class="accordion-header" id="headingTwo">
                                    <button type="button" class="accordion-button collapsed"
                                            data-bs-toggle="collapse" data-bs-target="#accordionTwo"
                                            aria-expanded="false" aria-controls="accordionTwo">
                                        <h6>계좌간 자동이체 약관</h6></button>
                                </h2>
                                <div id="accordionTwo" class="accordion-collapse collapse"
                                     aria-labelledby="headingTwo"
                                     data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <h6 style="color: #08a294;">제 1 조</h6>
                                        <p>자동이체방법 은행은 고객의 자동이체 신청에 따라 지정일에 통장, 수표, 지급청구서 없이
                                            출금계좌에서 이체금액을 입금계좌로 이체합니다.</p>
                                        <h6 style="color: #08a294;">제 2 조 지급자금 부족 때의 처리출금</h6>
                                        <p>① 이체 지정일에 출금계좌의 지급자금이 이체금액에 미달하면 부족자금이 채워지는 날에 이체
                                            처리합니다.</p>
                                        <p>② 제1항에도 불구하고 입금계좌가 대출계좌인 경우는 다음 각 호의 방법에 따라 처리합니다.</p>
                                        <p>&nbsp; 1. 이체 지정일까지 출금계좌로 입금되는 금액은 이체 지정일부터 이체하며, 출금계좌의
                                            출금 가능 금액이 이체 금액에 미달하면 영업시간 이후에 다음과 같이 처리합니다.</p>
                                        <p>&nbsp;&nbsp;&nbsp;가. 출금 가능 금액 범위 내에서 매 영업일 원 단위로
                                            이체합니다.</p>
                                        <p>&nbsp;&nbsp;&nbsp;나. 출금 가능 금액이 발생 연체이자에 미달하면 이체하지
                                            않습니다.</p>
                                        <p>&nbsp;2. 대출계좌의 약정 납입일 전까지는 부족자금이 채워지는 날 이체하고, 약정 납입일
                                            이후부터는 제1호의 방법에 따라 이체 처리합니다.</p>
                                        <p>③ 제2항에 따라 연체 중인 원리금균등분할상환대출의 상환원리금 일부 금액이 이체되는 경우에도 연체
                                            기준일은 변경되지 않습니다.</p>
                                        <p>④ 제2항에도 불구하고 협약대출, 정책자금대출, 기타 달리 정함이 있는 대출은 제1항의 방법에
                                            따라 이체 처리합니다.</p>

                                        <h6 style="color: #08a294;">제 3 조 여러 건의 이체처리</h6>
                                        <p>출금 당일에 이체 대상 자동이체가 여러 건이 있으면, 처리순서는 아래의 자동이체 출금 우선순위에
                                            따릅니다.</p>
                                        <p>① 당행 지급 입금이체 / ② 우리은행 대출금 이자 / ③ 우리은행 대출금 상환 / ④ 우리카드
                                            대금결제 ⑤ 타행(타사)카드 대금결제 / ⑥ 아파트 관리비 이체 / ⑦ 스쿨뱅킹 이체 / ⑧ 예약거래 이체
                                            ⑨ 지로 및 납부자자동이체 / ⑩ 외환 당발송금 이체 / ⑪ 당행 예적금계좌 이체 / ⑫ 기타 자동이체</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-12 col-lg-12 card accordion-item p-0">
                                <h2 class="accordion-header" id="headingThree">
                                    <button type="button" class="accordion-button collapsed"
                                            data-bs-toggle="collapse" data-bs-target="#accordionThree"
                                            aria-expanded="false" aria-controls="accordionThree">
                                        <h6>예금자보호법 설명확인</h6></button>
                                </h2>
                                <div id="accordionThree" class="accordion-collapse collapse"
                                     aria-labelledby="headingThree"
                                     data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <p>본인은 약관 및 상품설명서에 대해 충분히 이해하고 가입하였으며, 하나은행으로부터 예금자보호여부 및
                                            보호한도(현금과 소정의 이자를 합하여 1인당 5천만원)에 대하여 설명 듣고 이해하였음을 확인합니다.</p>
                                    </div>
                                </div>
                            </div>


                            <div class="col-12 col-lg-12 card accordion-item p-0">
                                <h2 class="accordion-header" id="headingThree">
                                    <button type="button" class="accordion-button collapsed"
                                            data-bs-toggle="collapse" data-bs-target="#accordionFour"
                                            aria-expanded="false" aria-controls="accordionFour">
                                        <h6>구속행위 금지 안내</h6></button>
                                </h2>
                                <div id="accordionFour" class="accordion-collapse collapse"
                                     aria-labelledby="headingFour"
                                     data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <h6 style="color: #08a294;">구속행위란?</h6>
                                        <p>· 금융소비자보호에 관한 법률(제20조) 및 동법 시행령(제15조)의 불공정영업행위의 금지와
                                            관련하여 금융소비자 보호에 관한 감독규정 및 금융소비자 보호에 관한 감독규정 시행세칙에서 규정한 사항입니다.
                                        </p>

                                        <h6 style="color: #08a294;">1 . 차주 및 관계인(중소기업의 대표자)의 의사와
                                            상관없이 구속행위로 간주되는 경우</h6>

                                        <p>· 우리은행에서는 여신(대출)거래와 관련하여 차주 및 관계인(중소기업의 대표자)을 보호하기 위하여
                                            여신(대출)실행일 전/후 1개월 이내에 예금 등을 신규하는 경우 구속행위로 간주합니다. (예적금, 상호부금,
                                            금전신탁, 공제, 보험, 집합투자증권, 양도성예금증서, 금융채, 환매조건부채권, 선불카드, 선불전자지급수단,
                                            상품권 등)</p>

                                        <h6 style="color: #08a294;">2 . 차주 및 관계인주)의 의사, 정당한 사유여부
                                            등 실질에 따라 구속행위로 간주되는 경우</h6>
                                        <p>· 실질적으로 차주의 자금사용을 제한하는 행위 차주의 의사에 반하여 은행상품의 가입 또는 매입을
                                            강요하는 행위 차주의 관계인주)의 의사에 반하여 은행상품의 가입 또는 매입을 강요하는 행위 주) 실질규제
                                            대상 관계인은 중소기업의 임원(대표자 포함)·직원 및 그 가족(배우자 및 직계혈족)을 말합니다.</p>

                                        <h6 style="color: #08a294;">금전신탁, 보험, 펀드, 공제상품 관련 유의사항</h6>
                                        <p>- 금전신탁, 보험, 펀드, 공제상품 신규 후 1개월 이내에는 동 상품을 담보로 한 대출이
                                            금지됩니다.</p>

                                        <h6 style="color: #08a294;">대상자</h6>
                                        <p>1. [중소기업기본법]상 중소기업(개인사업자 포함) 및 대표자 2. 개인 변경시행일 : 2021년
                                            3월 25일</p>

                                    </div>
                                </div>
                            </div>


                            <div class="col-12 col-lg-10 m-auto pt-5 pb-3 text-center text-black">
                                금융회사는「금융소비자보호에 관한 법률(시행일 2021.03.25)」 제19조(설명의무)에 따라 예금상품의 중요한
                                사항을 소비자가 이해할수 있도록 설명해야 하며, 동법 제23조(계약서류의 제공의무)에 따라 금융소비자에게 지체없이
                                제공해야 합니다. <br>본인은 약관 및 상품설명서의 주요 내용에 대하여 <span style="color:#ff328b ">충분히 이해하였습니다.<span>
                            </div>

                            <div style="text-align: right;">
                                <h6 class="mt-4 mb-4">
                                    <input class="form-check-input" type="checkbox" value=""
                                           id="checkAll"/> <label class="form-check-label me-3"
                                                                  for="checkAll"> 전체동의 </label>
                                </h6>
                            </div>

                            <div class="col-12 col-lg-10 m-auto pt-3 pb-3">
                                <input class="form-check-input" type="checkbox" value=""
                                       id="check1yes"/><label
                                    class="form-check-label text-secondary me-3" for="check1yes">본인은
                                약관 및 상품설명서를 제공받고 예금상품의 중요한 사항을 충분히 이해하며 본 상품에 가입함을 확인합니다.</label>
                            </div>

                            <div class="col-12 col-lg-10 m-auto pt-3 pb-3">
                                <input class="form-check-input" type="checkbox" value=""
                                       id="check2yes"/><label
                                    class="form-check-label text-secondary me-3" for="check2yes">본인은
                                구속행위 금지에 대한 내용을 확인하고 충분히 이해하였음을 확인합니다.</label>
                            </div>


                            <div class="col-12 col-lg-10 m-auto pt-3 pb-3">
                                <input class="form-check-input" type="checkbox" value=""
                                       id="check3yes"/><label
                                    class="form-check-label text-secondary me-3" for="check3yes">
                                본인은 위 안내에 대하여 같은 법 제3조 제6항에 따라 안내를 받고, 충분히 이해하였음을 확인합니다. </label>
                            </div>


                            <div class="col-12 col-lg-10 m-auto pt-3 pb-3">

                                <input class="form-check-input" type="checkbox" value=""
                                       id="checkEmail"/> <label
                                    class="form-check-label text-primary me-3" for="checkEmail">
                                <h6 class="text-primary">약관 및 상품설명서 이메일로 받기</h6></label>
                            </div>
                            <div class="mt-5 mb-5" style="text-align: center;">
                                <input type="button" class="btn btn-primary" value="동의합니다"
                                       style="padding-left: 100px; padding-right: 100px;"
                                       id="joinOpenBakingBtn">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- row -->
        </div>
    </div>
</div>
<!-- app-wrapper -->

<script>
    // 전체동의 체크박스를 클릭할 때 다른 체크박스 상태를 변경하는 함수
    function toggleAllCheckboxes() {
        var checkAll = document.getElementById("checkAll");
        var checkboxes = document.querySelectorAll("input[type='checkbox']");

        for (var i = 0; i < checkboxes.length; i++) {
            checkboxes[i].checked = checkAll.checked;
        }
    }

    // 전체동의 체크박스에 이벤트 리스너 추가
    var checkAll = document.getElementById("checkAll");
    checkAll.addEventListener("click", toggleAllCheckboxes);
</script>


<%@ include file="../layout/footer.jsp" %>
</body>
</html>
