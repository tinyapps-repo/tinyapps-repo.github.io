<?php
/**
 * Created by PhpStorm.
 * User: wenshane
 * Date: 16/11/30
 * Time: 上午11:49
 */


$title = "apt.tinyapps.cn";

//打开这个模板
$tempdata=fopen("index_template.html","r");
//读取模板中的内容
$str=fread($tempdata,filesize("index_template.html"));
//替换模板中的内容
$str=str_replace('{{ site.cydia.title }}',$title,$str);
$str=str_replace('{$center}',$file,$str);
//输出
echo $str;