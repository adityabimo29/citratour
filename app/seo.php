<?php
$default 	= "Bangkit Teknik Service Specialis AC SPLIT, KULKAS, MESIN CUCI, FREEZER & SHOWCASE";
$default2 	= "Bangkit Teknik Service Specialis AC SPLIT, KULKAS, MESIN CUCI, FREEZER & SHOWCASE";
$judul  	= "Bangkit Teknik Service Specialis AC SPLIT, KULKAS, MESIN CUCI, FREEZER & SHOWCASE";
$default3 	= "https://www.bangkitteknik.com";
$default4 	= "https://bangkitteknik.com";
$seourl     = "https://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$urlshare   = $seourl ; 
if($seo=='home' ){
	$tseo = $db->connection("SELECT * FROM page WHERE id_page='0' ");
	$seo = $tseo->fetch(PDO::FETCH_ASSOC);
	$judul= "$seo[title]  | $default ";
	$keyword = 	$seo['keyword'];
	$description = 	$seo['description'];
	$imageshare = "images/default-share.jpg";
	$urlshare = $seourl ;
}
elseif($seo=='about'){
	$tseo = $db->connection("SELECT * FROM page WHERE id_page='1' ");
	$seo = $tseo->fetch(PDO::FETCH_ASSOC);
	
	$judul= "$seo[judul] | $default ";
	$keyword = 	$seo['keyword'];
	$description = 	$seo['description'];

	$imageshare = "images/default-share.jpg";
	$urlshare = $seourl ;
}
elseif($seo=='portofolio'){
	$tseo = $db->connection("SELECT * FROM page WHERE id_page=2 ");
	$seo = $tseo->fetch(PDO::FETCH_ASSOC);
	
	$judul= "$seo[title]  | $default ";
	$keyword = 	$seo['keyword'];
	$description = 	$seo['description'];

	$imageshare = "images/default-share.jpg";
	$urlshare = $seourl ;
}
elseif($seo=='event'){
	$tseo = $db->connection("SELECT * FROM page WHERE id_page= 3 ");
	$seo = $tseo->fetch(PDO::FETCH_ASSOC); 
	
	$judul= "$seo[title]  | $default ";
	$keyword = 	$seo['keyword'];
	$description = 	$seo['description'];

	$imageshare = "images/default-share.jpg";
		$urlshare = $seourl ;

}
elseif($seo=='contact'){
	$tseo = $db->connection("SELECT * FROM page WHERE id_page= 8 ");
	$seo = $tseo->fetch(PDO::FETCH_ASSOC);
	
	$judul= "$seo[title]  | $default ";
	$keyword = 	$seo['keyword'];
	$description = 	$seo['description'];

	$imageshare = "images/default-share.jpg";
	$urlshare = $seourl ;
}elseif($seo=='detevent'){
	$tseo = $db->connection("SELECT * FROM event WHERE id_event = $id_seo ");
	$seo = $tseo->fetch(PDO::FETCH_ASSOC);
	
	
	$des = htmlentities(strip_tags(preg_replace("/&#?[a-z0-9]+;/i","",$seo["deskripsi"])));
	$des2 = substr($des,0,strrpos(substr($des,0,177)," "));
 

	$judul= "$seo[judul]";
	$keyword = $seo['keyword'];
	$description = $des2;

	$imageshare = "images/event/".$seo['gambar'];
	$urlshare = $seourl ;

	
}elseif($seo=='detfoto'){
	$tirl = $db->read('foto', '*', "id_foto = $id_seo ");
	$ttirl = $tirl->fetch(PDO::FETCH_ASSOC);

	$des = htmlentities(strip_tags(preg_replace("/&#?[a-z0-9]+;/i","",$ttirl["deskripsi"])));
	$des2 = substr($des,0,strrpos(substr($des,0,177)," "));

	$judul= "$ttirl[judul] | $default";
	$keyword = "$ttirl[keyword]";
	$description = "$ttirl[description]";

	$imageshare = "images/foto/$ttirl[gambar]";
	$urlshare = $seourl ;
}elseif($seo=='detartikel'){
	$tirl = $db->connection("SELECT * FROM artikel WHERE id_artikel= $id_seo ");
	$ttirl = $tirl->fetch(PDO::FETCH_ASSOC);

	$des = htmlentities(strip_tags(preg_replace("/&#?[a-z0-9]+;/i","",$ttirl["deskripsi"])));
	$des2 = substr($des,0,strrpos(substr($des,0,177)," "));

	$judul= "$ttirl[judul] | $default";
	$keyword = "$ttirl[keyword]";
	$description = "$ttirl[description]";

	$imageshare = "images/artikel/$ttirl[gambar]";
	$urlshare = $seourl ;
}elseif($seo=='detpage'){
	$tirl = $db->connection("SELECT * FROM page WHERE id_page= $id ");
	$ttirl = $tirl->fetch(PDO::FETCH_ASSOC);

	$des = htmlentities(strip_tags(preg_replace("/&#?[a-z0-9]+;/i","",$ttirl["deskripsi"])));
	$des2 = substr($des,0,strrpos(substr($des,0,177)," "));

	$judul= "$ttirl[judul] | $default";
	$keyword = "$ttirl[keyword]";
	$description = "$ttirl[description]";

	$imageshare = "images/default-share.jpg";
	$urlshare = $seourl ;
}else{
	$tseo = $db->connection("SELECT judul, keyword, description FROM page WHERE id_page='0'");
	$seo = $tseo->fetch(PDO::FETCH_ASSOC);

	$judul= $default;
	$keyword = "$seo[keyword]";
	$description = "$seo[description]";

	$imageshare = "images/default-share.jpg";
		$urlshare = $seourl ;
}
?>

    <title><?php echo $judul; ?></title>
    <meta name="keywords" content="<?php echo $keyword; ?>">
    <meta name="description" content="<?php echo $description; ?>">
    
    <meta name="googlebot" content="index,follow">
    <meta name="googlebot-news" content="index,follow">
    <meta name="robots" content="index,follow">
    <meta name="Slurp" content="all">
    <meta property="fb:app_id" content="501046580289991">
    <meta property="og:title" content="<?php echo $judul; ?>">
    <meta property="og:type" content="article">
    <meta property="og:site_name" content="<?php echo $default; ?>">

    <meta name="image_src" content="<?php echo $default3 ?>/<?php echo $imageshare ?>">
    <meta property="og:image" content="<?php echo $default3 ?>/<?php echo $imageshare ?>">
    <meta property="og:image:alt" content="<?php echo $default3 ?>/<?php echo $imageshare ?>">
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:width" content="620" />
    <meta property="og:image:height" content="413" />
    <meta property="og:url" content="<?php echo $urlshare ?>">

    <link rel="canonical" href="<?php echo $urlshare ?>">

    <meta property="og:description" content="<?php echo $description; ?>">
    <meta name="news_keywords" content="<?php echo $keyword; ?>">
    <link rel="shortlink" href="<?php echo $default3 ?>">