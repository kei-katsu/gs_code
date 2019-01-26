<html>
<head>
<meta charset="utf-8">
<title>集計結果</title>
</head>
<body>

課題６　PHP<br>アンケート集計・表示

<?php

////////////////////////////
//ファイルに書き込みを行う//
///////////////////////////


//文字作成；現在の日時を変数に取得
$name = $_POST["name"];
$mail = $_POST["mail"];
$birthday = $_POST["birthday"];


$str = date("Y-m-d H:i:s").",".$name.",".$mail.",".$birthday;
//変数はセミコロン不要。[,]は文字列なのでセミコロンで囲む

$file = fopen("data/data.txt","a");	

// ファイル読み込み

fwrite($file, $str."\r\n"); //書き込み
//[.] ドットは文字と変数をつなぐ。
//[\r\n] 改行コード、これを入れないと

fclose($file);

?>

<!--------------------------------------->
<!-- コンマ区切りテキストをテーブルで表示 -->
<!--------------------------------------->

<ul>
<li><a href="post.php">戻る</a></li>
</ul>

<table border='1'>
<tr><th>日時</th><th>名前</th><th>メールアドレス</th><th>生年月日</th></tr>
 
<?php
 
if( ($fp = fopen("data/data.txt","r"))=== false ){
	die("CSVファイル読み込みエラー");
}
 
while (($array = fgetcsv($fp)) !== FALSE) {
	
	//空行を取り除く
	if(!array_diff($array, array(''))){
		continue;
	}
	
	echo "<tr>";
	for($i = 0; $i < count($array); ++$i ){
		$elem = nl2br(mb_convert_encoding($array[$i], 'UTF-8', 'UTF-8'));
		$elem = $elem === "" ?  "&nbsp;" : $elem;
		echo("<td>".$elem."</td>");
	}
	echo "</tr>";
	
}
 
fclose($fp);
?>
 
</table>

</body>
</html>