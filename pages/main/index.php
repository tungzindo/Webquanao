
<div class="logo">
	<img src="./images/logo-1.png" alt="" class="img-logo">
</div>
<!-- <div class="slider">
	<img src="./images/background.jpg" alt="" class="img-slider">
</div> -->

<!-- Slideshow container -->
<div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
    <img src="./pages/main/img1.jpg" style="width:100%">
    <div class="text">1</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 3</div>
    <img src="./pages/main/img2.jpg" style="width:100%">
    <div class="text">2</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 3</div>
    <img src="./pages/main/img1.jpg" style="width:100%">
    <div class="text">3</div>
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>
<script src="/js/myjava.js"></script>



<?php
	if(isset($_GET['trang'])){
		$page = $_GET['trang'];
	}else{
		$page = 1;
	}
	if($page == '' || $page == 1){
		$begin = 0;
	}else{
		$begin = ($page*3)-3;
	}
	$sql_pro = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc ORDER BY tbl_sanpham.id_sanpham DESC LIMIT $begin,8";
	$query_pro = mysqli_query($mysqli,$sql_pro);
	
?>
<h3 class="tieude">#BECOOL BY ZUNE.X</h3>
				<ul class="product_list">
					<?php
					while($row = mysqli_fetch_array($query_pro)){ 
					?>
					<div class="hv">
					<li>
						<a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham'] ?>">
							<img src="admincp/modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?>">
							<p class="title_product"><?php echo $row['tensanpham'] ?></p>
							<p class="price_product"><?php echo number_format($row['giasp'],0,',','.').'vn??' ?></p>
							<p style="text-align: center;color:#7e1117;font-weight: 700"><?php echo $row['tendanhmuc'] ?></p>
							<p style="text-align: center;"><del class="price-old" style="color: #999;"><?php echo $row['giakm']?></del></p>
						</a>
					</li>
				</div>
					<?php
					} 
					?>
				</ul>
				<div style="clear:both;"></div>
				<style type="text/css">
					ul.list_trang {
					    padding: 0;
					    /* padding-top: 100px; */
					    list-style: none;
					}
					ul.list_trang li {
					    float: left;
					    padding: 5px 13px;
					    margin: 5px;
					    background: #7e1117;
					    display: block;
						border-radius: 10%;
					}
					ul.list_trang li a {
					    color: #fff;
					    text-align: center;
					    text-decoration: none;
					 
					}
				</style>
				<!-- <?php
				$sql_trang = mysqli_query($mysqli,"SELECT * FROM tbl_sanpham");
				$row_count = mysqli_num_rows($sql_trang);  
				$trang = ceil($row_count/3);
				?>
				<p style="margin-top: 300px; font-weight:600">Trang hi???n t???i : <?php echo $page ?>/<?php echo $trang ?> </p>
				
				<ul class="list_trang">

					<?php
					
					for($i=1;$i<=$trang;$i++){ 
					?>
						<li <?php if($i==$page){echo 'style="background: #111; "';}else{ echo ''; }  ?>><a href="index.php?trang=<?php echo $i ?>"><?php echo $i ?></a></li>
					<?php
					} 
					?> -->
					
				</ul>
				<div class="click-2">
                    <a href="index.php?quanly=danhmucsanpham&id=2">XEM TH??M</a>
                </div>
			<div class="content-1">
                <div class="text-1">
                    <p class="content-text-1">S??? KI???N N???I B???T</p>
                </div>
            <div class="ds-list">
                <div class="ds-list-1"><img src="./images/3.jpg" alt="" class="sk-img"></div>
                <div class="ds-list-1"><img src="./images/4.jpg" alt="" class="sk-img"></div>
                <div class="ds-list-1"><img src="./images/5.jpg" alt="" class="sk-img"></div>
            </div>
            </div>
			<div class="content-2">
                <div class="text-1">
                    <p class="content-text-1">COLLECTIONS</p>
                </div>
                <div class="list-3">
                    <div class="colections non-paddingleft"><img src="./images/6.jpg" alt="" class="colections-img"></div>
                    <div class="colections"><img src="./images/7.jpg" alt="" class="colections-img"></div>
                    <div class="colections"><img src="./images/8.jpg" alt="" class="colections-img"></div>
                </div>
            </div>
			<div class="content-3">
            <div class="left">
                <div class="tieude-left">
                    ABOUT US
                </div>
                <p class="content-left">ZUNE.ZX l?? th????ng hi???u th???i trang PHI GI???I T??NH PHONG C??CH NH???T.
                    T??ng m??u ch??? ?????o ????? ??EN TR???NG v???i nh???ng thi???t k??? kh??c bi???t, ?????c ????o v?? c?? t??nh.
                    ZUNE.ZX mu???n th??ng qua nh???ng b??? trang ph???c lan t???a th??ng ??i???p " PH?? V??? QUY T???C ????? T??? DO TH??? HI???N C??I T??I KH??C BI???T QUA TH???I TRANG PHI GI???I T??NH " </p>
            </div>
            <div class="right">
                <img src="./images/bao.jpg" alt="" class="img-right">
            </div>
        </div>