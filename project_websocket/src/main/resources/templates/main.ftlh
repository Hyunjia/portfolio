<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>Made One</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="favicon.ico">

<!--Google Font link-->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">


<link rel="stylesheet" href="assets/css/slick/slick.css">
<link rel="stylesheet" href="assets/css/slick/slick-theme.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/iconfont.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/bootsnav.css">

<!-- xsslider slider css -->


<!--<link rel="stylesheet" href="assets/css/xsslider.css">-->


<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7526b98f1673ecb58d9148970cd4c708&libraries=services,clusterer,drawing"></script>



<!--For Plugins external css-->
<!--<link rel="stylesheet" href="assets/css/plugins.css" />-->

<!--Theme custom css -->
<link rel="stylesheet" href="assets/css/style.css">
<!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" />

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<style>
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 200;
	height: 502px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 500px;
	margin: 10px 10px 10px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}
</style>

</head>

<body data-spy="scroll" data-target=".navbar-collapse">


	<!-- Preloader -->
	<div id="loading">
		<div id="loading-center">
			<div id="loading-center-absolute">
				<div class="object" id="object_one"></div>
				<div class="object" id="object_two"></div>
				<div class="object" id="object_three"></div>
				<div class="object" id="object_four"></div>
			</div>
		</div>
	</div>
	<!--End off Preloader -->


	<div class="culmn">
		<!--Home page style-->


		<nav class="navbar navbar-default bootsnav navbar-fixed">
			<div class="navbar-top bg-grey fix">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="navbar-callus text-left sm-text-center">
								<ul class="list-inline">
									<li><a href=""><i class="fa fa-phone"></i> Call us:
											010-7353-0377</a></li>
									<li><a href=""><i class="fa fa-envelope-o"></i>
											Contact us: thd67371@naver.com</a></li>
								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>




			<div class="container">


				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navbar-menu">
						<i class="fa fa-bars"></i>
					</button>
					<a href="#brand"> <img
						src="assets/images/logo.png"  alt="" style="width: 140px;" height="70px;" >
					</a>

				</div>
				<!-- End Header Navigation -->

				<!-- navbar menu -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#home">Home</a></li>
						<li><a href="#business">Search</a></li>
						<li><a href="/chat/room">Community</a></li>
						<li><a href="#contact">Information</a></li>
					</ul>
				</div>
			</div>

		</nav>

		<!--Home Sections-->

		<section id="home" class="home bg-black fix">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="main_home text-center">
						<div class="col-md-12">


							<div class="slid_item">
								<div class="home_text ">
									<h2 class="text-white">
										<strong>Animals</strong> are not everything in our lives.
									</h2>
									<h1 class="text-white">But they make our lives complete.</h1>
								</div>


							</div>
							<!-- End off slid item -->

						</div>

					</div>


				</div>
				<!--End off row-->
			</div>
			<!--End off container -->
		</section>
		<!--End off Home Sections-->



		<!--Featured Section-->



		<section id="business" class="business bg-grey roomy-70">
			<div class="container">
				<div class="row">
					<div class="main_business">
						<div class="col-md-6">
							<div class="business_slid">
								<div class="slid_shap bg-grey"></div>
								<div class="business_items text-center">
									<div class="business_item">
										<!--지도 위치  -->
										<div id="map" style="width: 554px; height: 400px;"></div>
										<button type="button" onclick="getCurrentPosBtn()">내
											위치 가져오기</button>
									</div>


								</div>
							</div>
						</div>

						<div class="col-md-6">
							<div class="map_wrap">
								<div id="map"
									style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

								<div id="menu_wrap" class="bg_white">
									<div class="option">
										<div>

											<form>
												키워드 : <input type="text" value="24시 동물병원" id="keyword"
													size="15">
												<button type="button" onclick="keywordSearch()">검색하기</button>
											</form>
										</div>
									</div>
									<hr>
									<ul id="placesList"></ul>
									<div id="pagination"></div>
								</div>
							</div>
						</div>



					</div>
				</div>
			</div>
		</section>


		<!--product section-->
		<section id="product" class="product">
			<div class="container">
				<div class="main_product roomy-80">
					<div class="head_title text-center fix">
						<h2 class="text-uppercase">What Animal Say</h2>
						<h5>Clean and Modern design is our best specialist</h5>
					</div>

					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<div class="container">
									<div class="row">
										<div class="col-sm-3">
											<div class="port_item xs-m-top-30">
												<div class="port_img">
													<img src="assets/images/work-img1.jpg" alt="" />
													<div class="port_overlay text-center">
														<a href="/img1"></a>
													</div>
												</div>
												<div class="port_caption m-top-20">
													<h5 href="/img1">About Me</h5>
													<h6>- Click on the picture</h6>
												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="port_item xs-m-top-30">
												<div class="port_img">
													<img src="assets/images/work-img2.jpg" alt="" />
													<div class="port_overlay text-center">
														<a href="#"></a>
													</div>
												</div>
												<div class="port_caption m-top-20">
													<h5>About Me</h5>
													<h6>- Click on the picture</h6>
												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="port_item xs-m-top-30">
												<div class="port_img">
													<img src="assets/images/work-img3.jpg" alt="" />
													<div class="port_overlay text-center">
														<a href="#"></a>
													</div>
												</div>
												<div class="port_caption m-top-20">
													<h5>About Me</h5>
													<h6>- Click on the picture</h6>
												</div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="port_item xs-m-top-30">
												<div class="port_img">
													<img src="assets/images/work-img4.jpg" alt="" />
													<div class="port_overlay text-center">
														<a href="#"></a>
													</div>
												</div>
												<div class="port_caption m-top-20">
													<h5>Your Work Title</h5>
													<h6>- Click on the picture</h6>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							
							

						</div>

						
					</div>
				</div>
				<!-- End off row -->
			</div>
			<!-- End off container -->
		</section>
		<!-- End off Product section -->









		<!--Call to  action section-->
		<section id="action" class="action bg-primary roomy-40">
			<div class="container">
				<div class="row">
					<div class="maine_action">
						<div >
							<div class="action_item text-center">
								<h2 class="text-white text-uppercase">Animals are such agreeable friends</h2>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</section>




		<footer id="contact" class="footer action-lage bg-black p-top-80">
			<!--<div class="action-lage"></div>-->
			<div class="container">
				<div class="row">
					<div class="widget_area">
						<div class="col-md-3">
							<div class="widget_item widget_about">

								<div class="widget_ab_item m-top-30">
									<div class="item_icon">
										<i class="fa fa-location-arrow"></i>
									</div>
									<div class="widget_ab_item_text">
										<h6 class="text-white">Location</h6>
										<p>대구 수성구 알파시티 1로 170</p>
									</div>
								</div>
								<div class="widget_ab_item m-top-30">
									<div class="item_icon">
										<i class="fa fa-phone"></i>
									</div>
									<div class="widget_ab_item_text">
										<h6 class="text-white">Phone :</h6>
										<p>010 - 7353- 0377</p>
									</div>
								</div>
								<div class="widget_ab_item m-top-30">
									<div class="item_icon">
										<i class="fa fa-envelope-o"></i>
									</div>
									<div class="widget_ab_item_text">
										<h6 class="text-white">Email Address :</h6>
										<p>thd67371@naver.com</p>
									</div>
								</div>
							</div>
							<!-- End off widget item -->
						</div>



						<div class="col-md-3">
							<div class="widget_item widget_service sm-m-top-50">
								<h5 class="text-white">Kategorie</h5>
								<ul class="m-top-20">
									<li class="m-top-20"><a href="#home"><i
											class="fa fa-angle-right"></i> Home</a></li>
									<li class="m-top-20"><a href="#business"><i
											class="fa fa-angle-right"></i> Search</a></li>
								</ul>
							</div>
							<!-- End off widget item -->
						</div>
						<div class="col-md-3">
							<div class="widget_item widget_service sm-m-top-50">
								<h5 class="text-white">Kategorie</h5>
								<ul class="m-top-20">
									<li class="m-top-20"><a href="/chat/room"><i
											class="fa fa-angle-right"></i>Community</a></li>
									<li class="m-top-20"><a href="#contact"><i
											class="fa fa-angle-right"></i>Information</a></li>

								</ul>
							</div>
							<!-- End off widget item -->
						</div>
						<!-- End off col-md-3 -->

						<div class="col-md-3">
							<div class="widget_item widget_newsletter sm-m-top-50">
								<h5 class="text-white">Newsletter</h5>
								<form class="form-inline m-top-30">
									<div class="form-group">
										<input type="email" class="form-control"
											placeholder="Enter you Email">
										<button type="submit" class="btn text-center">
											<i class="fa fa-arrow-right"></i>
										</button>
									</div>

								</form>
								<div class="widget_brand m-top-40">
									<a href="" class="text-uppercase">PetPlat</a>
									<p>Animals are not everything in our lives. But they make
										our lives complete.</p>
								</div>
								<ul class="list-inline m-top-20">
									<li>- <a href=""><i class="fa fa-facebook"></i></a></li>
									<li><a href=""><i class="fa fa-twitter"></i></a></li>
									<li><a href=""><i class="fa fa-linkedin"></i></a></li>
									<li><a href=""><i class="fa fa-google-plus"></i></a></li>
									<li><a href=""><i class="fa fa-behance"></i></a></li>
									<li><a href=""><i class="fa fa-dribbble"></i></a> -</li>
								</ul>

							</div>
							<!-- End off widget item -->
						</div>
						<!-- End off col-md-3 -->
					</div>
				</div>
			</div>

		</footer>




	</div>

	<!-- JS includes -->

	<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="assets/js/vendor/bootstrap.min.js"></script>

	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/jquery.magnific-popup.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>
	<script src="assets/css/slick/slick.js"></script>
	<script src="assets/css/slick/slick.min.js"></script>
	<script src="assets/js/jquery.collapse.js"></script>
	<script src="assets/js/bootsnav.js"></script>



	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>

	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
			center : new kakao.maps.LatLng(37.56646, 126.98121), // 지도의 중심좌표
			level : 11, // 지도의 확대 레벨
			mapTypeId : kakao.maps.MapTypeId.ROADMAP
		// 지도종류
		};
		var currentPos;

		// 지도를 생성한다
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});

		// 키워드로 장소를 검색합니다
		function locationLoadSuccess(pos) {
			// 현재 위치 받아오기
			currentPos = new kakao.maps.LatLng(pos.coords.latitude,
					pos.coords.longitude);

			// 지도 이동(기존 위치와 가깝다면 부드럽게 이동)
			map.panTo(currentPos);

			// 마커 생성
			var marker = new kakao.maps.Marker({
				position : currentPos
			});

			// 기존에 마커가 있다면 제거
			marker.setMap(null);
			marker.setMap(map);
		};

		function locationLoadError(pos) {
			alert('위치 정보를 가져오는데 실패했습니다.');
		};

		// 위치 가져오기 버튼 클릭시
		function getCurrentPosBtn() {
			navigator.geolocation.getCurrentPosition(locationLoadSuccess,
					locationLoadError);
		};

		function value1() {

		}

		function keywordSearch() {

			var keyword = $('#keyword').val();
			var markers = [];
			// alert(keyword)

			// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
			var infowindow = new kakao.maps.InfoWindow({
				zIndex : 1
			});

			// 장소 검색 객체를 생성합니다
			var ps = new kakao.maps.services.Places();
			alert(ps)
			// 검색 옵션 객체
			var searchOption = {
				location : currentPos,
				radius : 8000,
				size : 8
			};

			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			ps.keywordSearch(keyword, placesSearchCB, searchOption);

			// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
			function placesSearchCB(data, status, pagination) {

				if (status === kakao.maps.services.Status.OK) {

					// 정상적으로 검색이 완료됐으면
					// 검색 목록과 마커를 표출합니다
					displayPlacesOnSidebar(data);

					// 페이지 번호를 표출합니다
					displayPagination(pagination);

				} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

					alert('검색 결과가 존재하지 않습니다.');
					return;

				} else if (status === kakao.maps.services.Status.ERROR) {

					alert('검색 결과 중 오류가 발생했습니다.');
					return;

				}
			}

			// 사이드바에 결과 출력 + 마커 생성
			function displayPlacesOnSidebar(places) {

				var listEl = document.getElementById('placesList'), menuEl = document
						.getElementsByClassName('result-list'), fragment = document
						.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

				// 검색 결과 목록에 추가된 항목들을 제거합니다
				removeAllChildNods(listEl);

				// 지도에 표시되고 있는 마커를 제거합니다
				removeMarker();

				for (var i = 0; i < places.length; i++) {

					// 마커를 생성하고 지도에 표시합니다
					var placePosition = new kakao.maps.LatLng(places[i].y,
							places[i].x), marker = addMarker(placePosition, i), itemEl = getListItem(
							i, places[i]); // 검색 결과 항목 Element를 생성합니다

					// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					// LatLngBounds 객체에 좌표를 추가합니다
					bounds.extend(placePosition);

					// 마커와 검색결과 항목에 mouseover 했을때
					// 해당 장소에 인포윈도우에 장소명을 표시합니다
					// mouseout 했을 때는 인포윈도우를 닫습니다
					(function(marker, title) {
						kakao.maps.event.addListener(marker, 'mouseover',
								function() {
									displayInfowindow(marker, title);
								});

						kakao.maps.event.addListener(marker, 'mouseout',
								function() {
									infowindow.close();
								});

						itemEl.onmouseover = function() {
							displayInfowindow(marker, title);
						};

						itemEl.onmouseout = function() {
							infowindow.close();
						};
					})(marker, places[i].place_name);

					fragment.appendChild(itemEl);
				}

				// 검색결과 항목들을 검색결과 목록 Element에 추가합니다
				listEl.appendChild(fragment);
				menuEl.scrollTop = 0;

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
				map.setBounds(bounds);
			}

			// 검색결과 항목을 Element로 반환하는 함수입니다
			function getListItem(index, places) {

				var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
						+ (index + 1)
						+ '"></span>'
						+ '<div class="info">'
						+ '   <h5>' + places.place_name + '</h5>';

				itemStr += '  <span class="tel">' + places.phone + '</span>'
						+ '</div>';

				el.innerHTML = itemStr;
				el.className = 'item';

				return el;
			}

			// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
			function addMarker(position, idx, title) {
				var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
				imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
				imgOptions = {
					spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
					spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
					offset : new kakao.maps.Point(13, 37)
				// 마커 좌표에 일치시킬 이미지 내에서의 좌표
				}, markerImage = new kakao.maps.MarkerImage(imageSrc,
						imageSize, imgOptions), marker = new kakao.maps.Marker(
						{
							position : position, // 마커의 위치
							image : markerImage
						});

				marker.setMap(map); // 지도 위에 마커를 표출합니다
				markers.push(marker); // 배열에 생성된 마커를 추가합니다

				return marker;
			}

			// 지도 위에 표시되고 있는 마커를 모두 제거합니다
			function removeMarker() {
				for (var i = 0; i < markers.length; i++) {
					markers[i].setMap(null);
				}
				markers = [];
			}

			// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
			function displayPagination(pagination) {
				var paginationEl = document.getElementById('pagination'), fragment = document
						.createDocumentFragment(), i;

				// 기존에 추가된 페이지번호를 삭제합니다
				while (paginationEl.hasChildNodes()) {
					paginationEl.removeChild(paginationEl.lastChild);
				}

				for (i = 1; i <= pagination.last; i++) {
					var el = document.createElement('a');
					el.href = "#";
					el.innerHTML = i;

					if (i === pagination.current) {
						el.className = 'on';
					} else {
						el.onclick = (function(i) {
							return function() {
								pagination.gotoPage(i);
							}
						})(i);
					}

					fragment.appendChild(el);
				}
				paginationEl.appendChild(fragment);
			}

			// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
			// 인포윈도우에 장소명을 표시합니다
			function displayInfowindow(marker, title) {
				var content = '<div style="padding:5px;z-index:1;">' + title
						+ '</div>';

				infowindow.setContent(content);
				infowindow.open(map, marker);
			}

			// 검색결과 목록의 자식 Element를 제거하는 함수입니다
			function removeAllChildNods(el) {
				while (el.hasChildNodes()) {
					el.removeChild(el.lastChild);
				}
			}
		}
	</script>





</body>
</html>
