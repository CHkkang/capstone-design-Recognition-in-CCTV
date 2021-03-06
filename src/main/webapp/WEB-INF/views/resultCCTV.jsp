<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>Object Detecting on CCTV &mdash;</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />
<!-- Canonical SEO -->
<link rel="canonical"
	href="https://www.creative-tim.com/product/paper-bootstrap-wizard" />
<!-- CSS -->
<link
	href="https://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath}/resources/css/wizard-op.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900"
	rel="stylesheet">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<!--       
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/aos.css">
<link
	href="${pageContext.request.contextPath}/resources/css/jquery.mb.YTPlayer.min.css"
	media="all" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/colorpicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/rightclick.css">

<!-- CSS 끝 -->
<!-- Video.js base CSS -->
<link href="https://unpkg.com/video.js@7/dist/video-js.min.css"
	rel="stylesheet" />

<!-- video.markers.css -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/videojs-markers/0.7.0/videojs.markers.css"
	integrity="sha256-ihdPR+vBnIKpjgXeIeCTtJkxWfFykpKmPttcCB9YrZc="
	crossorigin="anonymous" />
<link
	href="${pageContext.request.contextPath}/resources/css/time-marker.css"
	rel="stylesheet">

<script type="text/javascript">
	var localPath = "${pageContext.request.contextPath}";
	var video1 = "aaCCTV";
	var video2 = "bbCCTV";
	var video3 = "ccCCTV";
	var video4 = "ddCCTV";
	window.onload = function() {
		var aVideo = videojs('a');
		var bVideo = videojs('b');
		var cVideo = videojs('c');
		var dVideo = videojs('d');
		firstMarker(aVideo, bVideo, cVideo, dVideo, video1, video2, video3,
				video4, localPath);
		videoChange(aVideo, bVideo, cVideo, dVideo, "new" + video1, "new"
				+ video2, "new" + video3, "new" + video4, localPath);

	};
</script>
<style type="text/css">
/* padding-right: 17px; 수정하는 방법(강제적용 방법)*/
html {
	overflow: hidden;
	height: 100%;
}

body {
	overflow: auto;
	height: 100%;
}

.modal {
	padding-right: 0px !important;
	z-index: 2000 !important;
}
/* unset bs3 setting */
.modal-open {
	overflow: auto;
	padding-right: 0px !important;
}
</style>
</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300" style="background-color: rgba(0, 0, 0, 0.5)">
	<div class="site-wrap">
		<!-- 네비게이션 바 (팝업 호출 용) -->
		<header class="site-navbar py-4 js-sticky-header site-navbar-target"
			role="banner">
			<div class="container-fluid">
				<div class="d-flex align-items-center" style="padding: 10px">
					<div class="site-logo" style="margin: 0 auto; font-size: 1.7rem;">
						<a href="" data-toggle="modal" data-target="#myCenterModal">
							What object do you want to find? <span>Click here</span>
						</a>
					</div>
				</div>
			</div>
	</div>
	</header>
	<!-- 네비게이션 바 (팝업 호출 용) -->
	<!--팝업-->
	<div class="modal fade" id="myCenterModal" tabindex="-1" role="dialog"
		aria-labelledby="myCenterModalLabel">
		<div class="modal-dialog"
			style="max-width: 55%; width: 55%; display: table;">
			<div class="modal-content">
				<div class="modal-header">
					<h4
						style="margin-block-start: 0em; margin-block-end: 0em; margin-inline-start: 0px; margin-inline-end: 0px;">
						Pick Features</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container">
						<div class="row">
							<div class="col">
								<!-- Wizard container -->
								<div class="wizard-container" style="padding-top: 20px">
									<div class="card wizard-card" data-color="red" id="wizard">
										<form id="find" action="resultCCTV" method="post"
											enctype="multipart/form-data">
											<!-- one of the next bright colors: "green", "orange", "red", "purple", "blue" -->
											<div class="wizard-header">
												<h3 class="wizard-title">무엇을 찾고 싶습니까?</h3>
												<h5>찾고 싶은 것의 특징을 체크 해주세요</h5>
											</div>
											<div class="wizard-navigaton">
												<ul class="wari">
													<li class="gari"><a href="#kind" data-toggle="tab"
														style="pointer-events: none; display: none;">Kind</a></li>
													<li class="gari"><a id="detailLink" href=""
														data-toggle="tab"
														style="pointer-events: none; display: none;">Details</a></li>
													<li class="gari"><a id="humanDetailLink" href=""
														data-toggle="tab"
														style="pointer-events: none; display: none;">HumanDetail</a>
													</li>
												</ul>
											</div>
											<div class="tab-content">
												<div class="tab-pane" id="kind">
													<h4 class="info-text">어떤 객체를 찾고 있습니까?</h4>
													<div class="row">
														<div class="col-sm-10 col-sm-offset-1">
															<div class="col-sm-4">
																<div class="choice" data-toggle="wizard-radio"
																	rel="tooltip" title="사람">
																	<input type="radio" name="kind" value="human">
																	<div class="icon">
																		<i class="material-icons">accessibility</i>
																	</div>
																	<h6>Human</h6>
																</div>
															</div>
															<div class="col-sm-4">
																<div id="nClick" class="choice"
																	data-toggle="wizard-radio" rel="tooltip"
																	title="핸드폰, 지갑, 가방">
																	<input type="radio" name="kind" value="thing">
																	<div class="icon">
																		<i class="material-icons">card_travel</i>
																	</div>
																	<h6>Thing</h6>
																</div>
															</div>
															<div class="col-sm-4">
																<div id="nClick" class="choice"
																	data-toggle="wizard-radio" rel="tooltip" title="유기견">
																	<input type="radio" name="kind" value="pets">
																	<div class="icon">
																		<i class="material-icons">pets</i>
																	</div>
																	<h6>Pets</h6>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane" id="human">
													<h4 class="info-text">어떤 방식으로 사람을 찾고 있습니까?</h4>
													<div class="row">
														<div class="col-sm-10 col-sm-offset-1">
															<div class="col-sm-6">
																<div id="humanTextC" class="choice"
																	data-toggle="wizard-radio" rel="tooltip" title="인상착의"
																	onclick="isChecked2(this.id)">
																	<input type="radio" name="humanKind" value="humanText"
																		id="humanTextCC">
																	<div class="icon">
																		<i class="material-icons">search</i>
																	</div>
																	<h6>Choice</h6>
																</div>
															</div>
															<div class="col-sm-6">
																<div id="humanImgFileC" class="choice"
																	data-toggle="wizard-radio" rel="tooltip" title="사진"
																	onclick="isChecked2(this.id)">
																	<input type="radio" name="humanKind"
																		value="humanImgFile" id="humanImgFileCC">
																	<div class="icon">
																		<i class="material-icons">camera</i>
																	</div>
																	<h6>Photo</h6>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane" id="humanText">
													<h4 class="info-text">옷의 종류와 색깔을 선택해주세요.</h4>
													<div class="row">
														<div class="col-xs-6 col-md-4">
															<div id="topColorList" class="container2">
																<div id="topColorPicker"
																	class="color-picker block-center">
																	<ul class="color-list1" style="margin-bottom: 0;">
																		<li class="color1" data-color="#ff0000"></li>
																		<!-- 빨 -->
																		<li class="color1" data-color="#ff69b4"></li>
																		<!-- 핑 -->
																		<li class="color1" data-color="#ff8400"></li>
																		<!-- 주 -->
																		<li class="color1" data-color="#ffe600"></li>
																		<!-- 노 -->
																		<li class="color1" data-color="#26ff00"></li>
																		<!-- 초 -->
																		<li class="color1" data-color="#0022ff"></li>
																		<!-- 파 -->
																		<li class="color1" data-color="#252069"></li>
																		<!-- 남 -->
																		<li class="color1" data-color="#00eeff"></li>
																		<!-- 하늘  -->
																		<li class="color1" data-color="#a805fa"></li>
																		<!-- 보-->
																		<li class="color1" data-color="#f1b0ff"></li>
																		<!-- 연보 -->
																		<li class="color1" data-color="#ffffff"></li>
																		<!-- 흰 -->
																		<li class="color1" data-color="#000000"></li>
																		<!-- 검 -->
																		<li class="color1" data-color="#6e4129"></li>
																		<!-- 갈 -->
																		<li class="color1" data-color="#828282"></li>
																		<!-- 회 -->
																		<li class="color1" data-color="#2a5c35"></li>
																		<!-- 카키  -->
																		<li class="color1" data-color="#c9b56b"></li>
																		<!-- 베이지 -->
																	</ul>
																	<div class="form-group" style="display: none;">
																		<input type="text" class="form-control" id="topColor"
																			name="topColor" style="display: none;" />
																	</div>
																</div>
															</div>
														</div>
														<div class="col-xs-6 col-md-4">
															<div class="choice" data-toggle="wizard-checkbox"
																rel="tooltip" title="Top" id="longTop"
																onclick="isChecked(this.id); topChangeColor();">
																<input type="checkbox" name="topKind" value="longTopC"
																	id="longTopC">
																<div id="longtopIcon" class="icon">
																	<img
																		src="${pageContext.request.contextPath}/resources/icon/longtop.svg" />
																</div>
															</div>
														</div>
														<div class="col-xs-6 col-md-4">
															<div class="choice" data-toggle="wizard-checkbox"
																rel="tooltip" title="Top" id="shortTop"
																onclick="isChecked(this.id); topChangeColor();">
																<input type="checkbox" name="topKind" value="shortTopC"
																	id="shortTopC">
																<div id="shorttopIcon" class="icon">
																	<img
																		src="${pageContext.request.contextPath}/resources/icon/shorttop.svg" />
																</div>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-xs-4 col-md-3">
															<div id="bottomColorList" class="container2">
																<div id="bottomColorPicker"
																	class="color-picker block-center">
																	<ul class="color-list2" style="margin-bottom: 0;">
																		<li class="color2" data-color="#ff0000"></li>
																		<!-- 빨 -->
																		<li class="color2" data-color="#ff69b4"></li>
																		<!-- 핑 -->
																		<li class="color2" data-color="#ff8400"></li>
																		<!-- 주 -->
																		<li class="color2" data-color="#ffe600"></li>
																		<!-- 노 -->
																		<li class="color2" data-color="#26ff00"></li>
																		<!-- 초 -->
																		<li class="color2" data-color="#0022ff"></li>
																		<!-- 파 -->
																		<li class="color2" data-color="#252069"></li>
																		<!-- 남 -->
																		<li class="color2" data-color="#00eeff"></li>
																		<!-- 하늘  -->
																		<li class="color2" data-color="#a805fa"></li>
																		<!-- 보-->
																		<li class="color2" data-color="#f1b0ff"></li>
																		<!-- 연보 -->
																		<li class="color2" data-color="#ffffff"></li>
																		<!-- 흰 -->
																		<li class="color2" data-color="#000000"></li>
																		<!-- 검 -->
																		<li class="color2" data-color="#6e4129"></li>
																		<!-- 갈 -->
																		<li class="color2" data-color="#828282"></li>
																		<!-- 회 -->
																		<li class="color2" data-color="#2a5c35"></li>
																		<!-- 카키  -->
																		<li class="color2" data-color="#c9b56b"></li>
																		<!-- 베이지 -->
																	</ul>
																	<div class="form-group" style="display: none;">
																		<input type="text" class="form-control"
																			id="bottomColor" name="bottomColor"
																			style="display: none;" />
																	</div>
																</div>
															</div>
														</div>
														<div class="col-xs-4 col-md-3">
															<div class="choice" data-toggle="wizard-checkbox"
																rel="tooltip" title="Bottom" id="longBottom"
																onclick="isChecked(this.id); bottomChangeColor();">
																<input type="checkbox" name="bottomKind"
																	value="longBottomC" id="longBottomC">
																<div id="longbottomIcon" class="icon">
																	<img
																		src="${pageContext.request.contextPath}/resources/icon/longbottom.svg" />
																</div>
															</div>
														</div>
														<div class="col-xs-4 col-md-3">
															<div class="choice " data-toggle="wizard-checkbox"
																rel="tooltip" title="Bottom" id="shortBottom"
																onclick="isChecked(this.id); bottomChangeColor();">
																<input type="checkbox" name="bottomKind"
																	value="shortBottomC" id="shortBottomC">
																<div id="shortbottomIcon" class="icon">
																	<img
																		src="${pageContext.request.contextPath}/resources/icon/shortbottomm.svg"
																		width="108" height="108">
																</div>
															</div>
														</div>
														<div class="col-xs-4 col-md-3">
															<div class="choice " data-toggle="wizard-checkbox"
																rel="tooltip" title="Bottom" id="skirtBottom"
																onclick="isChecked(this.id); bottomChangeColor();">
																<input type="checkbox" name="bottomKind"
																	value="skirtBottomC" id="skirtBottomC">
																<div id="skirtbottomIcon" class="icon">
																	<img
																		src="${pageContext.request.contextPath}/resources/icon/skirt.svg">
																</div>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-xs-6 col-md-4">
															<div id="onepieceColorList" class="container2">
																<div id="onepieceColorPicker"
																	class="color-picker block-center">
																	<ul class="color-list3" style="margin-bottom: 0;">
																		<li class="color3" data-color="#ff0000"></li>
																		<!-- 빨 -->
																		<li class="color3" data-color="#ff69b4"></li>
																		<!-- 핑 -->
																		<li class="color3" data-color="#ff8400"></li>
																		<!-- 주 -->
																		<li class="color3" data-color="#ffe600"></li>
																		<!-- 노 -->
																		<li class="color3" data-color="#26ff00"></li>
																		<!-- 초 -->
																		<li class="color3" data-color="#0022ff"></li>
																		<!-- 파 -->
																		<li class="color3" data-color="#252069"></li>
																		<!-- 남 -->
																		<li class="color3" data-color="#00eeff"></li>
																		<!-- 하늘  -->
																		<li class="color3" data-color="#a805fa"></li>
																		<!-- 보-->
																		<li class="color3" data-color="#f1b0ff"></li>
																		<!-- 연보 -->
																		<li class="color3" data-color="#ffffff"></li>
																		<!-- 흰 -->
																		<li class="color3" data-color="#000000"></li>
																		<!-- 검 -->
																		<li class="color3" data-color="#6e4129"></li>
																		<!-- 갈 -->
																		<li class="color3" data-color="#828282"></li>
																		<!-- 회 -->
																		<li class="color3" data-color="#2a5c35"></li>
																		<!-- 카키  -->
																		<li class="color3" data-color="#c9b56b"></li>
																		<!-- 베이지 -->
																	</ul>
																	<div class="form-group" style="display: none;">
																		<input type="text" class="form-control"
																			id="onepieceColor" name="onepieceColor"
																			style="display: none;" />
																	</div>
																</div>
															</div>
														</div>
														<div class="col-xs-6 col-md-4">
															<div class="choice" data-toggle="wizard-checkbox"
																rel="tooltip" title="Top" id="longTopOnePiece"
																onclick="isChecked(this.id); onepieceChangeColor();">
																<input type="checkbox" name="onepieceKind"
																	value="longTopOnePieceC" id="longTopOnePieceC">
																<div id="longdressIcon" class="icon">
																	<img
																		src="${pageContext.request.contextPath}/resources/icon/llongdress.svg" />
																</div>
															</div>
														</div>
														<div class="col-xs-6 col-md-4">
															<div class="choice" data-toggle="wizard-checkbox"
																rel="tooltip" title="Top" id="shortTopOnePiece"
																onclick="isChecked(this.id); onepieceChangeColor();">
																<input type="checkbox" name="onepieceKind"
																	value="shortTopOnePieceC" id="shortTopOnePieceC">
																<div id="shortdressIcon" class="icon">
																	<img
																		src="${pageContext.request.contextPath}/resources/icon/sshortdress.svg"
																		width="108" height="108" />
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane" id="humanImgFile">
													<h4 class="info-text">찾으려는 사람의 이미지 파일을 넣어주세요.</h4>
													<h2 style="margin: 0 auto; display: table;">Upload
														Picture</h2>
													<br> <br> <br> <br> <br> <input
														type="file" name="file" id="uploadfile"
														style="marin: 0 auto;" />
												</div>
												<div class="tab-pane" id="thing">
													<h4 class="info-text">무슨 물건을 찾고 있습니까?</h4>
													<div class="container">
														<div class="row">
															<div class="col-sm-10 col-sm-offset-1">
																<div class="col-sm-4">
																	<div class="choice" data-toggle="wizard-checkbox"
																		rel="tooltip" title="지갑">
																		<input type="checkbox" name="thingKind" value="wallet">
																		<div class="icon">
																			<i class="material-icons">payment</i>
																		</div>
																		<h6>Wallet</h6>
																	</div>
																</div>
																<div class="col-sm-4">
																	<div class="choice" data-toggle="wizard-checkbox"
																		rel="tooltip" title="휴대폰">
																		<input type="checkbox" name="thingKind" value="phone">
																		<div class="icon">
																			<i class="material-icons">phone_iphone</i>
																		</div>
																		<h6>Phone</h6>
																	</div>
																</div>
																<div class="col-sm-4">
																	<div class="choice" data-toggle="wizard-checkbox"
																		rel="tooltip" title="백팩">
																		<input type="checkbox" name="thingKind" value="bag">
																		<div class="icon">
																			<i class="material-icons">work</i>
																		</div>
																		<h6>Backpack</h6>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane" id="pets">
													<h4 class="info-text">어떤 종류의 동물을 찾고 있습니까?</h4>
													<div class="row">
														<div class="col-sm-10 col-sm-offset-1">
															<div class="col-sm-6">
																<div class="choice" data-toggle="wizard-checkbox"
																	rel="tooltip" title="강아지">
																	<input type="checkbox" name="petKind" value="dog">
																	<div class="icon">
																		<img
																			src="${pageContext.request.contextPath}/resources/icon/dog1.svg"
																			style="width: 70px; height: 100px;"/ >
																	</div>
																	<h6>Dog</h6>
																</div>
															</div>
															<div class="col-sm-6">
																<div class="choice" data-toggle="wizard-checkbox"
																	rel="tooltip" title="고양이">
																	<input type="checkbox" name="petKind" value="cat">
																	<div class="icon">
																		<img
																			src="${pageContext.request.contextPath}/resources/icon/cat2.svg"
																			style="width: 70px; height: 100px;" />
																	</div>
																	<h6>Cat</h6>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- tab content end -->
											<div class="wizard-footer">
												<div class="pull-right">
													<input type='button'
														class='btn btn-next btn-fill btn-danger btn-wd'
														name='next' id="nextBtn" value='Next'
														onclick="pageMove(this.value)" /> <input type='button'
														class='btn btn-finish btn-fill btn-danger btn-wd'
														id='finishBtn' name='finish' value='Finish'
														data-toggle="modal" data-target="#SearchingModal"
														onclick="swapModal()" />

												</div>
												<div class="pull-left">
													<input type='button'
														class='btn btn-previous btn-fill btn-default btn-wd'
														name='previous' value='Previous'
														onclick="pageMove(this.value)" />
												</div>
												<div class="clearfix"></div>
											</div>
										</form>
										<!-- form end -->
									</div>
									<!-- wizard card end -->
								</div>
								<!-- wizard container end -->
							</div>
							<!-- col end -->
						</div>
						<!-- row end -->
					</div>
					<!-- container end  -->
				</div>
				<!--  modal body end -->
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 팝업 끝 -->
	<!-- loading(spinner) modal -->
	<div id="SearchingModal" class="modal fade" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center">
					<h3>LOADING...</h3>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<video autoplay muted loop>
							<source
								src="${pageContext.request.contextPath}/resources/penguin2.mp4"
								type="video/mp4">
						</video>
						<div class="spinner-grow text-primary" role="status">
							<span class="sr-only">Loading...</span>
						</div>
						<div class="spinner-grow text-secondary" role="status">
							<span class="sr-only">Loading...</span>
						</div>
						<div class="spinner-grow text-success" role="status">
							<span class="sr-only">Loading...</span>
						</div>
						<div class="spinner-grow text-danger" role="status">
							<span class="sr-only">Loading...</span>
						</div>
						<div class="spinner-grow text-warning" role="status">
							<span class="sr-only">Loading...</span>
						</div>
						<div class="spinner-grow text-info" role="status">
							<span class="sr-only">Loading...</span>
						</div>
						<div class="spinner-grow text-dark" role="status">
							<span class="sr-only">Loading...</span>
						</div>
					</div>
					<div class="modal-footer" style="text-align: center"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- loading(spinner) modal end-->
	<!-- 영상 처리 부분 -->
	<div class="video-container" id="video1">
		<div class="row h-100">
			<div class="col-sm-6" style="padding-right: 0px; padding-left: 0px;">
				<video id="a" controls class="video-js"
					style="witdh: 100%; height: 100%"
					data-setup='{"fluid": true, "autoplay" : true, "muted" : true}'>
					<source
						src="${pageContext.request.contextPath}/resources/video/aaCCTV1.mp4">
					<source id="videoMp4" src="" type="video/mp4">
					<source id="videoWebm" src="" type="video/webm">
					<source id="videoOgg" src="" type="video/ogg">
				</video>
			</div>
			<div class="col-sm-6" style="padding-right: 0px; padding-left: 0px;">
				<video id="b" controls class="video-js"
					style="witdh: 100%; height: 100%;"
					data-setup='{"fluid": true, "autoplay" : true, "muted" : true}'>
					<source
						src="${pageContext.request.contextPath}/resources/video/bbCCTV1.mp4">
					<source id="videoMp4" src="" type="video/mp4">
					<source id="videoWebm" src="" type="video/webm">
					<source id="videoOgg" src="" type="video/ogg">
				</video>
			</div>
		</div>
	</div>
	<div class="video-container" id="video1">
		<div class="row h-100">
			<div class="col-sm-6" style="padding-right: 0px; padding-left: 0px;">
				<video id="c" controls class="video-js"
					style="witdh: 100%; height: 100%;"
					data-setup='{"fluid": true, "autoplay" : true, "muted" : true}'>
					<source
						src="${pageContext.request.contextPath}/resources/video/ccCCTV1.mp4">
					<source id="videoMp4" src="" type="video/mp4">
					<source id="videoWebm" src="" type="video/webm">
					<source id="videoOgg" src="" type="video/ogg">
				</video>
			</div>
			<div class="col-sm-6" style="padding-right: 0px; padding-left: 0px;">
				<video id="d" controls class="video-js"
					style="witdh: 100%; height: 100%;"
					data-setup='{"fluid": true, "autoplay" : true, "muted" : true}'>
					<source
						src="${pageContext.request.contextPath}/resources/video/ddCCTV1.mp4">
					<source id="videoMp4" src="" type="video/mp4">
					<source id="videoWebm" src="" type="video/webm">
					<source id="videoOgg" src="" type="video/ogg">
				</video>
			</div>
		</div>
	</div>
	<!-- 영상 처리 부분 끝-->
	<!-- right click 팝업 구현중 -->
	<ul class="rightclick">
		<li><a onclick="zoomin()">인물 확대</a></li>
		<li><a onclick="deletemarker()">마크다운 삭제</a></li>
	</ul>
	<!-- right click 팝업 끝 -->
	<!--   Big container   -->
	<!-- js 파일들 -->
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
	<!-- 
   <script
      src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
   -->
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.countdown.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.fancybox.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.sticky.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/wizard-op.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/colorpicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/rightclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/firstPenguin.js"></script>

	<!-- js 파일 끝 -->
	<!-- video.js base js file -->
	<script src="https://vjs.zencdn.net/7.7.5/video.js"></script>
	<!-- video.markers.js -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/videojs-markers/0.7.0/videojs-markers.js"
		integrity="sha256-voGW6/NcAMzKg/5Gsr6qz3qMo6jzb4Cub5xSw6nuAA0="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/videojs-markers/0.7.0/videojs-markers.js.map"
		integrity="undefined" crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/changeVideo.js"></script>
</body>
</html>