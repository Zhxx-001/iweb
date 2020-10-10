/*iweb在线课堂必须的数据库结构*/

/*删除数据库iweb,如果它存在的话*/
DROP DATABASE IF EXISTS iweb;
/*重新创建数据库iweb*/
CREATE DATABASE iweb CHARSET=UTF8;
/*进入数据库iweb*/
USE iweb;

#创建校区表
CREATE TABLE iw_school(
	sid INT PRIMARY KEY AUTO_INCREMENT,	#校区编号 #AUTO_INCREMENT：自增的主键
	sname VARCHAR(32), 	#名称
	pic VARCHAR(128),	#图片URL
	address VARCHAR(64),#地址
	phone VARCHAR(32),	#联系电话
	postcode CHAR(6),	#邮编
	longitude DECIMAL(9,6),	#经度
	latitude DECIMAL(8,6)	#纬度
);

INSERT INTO iw_school VALUES(NULL,'北京中关村中心','img/school/bjzgc.jpg','北京市海淀区北三环西路甲18号（大钟寺附近）中鼎大厦B座7层','010-62130963','100098',116.347527,39.972529);

INSERT INTO iw_school VALUES(NULL,'北京天坛中心','img/school/bjtt.jpg','北京市崇文区珠市口东大街6号珍贝大厦西侧3层达内科技','010-67028668','100050',116.417984,39.898658);

INSERT INTO iw_school VALUES(NULL,'北京广渠门中心','img/school/bjgqm.jpg','北京市东城区广渠门东广渠家园25号楼启达大厦一层','15321130620','100010',116.457448,39.897552);

INSERT INTO iw_school VALUES(NULL,'北京清华园中心','img/school/bjqhy.jpg','北京市海淀区花园路小关街120号万盛商务会馆A区三层','010-82676916','100088',116.386429,39.984291);

INSERT INTO iw_school VALUES(NULL,'北京万寿路中心','img/school/bjwsl.jpg','北京市海淀区万寿路西街2号文博大厦二层达内科技','010-82761288','100081',116.300901,39.916085);




INSERT INTO iw_school VALUES(NULL,'江苏省丰县宋搂中学','img/school/bjzgc.jpg','宋楼镇人民路11号','15162098172','100098',116.612423,34.578992);

INSERT INTO iw_school VALUES(NULL,'丰县孙楼镇初级中学','img/school/bjtt.jpg','孙楼街道青年路','010-67028668','100050',116.597651,34.666462);

INSERT INTO iw_school VALUES(NULL,'江苏省丰县华山中学','img/school/bjgqm.jpg','华山镇华山村','15321130620','100010',116.742113,34.640303);

INSERT INTO iw_school VALUES(NULL,'江苏省丰县中学','img/school/bjqhy.jpg','江苏省徐州市丰县中学(南环路北)','010-82676916','100088',116.599183,34.685182);

INSERT INTO iw_school VALUES(NULL,'无锡商业职业技术学院','img/school/bjwsl.jpg','无锡市滨湖区钱胡路809号','(0510)83270099','100081',120.179885,31.567127);





INSERT INTO iw_school VALUES(NULL,'无锡职业技术学院','img/school/bjzgc.jpg','无锡市滨湖区高浪西路1600号','(0510)85916000','100098',120.278627,31.502251);

INSERT INTO iw_school VALUES(NULL,'江南影视艺术职业学院','img/school/bjtt.jpg','江苏省无锡市惠山区藕塘职教园钱藕路2号','(0510)85551188','100050',120.182316,31.574378);

INSERT INTO iw_school VALUES(NULL,'无锡科技职业技术学院','img/school/bjgqm.jpg','无锡市新吴区新锡路8号','(0510)81023700','100010',120.396068,31.52616);

INSERT INTO iw_school VALUES(NULL,'南京交通职业技术学院','img/school/bjqhy.jpg','江苏省南京市江宁区龙眠大道629号','(025)86115011','100088',118.918469,31.918547);

INSERT INTO iw_school VALUES(NULL,'南京工业职业技术学院','img/school/bjwsl.jpg','江苏省南京市栖霞区仙林大学城羊山北路1号','(025)85864009','100081',118.945686,32.126757);




INSERT INTO iw_school VALUES(NULL,'江南大学','img/school/bjzgc.jpg','江苏省无锡市滨湖区蠡湖大道1800号','(0510)85912036','100098',120.277757,31.489746);

INSERT INTO iw_school VALUES(NULL,'厦门大学','img/school/bjtt.jpg','厦门市思明区思明南路422号','(0592)2180000','100050',118.108573,24.442324);

INSERT INTO iw_school VALUES(NULL,'福州大学(旗山校区)','img/school/bjgqm.jpg','福州市闽侯县乌龙江大道2号','(0591)22865001','100010',119.203482,26.062197);

INSERT INTO iw_school VALUES(NULL,'福州理工学院','img/school/bjqhy.jpg','福建省福州市连江江滨西大道8号','(0591)62990012','100088',119.477633,26.245445);

INSERT INTO iw_school VALUES(NULL,'成都艺术职业大学','img/school/bjwsl.jpg','四川省成都市新津县花源镇白云大道115号','(028)82480787','100081',103.892092,30.493563);




INSERT INTO iw_school VALUES(NULL,'广东外语外贸大学南国商学院','img/school/bjzgc.jpg','广东省广州市白云区钟落潭镇白沙村良田中路181号','(020)22245021','100098',113.390352,23.344847);

INSERT INTO iw_school VALUES(NULL,'浙江财经大学(下沙校区)','img/school/bjtt.jpg','浙江省杭州市下沙高教园区学源街18号','(0592)2180000','100050',120.401806,30.326721);

#创建讲师表
CREATE TABLE iw_teacher(
	tid INT PRIMARY KEY AUTO_INCREMENT, #讲师编号
	tname VARCHAR(64), 					#姓名
	pic VARCHAR(128),					#照片URL
	skills VARCHAR(32),					#擅长的领域
	experience VARCHAR(1024),			#工作经历
	style VARCHAR(1024)					#授课风格
);

INSERT INTO iw_teacher VALUES (NULL,'成亮','img/teacher/cl.jpg','WEB全栈开发','10年互联网开发经验， 精通HTML5，CSS3，js，vue，angualr 等网页前端技术及 php后端 开发；先后就职于多家 IT 互联网公司，曾任某网络公司技术主管，服务机构有首都师范大学、中国联通、中国石油、国家图书馆、中国摄影协会等。','讲课诙谐幽默，深处浅出，深得学生喜爱。');

INSERT INTO iw_teacher VALUES (NULL,'李然','img/teacher/cl.jpg','高级网页设计','从事前端开发多年，参与 及主导研发过多个省级政府项目及海 外项目，参与 NEC，福特等大型企业 CRM 系统的研发。项目涉及金融，汽 车，电子等多个领域。于文思海辉专 职负责前端产品线培训时，积累了大量的教学经验。','教学风格风趣幽默，细致严谨。善于以项目流程反推知识点讲解，深受学员好评。');

INSERT INTO iw_teacher VALUES (NULL,'张东','img/teacher/cl.jpg','JS高级编程','美国PMP认证高级项目经理，微软认证解决方案开发专家。先后在中软国际、中国搜索、太极计算机担任高级开发工程师，架构师，项目经理。曾担任中央外汇管理中心、中国石油、二炮工程研究院、首都国际机场技术咨询顾问。
','一切从实际项目出发，快速入门，学以致用。讲课极富激情，语言表达精准，有感染力。案例丰富、直观，步骤细致，清晰。注重从学习到实际工作的快速转化。。');

INSERT INTO iw_teacher VALUES (NULL,'程涛','img/teacher/cl.jpg','移动APP开发','曾就职于北京塞博维尔信息咨询公司，具备多年的互联网应用经验，精通PHP框架技术。在Web3.0前沿技术方面有着深入的研究，曾参与Shop EX核心模块开发。','感情充沛，富有激情，容易引起学生们的共鸣。授课时能旁征博引，使学生从诸多的材料中得出结论，并且启迪学生的想象能力。');

INSERT INTO iw_teacher VALUES (NULL,'纪盈鑫','img/teacher/cl.jpg','前端框架开发','曾就职于东软集团。参与开发家乐福，津津会员卡等多款上线app。拥有外包和产品两种开发经历。已指导并帮助学员上架多个项目到AppStore。授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。','授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员');




INSERT INTO iw_teacher VALUES (NULL,'赵晓峰','img/teacher/cl.jpg','JS高级编程','10年互联网开发经验， 精通HTML5，CSS3，js，vue，angualr 等网页前端技术及 php后端 开发；先后就职于多家 IT 互联网公司，曾任某网络公司技术主管，服务机构有首都师范大学、中国联通、中国石油、国家图书馆、中国摄影协会等。','讲课诙谐幽默，深处浅出，深得学生喜爱。');

INSERT INTO iw_teacher VALUES (NULL,'程冠琦','img/teacher/cl.jpg','ASP.NETMVC','从事前端开发多年，参与 及主导研发过多个省级政府项目及海 外项目，参与 NEC，福特等大型企业 CRM 系统的研发。项目涉及金融，汽 车，电子等多个领域。于文思海辉专 职负责前端产品线培训时，积累了大量的教学经验。','教学风格风趣幽默，细致严谨。善于以项目流程反推知识点讲解，深受学员好评。');

INSERT INTO iw_teacher VALUES (NULL,'过心露','img/teacher/cl.jpg','高级网页设计','美国PMP认证高级项目经理，微软认证解决方案开发专家。先后在中软国际、中国搜索、太极计算机担任高级开发工程师，架构师，项目经理。曾担任中央外汇管理中心、中国石油、二炮工程研究院、首都国际机场技术咨询顾问。
','一切从实际项目出发，快速入门，学以致用。讲课极富激情，语言表达精准，有感染力。案例丰富、直观，步骤细致，清晰。注重从学习到实际工作的快速转化。。');

INSERT INTO iw_teacher VALUES (NULL,'钱春英','img/teacher/cl.jpg','C#高级编程','曾就职于北京塞博维尔信息咨询公司，具备多年的互联网应用经验，精通PHP框架技术。在Web3.0前沿技术方面有着深入的研究，曾参与Shop EX核心模块开发。','感情充沛，富有激情，容易引起学生们的共鸣。授课时能旁征博引，使学生从诸多的材料中得出结论，并且启迪学生的想象能力。');

INSERT INTO iw_teacher VALUES (NULL,'鹿璐','img/teacher/cl.jpg','计算机辅助设计','曾就职于东软集团。参与开发家乐福，津津会员卡等多款上线app。拥有外包和产品两种开发经历。已指导并帮助学员上架多个项目到AppStore。授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。','授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员');




INSERT INTO iw_teacher VALUES (NULL,'陈厚桥','img/teacher/cl.jpg','WEB全栈开发','10年互联网开发经验， 精通HTML5，CSS3，js，vue，angualr 等网页前端技术及 php后端 开发；先后就职于多家 IT 互联网公司，曾任某网络公司技术主管，服务机构有首都师范大学、中国联通、中国石油、国家图书馆、中国摄影协会等。','讲课诙谐幽默，深处浅出，深得学生喜爱。');

INSERT INTO iw_teacher VALUES (NULL,'过馨露','img/teacher/cl.jpg','WEB全栈开发','从事前端开发多年，参与 及主导研发过多个省级政府项目及海 外项目，参与 NEC，福特等大型企业 CRM 系统的研发。项目涉及金融，汽 车，电子等多个领域。于文思海辉专 职负责前端产品线培训时，积累了大量的教学经验。','教学风格风趣幽默，细致严谨。善于以项目流程反推知识点讲解，深受学员好评。');

INSERT INTO iw_teacher VALUES (NULL,'潘珩','img/teacher/cl.jpg','网站设计','美国PMP认证高级项目经理，微软认证解决方案开发专家。先后在中软国际、中国搜索、太极计算机担任高级开发工程师，架构师，项目经理。曾担任中央外汇管理中心、中国石油、二炮工程研究院、首都国际机场技术咨询顾问。
','一切从实际项目出发，快速入门，学以致用。讲课极富激情，语言表达精准，有感染力。案例丰富、直观，步骤细致，清晰。注重从学习到实际工作的快速转化。。');

INSERT INTO iw_teacher VALUES (NULL,'杜海涛','img/teacher/cl.jpg','前端开发技术','曾就职于北京塞博维尔信息咨询公司，具备多年的互联网应用经验，精通PHP框架技术。在Web3.0前沿技术方面有着深入的研究，曾参与Shop EX核心模块开发。','感情充沛，富有激情，容易引起学生们的共鸣。授课时能旁征博引，使学生从诸多的材料中得出结论，并且启迪学生的想象能力。');

INSERT INTO iw_teacher VALUES (NULL,'侯玉','img/teacher/cl.jpg','WEB全栈开发','曾就职于东软集团。参与开发家乐福，津津会员卡等多款上线app。拥有外包和产品两种开发经历。已指导并帮助学员上架多个项目到AppStore。授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。','授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员');





INSERT INTO iw_teacher VALUES (NULL,'刘昱江','img/teacher/cl.jpg','WEB全栈开发','曾就职于大唐电信和互联网公司','教学严谨，授课思路清晰，善于语言表达和总结行业经验，因材施教。');

INSERT INTO iw_teacher VALUES (NULL,'周华飞','img/teacher/cl.jpg','JS高级编程','从事前端开发多年，参与 及主导研发过多个省级政府项目及海 外项目，参与 NEC，福特等大型企业 CRM 系统的研发。项目涉及金融，汽 车，电子等多个领域。于文思海辉专 职负责前端产品线培训时，积累了大量的教学经验。','教学风格风趣幽默，细致严谨。善于以项目流程反推知识点讲解，深受学员好评。');

INSERT INTO iw_teacher VALUES (NULL,'曾晔','img/teacher/cl.jpg','WEB全栈开发','美国PMP认证高级项目经理，微软认证解决方案开发专家。先后在中软国际、中国搜索、太极计算机担任高级开发工程师，架构师，项目经理。曾担任中央外汇管理中心、中国石油、二炮工程研究院、首都国际机场技术咨询顾问。
','一切从实际项目出发，快速入门，学以致用。讲课极富激情，语言表达精准，有感染力。案例丰富、直观，步骤细致，清晰。注重从学习到实际工作的快速转化。。');

INSERT INTO iw_teacher VALUES (NULL,'张志刚','img/teacher/cl.jpg','WEB全栈开发','曾就职于北京塞博维尔信息咨询公司，具备多年的互联网应用经验，精通PHP框架技术。在Web3.0前沿技术方面有着深入的研究，曾参与Shop EX核心模块开发。','感情充沛，富有激情，容易引起学生们的共鸣。授课时能旁征博引，使学生从诸多的材料中得出结论，并且启迪学生的想象能力。');

INSERT INTO iw_teacher VALUES (NULL,'丁明','img/teacher/cl.jpg','WEB全栈开发','曾就职于东软集团。参与开发家乐福，津津会员卡等多款上线app。拥有外包和产品两种开发经历。已指导并帮助学员上架多个项目到AppStore。授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。','授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员');




INSERT INTO iw_teacher VALUES (NULL,'牛犇','img/teacher/cl.jpg','WEB全栈开发','10年互联网开发经验， 精通HTML5，CSS3，js，vue，angualr 等网页前端技术及 php后端 开发；先后就职于多家 IT 互联网公司，曾任某网络公司技术主管，服务机构有首都师范大学、中国联通、中国石油、国家图书馆、中国摄影协会等。','讲课诙谐幽默，深处浅出，深得学生喜爱。');

INSERT INTO iw_teacher VALUES (NULL,'庞丽静','img/teacher/cl.jpg','WEB全栈开发','从事前端开发多年，参与 及主导研发过多个省级政府项目及海 外项目，参与 NEC，福特等大型企业 CRM 系统的研发。项目涉及金融，汽 车，电子等多个领域。于文思海辉专 职负责前端产品线培训时，积累了大量的教学经验。','教学风格风趣幽默，细致严谨。善于以项目流程反推知识点讲解，深受学员好评。');

INSERT INTO iw_teacher VALUES (NULL,'梁佳鹏','img/teacher/cl.jpg','WEB全栈开发','美国PMP认证高级项目经理，微软认证解决方案开发专家。先后在中软国际、中国搜索、太极计算机担任高级开发工程师，架构师，项目经理。曾担任中央外汇管理中心、中国石油、二炮工程研究院、首都国际机场技术咨询顾问。
','一切从实际项目出发，快速入门，学以致用。讲课极富激情，语言表达精准，有感染力。案例丰富、直观，步骤细致，清晰。注重从学习到实际工作的快速转化。。');

#创建课程类别表
CREATE TABLE iw_course_type(
	tid INT PRIMARY KEY AUTO_INCREMENT, #类别编号
	tname VARCHAR(16)  					#类别名称
);

INSERT INTO iw_course_type VALUES(NULL,'基础课程');
INSERT INTO iw_course_type VALUES(NULL,'核心课程');
INSERT INTO iw_course_type VALUES(NULL,'进阶课程');
#创建课程表

#创建用户信息表

#创建购物车表

#创建订单表

#创建用户收藏夹表

#创建...