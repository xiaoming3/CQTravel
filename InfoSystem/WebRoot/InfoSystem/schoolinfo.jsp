<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@ page import="com.bean.User"%>
<%
	User u = (User) session.getAttribute("user");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>学校简介</title>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/style.css">
<script type="text/javascript" src="../js/page.js"></script>
<script type="text/javascript">
	window.onload = function() {
		menufocus();
	}
</script>
</head>

<body>
	<div id="header">
		<div class="wrap">
			<div id="top"></div>
			<div class="bg"></div>
			<div class="login">
				<span><a href="<%=u==null?"resetpwd.jsp":"alterpwd.jsp" %>"><%=u==null?"找回密码":"修改密码" %></a></span>
				<span>  |  </span>
				<span><a href="<%=u==null?"login.jsp":"loginout.jsp" %>"><%=u==null?"登录":"注销" %></a></span>
			</div>
			<div>
				<img id="logo" src="../images/logo.png"> <img id="motto"
					src="../images/motto.png">
			</div>
		</div>

	</div>

	<div class="menu" id="nav">
		<div class="wrap">
			<ul>
				<li><a href="../index.jsp">首页</a>
					<ul class="menu-inner"></ul></li>
				<%
					if (u != null) {
				%>
				<li><a href="personalpage.jsp">个人中心</a></li>
				<%
					}
				%>
				<li><a href="">学校概况</a>
					<ul class="menu-inner">

						<li><a href="">学校简介</a></li>
						<li><a href="academypage.jsp">学院导航</a></li>
						<li><a href="majorpage.jsp">学校机构</a></li>
						<li><a href="http://xylyh.cqupt.edu.cn/index.html"
							target="_blank">重邮校友</a></li>
						<li><a href="http://202.202.43.154/">虚拟校园</a></li>
					</ul></li>
				<li>
					<a href="teacherinfo.jsp">师资队伍</a>
					<ul class="menu-inner">
                		
                		<li><a href="teacherinfo.jsp">师资概况</a></li>
                		<li><a href="teacherlist.jsp">部分师资</a></li>
           			</ul>
				</li>
				<li>
					<a href="subjectinfo.jsp">学科建设</a>
					<ul class="menu-inner">
                		
                		<li><a href="subjectinfo.jsp">简介</a></li>
                		<li><a href="degreeinfo.jsp">硕士/博士学位授权学科</a></li>
                		<li><a href="impsubject.jsp">省部级重点学科</a></li>
           			</ul>
				</li>
				<li>
					<a href="scientific.jsp">科学研究</a>
					<ul class="menu-inner">
                		
                		<li><a href="scientific.jsp">科研机构</a></li>
                		<li><a href="achievements.jsp">科研成果</a></li>
                		<li><a href="http://journal.cqupt.edu.cn/jcuptnse/index.aspx" target="_blank">学术刊物</a></li>
                		<li><a href="http://cxy.cqupt.edu.cn/portal.php" target="_blank">产学研</a></li>
                		<li><a href="http://skc.cqupt.edu.cn/" target="_blank">社科在线</a></li>
                		<li><a href="http://202.202.32.194/" target="_blank">科技在线</a></li>
           			</ul>
				</li>
				<li>
					<a href="http://jwzx.cqupt.edu.cn/" target="_blank">人才培养</a>
					<ul class="menu-inner">
                		
                		<li><a href="http://jwzx.cqupt.edu.cn/" target="_blank">本科教育</a></li>
                		<li><a href="http://gs.cqupt.edu.cn/" target="_blank">研究生教育</a></li>
                		<li><a href="http://gjc.cqupt.edu.cn/" target="_blank">留学生教育</a></li>
                		<li><a href="http://cjy.cqupt.edu.cn/" target="_blank">继续教育</a></li>
                		<li><a href="http://vlab.cqupt.edu.cn/" target="_blank">示范中心</a></li>
           			</ul>
				</li>
				<li>
					<a href="enroll.jsp">招生就业</a>
					<ul class="menu-inner">
                		
                		<li><a href="enroll.jsp">招生信息</a></li>
                		<li><a href="http://job.cqupt.edu.cn/" target="_blank">就业信息</a></li>
           			</ul>
				</li>
				<li>
					<a href="campusview.jsp">校园文化</a>
					<ul class="menu-inner">
                		
                		<li><a href="http://202.202.43.36:8080" target="_blank">大学生文化素..</a></li>
                		<li><a href="campusview.jsp">校园风光</a></li>
                		<li><a href="https://redrock.cqupt.edu.cn/jsns/" target="_blank">学生活动</a></li>
           			</ul>
				</li>
				<li>
					<a href="calendar.jsp">公共服务</a>
					<ul class="menu-inner">
                		
                		<li><a href="calendar.jsp">重邮校历</a></li>
                		<li><a href="campusmap.jsp">校园地图</a></li>
                		<li><a href="http://dag.cqupt.edu.cn/" target="_blank">档案查询</a></li>
                		<li><a href="psearch.jsp">个人查询</a></li>
           			</ul>
				</li>
				
			</ul>
		</div>
	</div>

	<div id="content">
		<div class="personal wrap">
			<div class="leftbox">
				<div class="lab">
					<div class="tal">
						<strong>学校概况</strong>
					</div>
					<ul class="cdlist">
						<li><a href="">学校简介</a></li>
						<li><a href="academypage.jsp">学院导航</a></li>
						<li><a href="majorpage.jsp">学校机构</a></li>
						<li><a href="http://xylyh.cqupt.edu.cn/index.html"
							target="_blank">重邮校友</a></li>
						<li><a href="http://202.202.43.154/">虚拟校园</a></li>
					</ul>

				</div>
			</div>

			<div class="rightbox">
				<h2>学校概况 > 学校简介</h2>
				<div class="detail">
					<p>重庆邮电大学是国家布点设立并重点建设的几所邮电高校之一，是工业和信息化部与重庆市共建的一所以信息科学技术为特色和优势，在邮电通信行业、信息产业领域，在西部乃至全国具有重要地位和影响的教学研究型大学。</p>
					<p>学校发轫于1950年，在抗战时期交通部邮政总局原址上开办邮政人员培训班；在此基础上，先后举办西南邮电分校、重庆邮电学校和重庆电信学校；1959
						年由国务院命名为重庆邮电学院,并开始本科教育；1965年成为当时四川省招收研究生的10所院校之一；“文革”期间，于1970年改建为电信总局529厂，1973年改建为邮电部第九研究所，1979年恢复办学。2000年由原信产部划转重庆市管理，实行部市共建。近年来，学校抓住西部大开发、重庆大建设、信息产业大发展的历史机遇，立足行业，服务地方，加强建设，加快发展，2006
						年更名为重庆邮电大学，2013年批准为博士学位授予单位。</p>
					<p>学校现有在校学生2.4万余人，其中研究生 3000余人。在职教职工 1600 余人，其中教授等正高级职称
						180余人，副教授等副高职称近400人，
						400余位博士生导师和硕士生导师，外聘了中国科学院、中国工程院和英国、加拿大、美国、波兰、印度等国20
						余名院士及100余位知名专家学者为我校兼职教授或名誉教授，我校校友、中国工程院原副院长邬贺铨院士为我校名誉校长、第一届校董事会主席。学校有“国家百千万人才工程”、教育部“新世纪优秀人才支持计划”、省部级学术技术带头人、有突出贡献的中青年专家、重庆市“百人计划”专家、重庆市百名学术学科领军人才培养计划人选、“巴渝学者”特聘教授等各类高层次人才50余人，全国“五一劳动奖章”、全国模范教师、全国师德标兵、全国高等学校优秀骨干教师、重庆市名师、重庆市优秀教育工作者等获得者100余人，国家及省部级科技创新团队、教学团队等22支。</p>
					<p>学校坚持育人为本，办学60余年来，为信息通信行业和地方培养输送了9万余名各类人才，被誉为“中国信息通信人才的摇篮”。现为全国大学生文化素质教育基地、全国首批信息专业人才培训基地、全国首批通信科普教育基地、重庆市软件人才和微电子人才培养基地、重庆市研究生教育创新基地。学校主动适应信息行业产业发展需求，加强学科专业建设。现有15个学院，47个本科专业，12个一级学科、38个二级学科硕士学位授权点，
						2个一级学科博士学位授权点，在8个学科领域招收培养工程硕士，经教育部批准具有推荐本科生免试攻读研究生资格。学校深入实施质量工程，现有11个省部级重点学科、5个国家级特色专业、11个重庆市特色专业，5个国家级工程实践教育中心，8个国家及重庆市实验教学示范中心，27门国家及重庆市精品课程和双语教学示范课程，16个国家及重庆市教学团队，27个中央与地方共建实验室。</p>
					<p>学校创新人才培养模式，积极开展大类培养，大力实施“IT精英人才培养计划”、“外语+专业”中加合作人才培养项目及“1+2+1”、“2+2”、“4+1”等国际化人才培养计划，与美国、英国、加拿大、意大利、日本、韩国、新加坡等国和港澳台地区高校合作开展人才培养、短期学生交换、带薪实习等项目，组建了“重邮—惠普软件学院”、“重庆国际半导体学院”,“微软重庆软件外包服务人才培训基地”，与企业联合开展定制式人才培养项目，是中国政府奖学金资助留学生项目高校。近年来，学校不断深化教育教学改革，承担国家及部省级教改项目100余项，获国家级教学成果二等奖3项，重庆市教学成果一等奖8项；学校高度重视学生创新创业教育和实践能力培养，已建成校外实习实训和就业基地200余个，学生参加第十一届“挑战杯”成绩位列全国高校第21位，参加数模竞赛成绩连续两年排名全国高校第二，参加第八届“挑战杯”大学生创业计划竞赛获全国金奖，参加2012年“全国大学生电子设计竞赛”捧得该项赛事最高荣誉“TI杯”，参加全国电子设计、数学建模、外语竞赛等获国家级奖励300余项，部省级奖励1000余项；学校本科毕业生就业率保持在95％以上，毕业研究生供不应求，成为全国高校毕业生就业工作“五十强”。</p>
					<p>学校坚持自主创新，是全国信息产业科技创新先进集体和国家高技术产业化示范工程基地，被誉为“中国数字通信发源地”。学校现建有“
						国家3G军民结合终端设备动员中心”、全国首个“信息无障碍工程研发中心”等38个国家发改委、工信部、教育部及重庆市重点实验室、工程研究中心和人文社科基地。学校在通信网及测试技术、新一代宽带无线移动通信、计算机网络与信息安全、智能信息处理、工业以太网（EPA）与传感器网络、先进制造与信息化技术、微电子技术与专用芯片设计等领域，承担了一大批重大科研项目，曾先后成功研制第一套符合国际电联标准的24
						路、30/32 路脉冲编码机和120
						路复接设备及其配套仪表，参与制定第三代移动通信标准并设计出世界上第一颗采取0.13微米工艺的TD—SCDMA基带芯片，制定了我国工业自动化领域第一个拥有自主知识产权的EPA国际标准，研制出我国安全领域信息隔离与交换的关键设备，研发出全球首款支持三大工业无线国际标准的工业物联网核心芯片，先后荣获全国科学大会奖、国家技术发明奖、国家科技进步奖、中国高校十大科技进展等殊荣。近五年，学校承担了包括国家科技重大专项、973、863项目、国家自然科学基金重点项目在内的国家及省部级科研项目800余项，获国家及省部级科研成果奖70余项，其中荣获国家技术发明奖、国家科技进步奖7项，获全国教育科研成果奖和教育部人文社科奖2项，主要科技工作指标进入全国高校百强之列。</p>
					<p>学校坚持开放办学，立足信息行业，主动服务地方经济社会发展，不断探索产学研结合新模式，努力构建开放办学大平台。学校成立了董事会，与中国电信、中国移动、中国联通、中国邮政、华为、中兴、大唐、普天、联想等行业著名企业，与中国科学院、中国社科院、中国电子科技集团、工信部电信科学研究院等科研院所，与长安、四联、机电控股、重钢、力帆、富士康（重庆）等在渝大型企业，与重庆两江新区、南岸区、西永微电子园、茶园工业园区等建立了紧密的产学研合作关系。学校注重国际合作与交流，积极推进国际化进程，与惠普、微软、IBM、思科、甲骨文、爱立信、诺基亚等国际IT龙头企业联合开展人才培养和科研合作，与国外和港澳台地区50余所高校开展学术交流、联合办学及共建研发基地。</p>
					<p>学校地处于重庆主城南山风景区内，坐落在森林公园环抱之中。占地 3800 亩，校舍建筑面积63万平方米，图书230余万册
						，2万余台微机联网运行，新一代数字校园建有信息管理服务系统、红岩网校、文峰网络课堂、重邮e站手机报等新媒体平台。校园鸟语花香，环境优美，人与自然和谐发展，是学习生活、成长成才的好地方。学校先后被评为全国文明单位、全国精神文明建设先进单位、全国模范职工之家、全国学校及周边治安综合治理先进集体、全国绿化模范单位、重庆市最佳文明单位、重庆市森林单位、重庆市园林式单位。学校被命名为重庆市首批“绿色校园”、“数字校园”示范学校和“平安校园”示范单位。</p>
					<p>继往开来，再展宏图。学校将坚持科学发展、突出办学特色、推进改革创新、扩大开放合作、加强内涵提升，努力建设成为中国西部信息科技创新与高层次人才培养的重要基地，建设成为特色鲜明、优势突出，在信息通信领域具有重要影响的高水平教学研究型大学，为我国信息产业和地方经济社会发展做出新的更大贡献。</p>
				</div>
			</div>
		</div>

	</div>

	<div id="footer">
		<span>联系管理员 | 重庆邮电大学 | 重庆市南岸区崇文路2号 | 400065</span>
	</div>

</body>
</html>
