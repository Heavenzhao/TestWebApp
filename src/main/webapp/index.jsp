<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>欢迎访问Maven项目</title>
<script type="text/javascript">
function fake_click(obj) {
    var ev = document.createEvent("MouseEvents");
    ev.initMouseEvent(
        "click", true, false, window, 0, 0, 0, 0, 0
        , false, false, false, false, 0, null);
    obj.dispatchEvent(ev);
}

function export_raw(name, data) {
    var urlObject = window.URL || window.webkitURL || window;
    var export_blob = new Blob([data]);
    var save_link = document.createElementNS("http://www.w3.org/1999/xhtml", "a");
    save_link.href = urlObject.createObjectURL(export_blob);
    save_link.download = name;
    fake_click(save_link);
}

function genXmlDoc() {
    var content = '<?xml version="1.0" encoding="utf-8" ?>\n';
	content += '<entrys>\n';
	content += '<name>中文杜甫</name>\n';
	content += '</entrys>';
	export_raw('test.xml',content);
}

function openExe() {
	window.location.href = "liexplorer://D:\test\navicat.xml";
}
</script>
</head>
<body>
 <h1>欢迎访问Maven项目！</h1>
 <table>
 	<tr>
 		<td><input type="button" onclick="genXmlDoc();" value="生成xml文件"/></td>
 		<td><input type="button" onclick="openExe();" value="启动Navicat.exe"/></td>
 	</tr>
 </table>
</body>
</html>