<?php
$mysql_id=mysql_connect("localhost","root") or mysql_error();
if ($mysql_id){
    echo "mysql connection successful";
}else{
    echo mysql_error();
}
