BEGIN TRANSACTION;
CREATE TABLE "QuestionBank" (

  "quiz_id" integer NOT NULL,

  "quiz_content" text NOT NULL,

  "answer_id" text NOT NULL,

  "answer_content" text NOT NULL,

  "quiz_type" integer(1) NOT NULL,

  PRIMARY KEY ("quiz_id"),

  CONSTRAINT "quiz_type" CHECK (quiz_type in (1,2,3,4))

);
INSERT INTO "QuestionBank" VALUES(112403,'在数据管理技术的发展过程中，经历了人工管理阶段、文件系统阶段和数据库系统阶段。在这几个阶段中，数据独立性最高的是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 阶段。','350043','A、数据库系统；
',3);
INSERT INTO "QuestionBank" VALUES(112406,'是存储在计算机内有结构的数据的集合。','350056','B、数据库；
',3);
INSERT INTO "QuestionBank" VALUES(112407,'在数据库中存储的是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','350061','C、数据以及数据之间的联系；
',3);
INSERT INTO "QuestionBank" VALUES(112411,'<p>数据库系统的核心是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 。</p>','350076','B、<p>数据库管理系统；</p>
',3);
INSERT INTO "QuestionBank" VALUES(112412,'下述关于数据库系统的正确叙述是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 。','350080','B、数据库的数据项之间和记录之间都存在联系；
',3);
INSERT INTO "QuestionBank" VALUES(112413,'<p>在数据库技术中，为提高数据库的逻辑独立性和物理独立性，数据库的结构被划分成用户级、 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 和存储级三个层次。</p>','350085','C、<p>逻辑级；</p>
',3);
INSERT INTO "QuestionBank" VALUES(112414,'数据库(DB)、数据库系统(DBS)和数据库管理系统(DBMS)三者之间的关系是 &nbsp; &nbsp; &nbsp;。','350087','A、DBS包括DB和DBMS；
',3);
INSERT INTO "QuestionBank" VALUES(112416,'数据库管理系统(DBMS)是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 。','350097','C、一组软件；
',3);
INSERT INTO "QuestionBank" VALUES(112419,'<p>数据库管理系统能实现对数据库中数据的查询、插入、修改和删除等操作，这种功能称为 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。</p>','350109','C、<p>数据操纵/查询功能；</p>
',3);
INSERT INTO "QuestionBank" VALUES(112420,'在数据库的三级模式结构中，描述数据库中全体数据的全局逻辑结构和特征的是<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','350114','D、模式；
',3);
INSERT INTO "QuestionBank" VALUES(112421,'实体是信息世界中的术语，与之对应的数据库术语为 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','350118','D、记录；
',3);
INSERT INTO "QuestionBank" VALUES(112422,'按照传统的数据模型分类，数据库系统可以分为三种类型 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','350121','C、层次、网状和关系；
',3);
INSERT INTO "QuestionBank" VALUES(112423,'层次模型不能直接表示 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 。','350125','C、m：n关系；
',3);
INSERT INTO "QuestionBank" VALUES(112424,'关系数据模型 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','350130','D、可以表示实体间的上述三种联系；
',3);
INSERT INTO "QuestionBank" VALUES(112425,'在数据库设计中用关系模型来表示实体和实体之间的联系。关系模型的结构是 &nbsp; &nbsp; &nbsp;。','350132','B、二维表结构；
',3);
INSERT INTO "QuestionBank" VALUES(112426,'数据库三级模式体系结构的划分，有利于保持数据库的 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 。','350135','A、数据独立性；
',3);
INSERT INTO "QuestionBank" VALUES(112428,'关系数据库管理系统应能实现的专门关系运算包括 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 。','350144','B、选择、投影、连接；
',3);
INSERT INTO "QuestionBank" VALUES(112429,'对关系模型叙述错误的是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 。','350150','D、不具有连接操作的DBMS也可以是关系数据库系统；
',3);
INSERT INTO "QuestionBank" VALUES(112430,'关系模型中，一个候选码是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','350153','C、可由一个或多个其值能惟一标识该关系模式中任何元组的属性组成；
',3);
INSERT INTO "QuestionBank" VALUES(112431,'在一个关系中如果有这样一个属性存在，它的值能惟一地标识关系中的每一个元组，称这个属性为 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 。','350155','A、候选码；
',3);
INSERT INTO "QuestionBank" VALUES(112432,'同一个关系模型的任两个元组值 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 。','350159','A、不能全同；
',3);
INSERT INTO "QuestionBank" VALUES(112433,'在通常情。况下，下面的关系中不可以作为关系数据库的关系是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 。','350166','D、R4(学生号，学生名，简历)；
',3);
INSERT INTO "QuestionBank" VALUES(112434,'一个关系数据库文件中的各条记录 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','350168','B、前后顺序可以任意颠倒，不影响库中的数据关系；
',3);
INSERT INTO "QuestionBank" VALUES(112435,'<p>在关系代数的专门关系运算中，从表中取出满足特定属性(集)的操作称为 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ；</p>','350172','B、<p>投影；</p>
',3);
INSERT INTO "QuestionBank" VALUES(112436,'从关系中选出部分属性构造新的关系的操作称为 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ；','350176','B、投影；
',3);
INSERT INTO "QuestionBank" VALUES(112437,'将两个关系中具有共同属性值的元组连接到一起构成新表的操作称为 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','350181','C、连接；
',3);
INSERT INTO "QuestionBank" VALUES(112438,'自然连接是构成新关系的有效方法。一般情况下，当对关系R和S使用自然连接时，要求R和S含有一个或多个共有的 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','350186','D、属性；
',3);
INSERT INTO "QuestionBank" VALUES(112439,'关系运算中花费时间可能最长的运算是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','350189','C、笛卡尔积；
',3);
INSERT INTO "QuestionBank" VALUES(112440,'关系模式的任何属性 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','350191','A、不可再分；
',3);
INSERT INTO "QuestionBank" VALUES(112441,'在关系代数运算中，五种基本运算为 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','350197','C、并、差、选择、投影、乘积(笛卡儿积)；
',3);
INSERT INTO "QuestionBank" VALUES(112442,'关系代数中，从两个关系中找出相同元组的运算称为 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;运算。','350200','B、交；
',3);
INSERT INTO "QuestionBank" VALUES(112443,'关系代数中，从两个关系中找出所有元组的运算称为 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;运算。','350203','A、并；
',3);
INSERT INTO "QuestionBank" VALUES(113204,'在数据库中，把满足以下两个条件的基本层次联系的集合称为“层次模型”：','352913,352914','A、有且仅有一个结点无双亲，这个结点称为“根结点”；
B、除根节点外,其他结点有且仅有一个双亲；
',4);
INSERT INTO "QuestionBank" VALUES(113205,'在数据库中，把满足以下两个条件的基本层次结构的集合称为“网状模型”：','352919,352920','C、允许一个以上结点无双亲；
D、一个结点可以有多个双亲；
',4);
INSERT INTO "QuestionBank" VALUES(113206,'目前应用在数据库技术中的模型有关系、网状和层次模型，它们是依据针对概念模型不同的计算机实现方式而区分：','352922','B、描述实体与实体之间联系的不同方式来划分的；
',3);
INSERT INTO "QuestionBank" VALUES(113210,'实体型之间具有一对一？','352938,352942','A、学校与校长；
E、班级与班长；
',4);
INSERT INTO "QuestionBank" VALUES(113211,'<p>实体型之间具有一对多？</p>','352945,352946','C、<p>系与教师；</p>
D、<p>车间与工人；</p>
',4);
INSERT INTO "QuestionBank" VALUES(113212,'实体型之间具有多对多？','352950,352951,352952','C、学生与课程；
D、医生与药品；
E、病人与药品；
',4);
INSERT INTO "QuestionBank" VALUES(113213,'数据库逻辑独立性','352955','C、数据库模式发生变化，应用程序相对不变
',3);
INSERT INTO "QuestionBank" VALUES(113214,'数据库物理独立性','352960','D、数据库内模式发生变化，应用程序相对不变
',3);
INSERT INTO "QuestionBank" VALUES(113215,'三级模式','352961,352962,352964','A、内模式
B、外模式
D、模式
',4);
INSERT INTO "QuestionBank" VALUES(113268,'已知系(系编号，系名称，系主任，电话，地点),系关系的主码和外键是?','353174','B、系编号，系主任；
',3);
INSERT INTO "QuestionBank" VALUES(113269,'· &nbsp;自然连接一定是等值连接，但等值连接不一定是自然连接。','353177','A、正确
',2);
INSERT INTO "QuestionBank" VALUES(113270,'SQL语言是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;的语言，易学习。','353180','B、非过程化；
',3);
INSERT INTO "QuestionBank" VALUES(113271,'SQL语言是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;语言。','353185','C、关系数据库；
',3);
INSERT INTO "QuestionBank" VALUES(113272,'SQL语言具有 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;的功能。','353188','B、数据定义、数据操纵、数据控制；
',3);
INSERT INTO "QuestionBank" VALUES(113273,'SQL语言的数据操纵语句包括SELECT，INSERT，UPDATE和DELETE等。其中最重要的，也是使用最频繁的语句是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 。','353191','A、SELECT；
',3);
INSERT INTO "QuestionBank" VALUES(113274,'SQL语言具有两种使用方式，分别称为交互式SQL和 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','353197','C、嵌入式SQL；
',3);
INSERT INTO "QuestionBank" VALUES(113275,'SQL语言中，实现数据检索的语句是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','353199','A、SELECT；
',3);
INSERT INTO "QuestionBank" VALUES(113276,'下列SQL语句中，修改表结构的是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 。','353203','A、ALTER；
',3);
INSERT INTO "QuestionBank" VALUES(113277,'<p>S(S#，SN，SEX，AGE，DEPT)<br/> &nbsp; &nbsp;C(C#，CN)<br/> &nbsp; &nbsp;SC(S#，C#，GRADE)<br/> &nbsp; &nbsp;其中：S#为学号，SN为姓名，SEX为性别，AGE为年龄，DEPT为系别，C#为课程号，CN为课程名，GRADE为成绩。<br/>检索所有比“王华”年龄大的学生姓名、年龄和性别。正确的SELECT语句是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。</p>','353207','A、<p>SELECT SN，AGE，SEX FROM S&nbsp;<span>&nbsp;WHERE AGE＞(SELECT AGE FROM S&nbsp;</span><span>&nbsp;&nbsp;WHERE SN=&#39;王华&#39;)；</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(113278,'<p>三个表即学生表S、课程表C和学生选课表SC，它们的结构如下：<br/> &nbsp; &nbsp;S(S#，SN，SEX，AGE，DEPT)<br/> &nbsp; &nbsp;C(C#，CN)<br/> &nbsp; &nbsp;SC(S#，C#，GRADE)<br/> &nbsp; &nbsp;其中：S#为学号，SN为姓名，SEX为性别，AGE为年龄，DEPT为系别，C#为课程号，CN为课程名，GRADE为成绩。<br/>检索选修课程“C2”的学生中成绩最高的学生的学号。正确的SELECT语句是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。</p>','353221','D、<p><span>SELECT S# FORM SC&nbsp;</span><span>&nbsp;WHERE C#=&#39;C2&#39; AND GRADE＞＝ALL(SELECT GRADE FORM SC&nbsp;WHERE C#=&#39;C2&#39;)；</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(113279,'假定学生关系是S(S#，SNAME，SEX，AGE)，课程关系是C(C#，CNAME，TEACHER)，学生选课关系是SC(S#，C#，GRADE)。<br> &nbsp; &nbsp;要查找选修“COMPUTER”课程的“女”学生姓名，将涉及到关系 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','353236','D、 S，C，SC
',3);
INSERT INTO "QuestionBank" VALUES(113280,'如下面的数据库的表中，若职工表的主关键字是职工号，部门表的主关键字是部门号，SQL操作 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 不能执行。<br><br>职工表<br>职工号 职工名 部门号 工资<br>001 李红 01 580<br>005 刘军 01 670<br>025 王芳 03 720<br>038 张强 02 650<br>部门表<br>部门号 部门名 主任<br>01 人事处 高平<br>02 财务处 蒋华<br>03 教务处 许红<br>04 学生处 杜琼','353238','B、将行(‘005，’，‘乔兴’，‘04’，750)插入到职工表中；
',3);
INSERT INTO "QuestionBank" VALUES(113281,'若用如下的SQL语句创建一个student表：<br> &nbsp; &nbsp;CREATE TABLE student(NO C(4) NOT NULL，<br> &nbsp; &nbsp;NAME C(8) NOT NULL，<br> &nbsp; &nbsp;SEX C(2)，<br> &nbsp; &nbsp;AGE N(2))<br> &nbsp; &nbsp;可以插入到student表中的是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','353242','B、(‘1031’，‘曾华’，NULL，NULL)；
',3);
INSERT INTO "QuestionBank" VALUES(113282,'<p>三个表即学生表S、课程表C和学生选课表SC，它们的结构如下：<br/> &nbsp; &nbsp;S(S#，SN，SEX，AGE，DEPT)<br/> &nbsp; &nbsp;C(C#，CN)<br/> &nbsp; &nbsp;SC(S#，C#，GRADE)<br/> &nbsp; &nbsp;其中：S#为学号，SN为姓名，SEX为性别，AGE为年龄，DEPT为系别，C#为课程号，CN为课程名，GRADE为成绩。检索学生姓名及其所选修课程的课程号和成绩。正确的SELECT语句是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。</p>','353247','C、<p><span>SELECT S．SN，SC.C#，GRADE&nbsp;<span>&nbsp; &nbsp; &nbsp; &nbsp; FROM S，SC&nbsp;<span>&nbsp; &nbsp; &nbsp; &nbsp; WHERE S.S#=SC.S#；</span></span></span></p>
',3);
INSERT INTO "QuestionBank" VALUES(113527,'X→Y，当下列哪一条成立时，称为平凡的函数依赖（）。','353821','C、 Y∈X&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113528,'下列关于关系模式的码和外码的叙述中，哪一条是正确的？','353824','B、 外码可以是单个属性，也可以是属性组&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113529,'下列关于函数依赖的叙述中，哪一条是不正确的（）。','353827','A、由X→YZ，则X→Y， Y→Z&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113530,'下列叙述中，哪个是不正确的？　 S(S#,SNAME，SEX, AGE，DEPARTMENT）主码是S# 　　C（C#，CNAME, TEACHER）主码是C# 　　SC（S#, C#, GRADE）主码是（S#，C#） 　　为了便于识别，当外键与相应的主键属于不同关系时，往往给它们以相同的名字。','353834','D、 可以任意删除每个关系中的元组&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113531,'下列哪一条属于关系数据库的规范化理论要解决的问题？','353836','B、 如何构造合适的数据库逻辑结构&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113532,'下列哪些条不属于Armstrong公理系统中的基本推理规则？ 　　I．若Y为X的子集,则X→Y　II．若X→Y，则XZ→YZ　III. 若X→Y,且Z为Y的子集,则X→Z 　　IV．若X→Y,且Y→Z,则X→Z　V．若X→Y，且X→Z,则X→YZ','353841','C、 仅III和V　&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113533,'下列属性组中哪个（些）是关系R的候选码？ 基于以下描述：关系模式R（A, B, C, D, E），根据语义有如下函数依赖集：F=｛A→C，BC→D，CD→A，AB→E} 。 Ⅰ（A,B）　Ⅱ（A,D）Ⅲ（B,C）　Ⅳ（C,D）　Ⅴ（B,D）','353845','C、 仅Ⅰ和Ⅲ　&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113534,'不能使一个关系从第一范式转化为第二范式的条件是（）。','353849','C、 存在非主属性部分函数依赖候选码(键)&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113535,'为了设计出性能较优的关系模式，必须进行规范化，规范化主要的理论依据是（） 。','353853','C、 关系规范化理论&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113536,'任何一个满足2NF但不满足3NF的关系模式都不存在（）。','353857','C、 非主属性对键的部分依赖&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113537,'候选关键字的属性有（） 。','353861','C、 1个或多个&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113538,'关系模式R中的属性全是主属性，则R的最高范式必定是（） 。','353866','D、 3NF&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113539,'<p>关系模式R的规范化程度最高达到？ 基于以下描述：关系模式R（A, B, C, D, E），根据语义有如下函数依赖集：F=｛A→C，BC→D，CD→A，AB→E} 。</p>','353870','D、<p>3NF　&nbsp;&nbsp;&nbsp;&nbsp;；</p>
',3);
INSERT INTO "QuestionBank" VALUES(113540,'关系模式中，满足2NF的模式（） 。','353872','B、 必定是1NF&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113541,'关系规范中的删除异常是指（）。','353876','B、 不该删除的数据被删除&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113542,'在关系规范式中，分解关系的基本原则是（）。 　　I.实现无损连接 　　II.分解后的关系相互独立 　　III.保持原有的依赖关系','353880','B、 Ⅰ和Ⅲ&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113543,'在最小函数依赖集F中，下面的叙述不正确的是（）。','353884','B、 F中每个FD的左部都是单属性&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113544,'学生关系模式 S（ S＃，Sname，Sex，Age），S的属性分别表示学生的学号、姓名、性别、年龄。要在表S中删除一个属性“年龄”，可选用的SQL语句是（）。','353887','A、ALTER TABLE S DROP Age&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113545,'学生表（id，name，sex，age，depart_id，depart_name），存在函数依赖是id→name，sex，age，depart_id；dept_id→dept_name，其满足（）。','353894','D、 2NF&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113546,'已知关系模式R（A，B，C，D，E）及其上的函数相关性集合F＝{A→D，B→C ，E→A }，该关系模式的候选关键字是（） 。','353896','B、 BE&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113547,'当属性B函数依赖于属性A时，属性A与B的联系是（）','353899','A、多对1&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113548,'根据关系数据库规范化理论，关系数据库中的关系要满足第一范式，部门（部门号，部门名，部门成员，部门总经理）关系中，因哪个属性而使它不满足第一范式（）。','353906','D、 部门成员&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113549,'消除了部分函数依赖的1NF的关系模式，必定是（） 。','353909','C、 2NF&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113550,'若关系模式R(U,F)属于3NF，则（）。','353912','B、 仍存在一定的插入和删除异常&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113551,'<p>设U为所有属性，X, Y, Z为属性集，Z=U一X一Y。下列关于函数依赖和多值依赖的叙述中，哪些是正确的？ 　　I．若X→Y,则X→→Y　 II．若X→→Y,则X→Y　III．若X→Y,则X→Z 　　IV．若X→→Y，则X→→Z　V．若X→→Y, Y&#39;是Y的子集,则X→→Y&#39;</p>','353918','D、<p>仅I和IV　&nbsp;&nbsp;&nbsp;&nbsp;；</p>
',3);
INSERT INTO "QuestionBank" VALUES(113552,'设U是所有属性的集合，X、Y、Z都是U的子集，且Z＝U－X－Y。下面关于多值依赖的叙述中，不正确的是（）。','353922','D、 若X→→Y，且Y′∈Y，则X→→Y′&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113553,'设数据库关系模式R＝（A，B，C，D，E），有下列函数依赖：A→BC，D→E，C→D；下述对R的分解中，哪些分解是R的无损连接分解（） 。 I.（A，B，C）（C，D，E） II.（A，B）（A，C，D，E） III.（A，C）（B，C，D，E） IV.（A，B）（C，D，E）','353923','A、Ⅰ和Ⅱ&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113554,'设有关系模式R（A，B，C，D），其数据依赖集：F＝{（A，B）→C，C→D}，则关系模式R的规范化程度最高达到（）。','353930','D、 2NF&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113555,'（姓名，所在系）--&gt;姓名，这是（）。','353933','C、 平凡函数依赖&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113556,'（学号，课程号）-&gt;成绩，这是（）。','353938','D、 完全函数依赖&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113567,'事务的持续性是指 ()。','353978','B、 事务一旦提交，对数据库的改变是永久的&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113568,'事务的一致性是指 ()。','353983','C、 事务必须是使数据库从一个一致性状态变到另一个一致性状态&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113569,'事务的隔离性是指 ()。','353988','D、 一个事务内部的操作及使用的数据对并发的其他事是隔离的&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113570,'事务的原子性是指 ()。','353989','A、事务中包括的所有操作要么全做，要么全不做&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113571,'在某一时刻，文件数据只能供一个用户操作，而数据库则可以供多个用户同时操作，这得益于数据库系统的（）。','353996','D、 并发控制；
',3);
INSERT INTO "QuestionBank" VALUES(113572,'在事务依赖图中，若各个事务之间的依赖关系构成循环，则就会出现（ ）','353998','B、 死锁&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113573,'<p>在数据库事务中“Dirty Data&quot;(脏数据)是指( )</p>','354004','D、<p>被修改后未提交(commit)或回退的数据&nbsp;&nbsp;&nbsp;&nbsp;；</p>
',3);
INSERT INTO "QuestionBank" VALUES(113574,'以下关于事务调度和封锁的描述中，正确的是（ ）','354006','B、 遵守两段封锁协议的并发事务一定是可串行化的&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113575,'在多用户共享系统中，并发操作的事务互相干扰，破坏了事务的( )。','354009','A、隔离性&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113576,'如果事务T获得了数据项X上的排它锁,则T( )','354015','C、可以读X，也可以写X&nbsp;&nbsp;&nbsp;&nbsp;； 
',3);
INSERT INTO "QuestionBank" VALUES(113577,'如果事务T获得了数据项X上的共享锁,则T( &nbsp; &nbsp; &nbsp;)','354020','D、可以读X，不能写X&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113578,'数据库中的封锁机制是( )的主要方法。','354024','D、 &nbsp;并发控制&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113579,'记录数据库事务操作信息的文件是（ ）。','354028','D、 事务日志文件&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113580,'DBMS普遍采用（）方法来保证调度的正确性 。','354029','A、封锁&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113581,'下列不属于并发操作自身带来的数据问题是（）。','354034','B、 死锁&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113582,'为了防止一个用户的工作不适当地影响另一个用户，应该采取（） 。','354040','D、 并发控制&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113583,'事务T在修改数据R之前必须先对其加X锁，直到事务结束才释放，这是（） 。','354043','C、 一级封锁协议&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113584,'一级封锁协议加上事务T在读取数据R之前必须先对其加S锁，读完后方可释放S锁，这是（） 。','354046','B、 二级封锁协议&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113585,'一级封锁协议加上事务T在读取数据R之前必须先对其加S锁，直至事务结束后方可释放S锁，这是（） 。','354049','A、三级封锁协议&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113586,'事务日志用于保存（）。','354054','B、对数据的更新操作&nbsp;&nbsp;&nbsp;&nbsp;； 
',3);
INSERT INTO "QuestionBank" VALUES(113587,'事务由于某些内部条件而无法继续正常执行，如非法输入、找不到数据等，这样的故障属于','354060','D、事务故障　&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113588,'在多用户共享系统中，并发操作的事务互相干扰，破坏了事务的()。','354063','C、 隔离性&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113589,'在数据库技术中，对数据库进行备份，这主要是为了维护数据库的','354068','D、 可靠性&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113590,'在数据库系统中，死锁属于（）。','354071','C、 事务故障&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113591,'如果事务T获得了数据项Q上的排他锁，则T对Q（） 。','354074','B、 既可读又可写&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113592,'数据库中的冗余数据是指可（）的数据 。','354079','C、 由基本数据导出&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113593,'数据库恢复的基础是利用转储的冗余数据。这些转储的冗余数据包括（）。','354082','B、 日志文件、数据库后备副本&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113594,'若事务T对数据R已经加X锁，则其他事务对数据R()。','354087','C、 不能加任何锁&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113595,'若系统在运行过程中，由于某种硬件故障，使存储在外存上的数据部分损失或全部损失，这种情况称为（）。','354090','B、 介质故障&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113596,'表示两个或多个事务可以同时运行而不互相影响的是（）。','354093','A、隔离性&nbsp;&nbsp;&nbsp;&nbsp;；
',3);
INSERT INTO "QuestionBank" VALUES(113597,'设事务T1和T2，对数据库中地数据A进行操作，可能有如下几种情况，请问哪一种不会发生冲突操作（） 。','354100','D、T1正在读A，T2也要读A
',3);
INSERT INTO "QuestionBank" VALUES(183609,'下列不是Java中的保留字？','637534','B、sizeof;
',3);
INSERT INTO "QuestionBank" VALUES(183610,'下列不是合法的标识符？','637539','C、2$_million;
',3);
INSERT INTO "QuestionBank" VALUES(183611,'下列整型数据类型中，需要内存空间最少的是','637544','D、byte;
',3);
INSERT INTO "QuestionBank" VALUES(183612,'关于注释下列说法错误的是','637546','B、很多时候注释是可有可无的;
',3);
INSERT INTO "QuestionBank" VALUES(183613,'下面哪种注释方法能够支持javadoc命令？','637551','C、/**...*/;
',3);
INSERT INTO "QuestionBank" VALUES(183614,'java语言是1995年由（）公司发布的。','637553','A、Sun;
',3);
INSERT INTO "QuestionBank" VALUES(183615,'下列关于Java语言的特点，描述错误的是（ ）','637559','C、Java是面向过程的编程语言;
',3);
INSERT INTO "QuestionBank" VALUES(183616,'Java语言属于（）种语言。','637562','B、面向对象的语言;
',3);
INSERT INTO "QuestionBank" VALUES(183617,'java程序的执行过程中用到一套JDK工具，其中javac.exe指()','637565','A、java语言编译器;
',3);
INSERT INTO "QuestionBank" VALUES(183618,'假设下面的程序代码都放在 MyClass.java 文件中，（ ）程序代码能够编译通过。','637572','D、/*This is a comment*/package mypackage; import java.awt.*;public class MyClass { }
',3);
INSERT INTO "QuestionBank" VALUES(183619,'编译和运行以下代码的结果为（ ）。 &nbsp;<br>public class MyMain<br>{ <br> &nbsp; &nbsp;public static void main(String argv)<br> &nbsp; &nbsp;{ <br> &nbsp; &nbsp; &nbsp; &nbsp;System.out.println(&quot;Hello cruel world&quot;);<br> &nbsp; &nbsp; } &nbsp;<br>}','637576','D、编译无错，但运行时指示没有正确定义main方法
',3);
INSERT INTO "QuestionBank" VALUES(183620,'以下哪个是应用程序的main方法头（ ）。','637578','B、public static void main(String args[])
',3);
INSERT INTO "QuestionBank" VALUES(183621,'下列关于运行字节码文件的命令行参的描述中，正确的是（）。','637583','C、第一个命令行参数(紧跟命令字的参数)被存放在args[0]中。
',3);
INSERT INTO "QuestionBank" VALUES(183622,'下面哪些选项是正确的main方法说明？（）','637588','D、public static void main(String args[])
',3);
INSERT INTO "QuestionBank" VALUES(183623,'<p>一个可以独立运行的Java应用程序（）。</p>','637592','D、<p>只能启动一个main方法。</p>
',3);
INSERT INTO "QuestionBank" VALUES(183624,'在Java语言中，（）是最基本的元素？','637595','C、对象
',3);
INSERT INTO "QuestionBank" VALUES(183625,'Java应用程序的入口方法是( )。','637600','D、main（）
',3);
INSERT INTO "QuestionBank" VALUES(183626,'在Java中，关于CLASSPATH环境变量的说法不正确的是（ ）。','637601','A、CLASSPATH一旦设置之后不可修改，但可以将目录添加到该环境变量中。
',3);
INSERT INTO "QuestionBank" VALUES(183627,'编译下面源程序会得到哪些文件（ &nbsp;） <br>class A1<br>{ } <br>class A2{ } <br>public class B<br>{ <br> &nbsp; &nbsp; public static void main(String[] args){ } <br>}','637608','D、A1.class、A2.class和B.class文件
',3);
INSERT INTO "QuestionBank" VALUES(183628,'public class Var<br>{<br> int x = 10;<br> int getY<br>{<br>int y,x=5;<br>y= x+x;<br>}<br>y的值是（ ）','637610','B、10
',3);
INSERT INTO "QuestionBank" VALUES(183629,'已知如下代码： switch(m)<br>{ &nbsp;<br> &nbsp; &nbsp;case 0: <br> &nbsp; &nbsp; &nbsp; &nbsp;System.out.println(&quot;Condition 0&quot;); &nbsp;<br> &nbsp; &nbsp;case 1:<br> &nbsp; &nbsp; System.out.println(&quot;Condition 1&quot;); &nbsp;<br> &nbsp; &nbsp;case 2: <br> &nbsp; &nbsp; &nbsp; &nbsp;System.out.println(&quot;Condition 2&quot;); &nbsp;<br> &nbsp; &nbsp;case 3: <br> &nbsp; &nbsp;System.out.println(&quot;Condition 3&quot;);<br> &nbsp; &nbsp;break; &nbsp;<br> &nbsp; &nbsp;default:<br> &nbsp; &nbsp;System.out.println(&quot;Other Condition&quot;);<br> } <br>当m的值为（ &nbsp;）时，会输出“Condition 3”','637616','D、0、1、2、3
',3);
INSERT INTO "QuestionBank" VALUES(183630,'阅读该程序，选择合适的选项填入空缺部分（ ）。<br> import java.util.*; &nbsp;<br>public class PerimeterAreaOfCircle<br> { &nbsp; &nbsp; &nbsp; <br> &nbsp; &nbsp;final static double PI=3.1415926; &nbsp; &nbsp; &nbsp; &nbsp;<br> &nbsp; &nbsp;public static void &nbsp;main(String args []) &nbsp; &nbsp; &nbsp;<br> &nbsp; &nbsp;{ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br> &nbsp; &nbsp; &nbsp; &nbsp; double r,perimeter; &nbsp; <br> &nbsp; &nbsp; &nbsp; &nbsp;Scanner in =new Scanner(System.in); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br> &nbsp; &nbsp; r= &nbsp; &nbsp; &nbsp; ; &nbsp; <br> &nbsp; &nbsp;perimeter=2*PI*r; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br> &nbsp; &nbsp;System.out.println(&quot;圆的周长为：&quot;+perimeter); &nbsp; &nbsp;<br> } <br> }','637618','B、in.nextDouble()
',3);
INSERT INTO "QuestionBank" VALUES(183631,'下列说法中，不正确的一个是（ ）。','637623','C、if …else if语句的执行效率总是比switch语句高
',3);
INSERT INTO "QuestionBank" VALUES(183632,'下列关于基本数据类型的说法中，不正确的一项是（ ）。','637628','D、char是8位Unicode字符
',3);
INSERT INTO "QuestionBank" VALUES(183633,'如果定义有变量double d1, d2=4.0则下列说法正确的是（ &nbsp;）','637630','B、变量d1没有初始化,d2初始化为4.0
',3);
INSERT INTO "QuestionBank" VALUES(183634,'下列关于Java语言简单数据类型的说法中，正确的一项是（ &nbsp;）。','637633','A、以0开头的整数代表8进制整型常量
',3);
INSERT INTO "QuestionBank" VALUES(183635,'在编写Java程序时，如果不为类的成员变量定义初始值，Java会给出它们的默认值，下列说法中不正确的一个是（ &nbsp;）。','637640','D、long类型的默认值是0.0L
',3);
INSERT INTO "QuestionBank" VALUES(183636,'设a、b为long型变量，x、y为float型变量，ch为char类型变量且它们均已被赋值，则下列语句中正确的是（ ）。','637642','B、switch(ch+1) {}
',3);
INSERT INTO "QuestionBank" VALUES(183637,'关于变量的作用范围，下列说法错误的是（ ）。','637645','A、异常处理参数作用域为整个类
',3);
INSERT INTO "QuestionBank" VALUES(183638,'使用Scanner输入需要导入包（ ）。','637652','D、import java.util.Scanner;
',3);
INSERT INTO "QuestionBank" VALUES(183639,'使用Scanner类的各种方法实现输入操作，该类提供一系列nextXXX()方法实现输入不同类型的数据，其中代表整数数据的为（ &nbsp;）。','637653','A、nextInt()
',3);
INSERT INTO "QuestionBank" VALUES(183640,'已知y=2, z=3, n=4，则经过n=n+ -y*z/n运算后n的值为（ ）。','637657','A、3
',3);
INSERT INTO "QuestionBank" VALUES(183641,'已知x=2, y=3, z=4，则经过z- = --y – x--运算后，z的值为（ &nbsp;）','637664','D、4
',3);
INSERT INTO "QuestionBank" VALUES(183642,'表达式(12==0) &amp;&amp; (1/0 &lt; 1)的值为（ &nbsp;）。','637666','B、false
',3);
INSERT INTO "QuestionBank" VALUES(183643,'现有1个char类型的变量c1=66和1个整型变量i=2，当执行c1=c1+(char)i;语句后，c1的值为（ &nbsp;）。','637672','D、语句在编译时出错
',3);
INSERT INTO "QuestionBank" VALUES(183644,'如果x=3,y=5,则表达式x|y的值为：（ &nbsp;）','637676','D、7
',3);
INSERT INTO "QuestionBank" VALUES(183645,'下列（ &nbsp;）不属于Java语言流程控制结构？','637680','D、赋值语句
',3);
INSERT INTO "QuestionBank" VALUES(183646,'假设a是int类型的变量，并初始化为1，则下列（ &nbsp;）是合法的条件语句？','637684','D、if(true){}
',3);
INSERT INTO "QuestionBank" VALUES(183647,'以下数组初始化形式正确的是：( &nbsp;)','637685','A、int t1[][]={{1,2},{3,4},{5,6}}
',3);
INSERT INTO "QuestionBank" VALUES(183648,'下述概念中不属于面向对象方法的是（ &nbsp;）。','637692','D、过程调用
',3);
INSERT INTO "QuestionBank" VALUES(201412,'Hadoop-2.x集群中的HDFS的默认的数据块的大小是？','702547','C、128M;',3);
INSERT INTO "QuestionBank" VALUES(201413,'Hadoop-2.x集群中的HDFS的默认的副本块的个数是？','702551','C、3;',3);
INSERT INTO "QuestionBank" VALUES(201414,'如果我们现有一个安装2.x版本的hadoop集群，在不修改默认配置的情况下存储200个每个200M的文本文件，请问最终会在集群中产生多少个数据块（包括副本）？','702556','D、1200',3);
INSERT INTO "QuestionBank" VALUES(201415,'以下哪个不是HDFS的守护进程？','702559','C、mrappmaster/yarnchild;',3);
INSERT INTO "QuestionBank" VALUES(201418,'<p>现在在hadoop集群当中的配置文件中有这么两个配置，请问假如集群当中有一个节点宕机，主节点namenode需要多长时间才能感知到？hdfs-xml中&lt;name&gt;dfs.heartbeat.interval&lt;/name&gt;&lt;value&gt;2&lt;/value&gt;&lt;name&gt;heartbeat.recheck.interval&lt;/name&gt;&lt;value&gt;2000&lt;/value&gt;</p>','702570','B、<p>24秒;</p>',3);
INSERT INTO "QuestionBank" VALUES(201420,'HDFS集群中的namenode职责不包括？','702579','C、负责保存客户端上传的数据;',3);
INSERT INTO "QuestionBank" VALUES(201423,'MapReduce的Shuffle过程中哪个操作是最后做的？ ','702592','D、合并',3);
INSERT INTO "QuestionBank" VALUES(201434,'下列关于HDFS的描述正确的是？','702635','C、NameNode磁盘元数据不保存Block的位置信息;',3);
INSERT INTO "QuestionBank" VALUES(201443,'MapReduce框架提供了一种序列化机制，支持这种序列化的类能够在Map和Reduce过程中充当键或值，以下说法错误的是？','702671','C、Hadoop的基本类型Text并不实现WritableComparable&lt;T&gt;接口;',3);
INSERT INTO "QuestionBank" VALUES(201445,'有关MapReduce的输入输出，说法错误的是？','702678','B、FileInputFormat中实现的getSplits()可以把输入数据划分为分片，分片数目和大小任意定义;',3);
INSERT INTO "QuestionBank" VALUES(202309,'<p>试述大数据的4个V基本特征的英文单词(按字母升序写出):<span><span class="fill-placeholder">（1）</span>,<span><span class="fill-placeholder">（2）</span>,<span><span class="fill-placeholder">（3）</span>,<span><span class="fill-placeholder">（4）</span>。</span></span></span></span></p>','Value%$$%Variety%$$%Velocity%$$%Volume','Value%$$%Variety%$$%Velocity%$$%Volume',1);
INSERT INTO "QuestionBank" VALUES(202312,'<p>信息技术的三次浪潮发生的年代分别是<span><span class="fill-placeholder">（1）</span>，<span><span class="fill-placeholder">（2）</span>，<span><span class="fill-placeholder">（3）</span>（填写四位数字便可）<span>。</span></span></span></span></p>','1980%$$%1995%$$%2010','1980%$$%1995%$$%2010',1);
INSERT INTO "QuestionBank" VALUES(207725,'<p>如何使用hdfs getconf命令查看目前系统的默认副本数的参数值,写出完整的命令，单词之间保留一个空格：<span class="fill-placeholder">（1）</span></p>','hdfs getconf -confKey dfs.replication','hdfs getconf -confKey dfs.replication',1);
INSERT INTO "QuestionBank" VALUES(207726,'<p>集群分为紧密型(1)的和分布型(2)的，天河2号计算系统属于<span class="fill-placeholder">（1）</span>，hadoop属于<span class="fill-placeholder">（2）</span>.（回答1或者2）</p>','1%$$%2','1%$$%2',1);
INSERT INTO "QuestionBank" VALUES(207727,'<p>namenode会主动去datanode下面读取文件块的存储列表信息？</p>','720080','B、<p>否</p>',2);
INSERT INTO "QuestionBank" VALUES(207728,'<p>datanode和datanode 之间存在数据就传送的要求？</p>','720081','A、<p>是</p>',2);
INSERT INTO "QuestionBank" VALUES(207729,'<p>nanenode的内存中的元数据等同于FSImage和Editlog的合并而成的内容 ？</p>','720083','A、<p>否</p>',2);
INSERT INTO "QuestionBank" VALUES(207730,'<p>namenode的节点为192.168.1.120，hdfs文件访问端口为9000，现在我们hadoop客户机的地址为192.168.1.100 ,则访问 hdfs的/user/hadoop/下的myfile.txt文件内容，命令为：hdfs dfs -cat /user/hdoop/myfile.txt</p>','720085','A、<p>否</p>',2);
INSERT INTO "QuestionBank" VALUES(207731,'<p>客户端从某一个名字节点读取一个文件快，读到块正确与否和只要取决于&nbsp;&nbsp;</p>','720087','A、<p><span>检验和</span></p>',3);
INSERT INTO "QuestionBank" VALUES(211166,'region : store &nbsp;的数量对应是？','729876','A、1:n;',3);
INSERT INTO "QuestionBank" VALUES(211167,'hlog和region server数量关系','729881','B、1:1;',3);
INSERT INTO "QuestionBank" VALUES(211168,'store和region的数量关系是？','729887','D、n:1;',3);
INSERT INTO "QuestionBank" VALUES(211169,'<p>一般性的hbase cluster和hmaster的关系是？</p>','729889','B、<p>1:1;</p>',3);
INSERT INTO "QuestionBank" VALUES(211170,'store和memstore的关系是？','729893','B、1:1;',3);
INSERT INTO "QuestionBank" VALUES(211171,'store和storefile的关系是？','729896','A、1:n;',3);
INSERT INTO "QuestionBank" VALUES(211172,'table和region server的关系？','729902','C、m:n;',3);
INSERT INTO "QuestionBank" VALUES(211173,'region server和region的数量关系？','729904','A、1:n;',3);
INSERT INTO "QuestionBank" VALUES(211174,'hbase客户端读数据的时候，按照的顺序 ;<br>1--memstore &nbsp;2--hfile &nbsp; 3-BlockCache','729911','D、1-3-2',3);
INSERT INTO "QuestionBank" VALUES(211175,'scan &#039;hbase:meta&#039;什么意思？','729913','B、查询hbase表空间下meta表的所有记录',3);
INSERT INTO "QuestionBank" VALUES(211176,'<p>Zookeeper 是什么东西？扮演什么角色</p>','729916,729917,729918','A、<p>监视 region server工作状态; &nbsp;</p>
B、<p>提供元数据(目录)入口region;</p>
C、<p>选举master ，保证任何时候，集群中只要一个HMaster;</p>',4);
INSERT INTO "QuestionBank" VALUES(211177,'Region Server的作用','729920,729921,729922','A、向HMaster定期汇报节点的负载状况,，RS内存使用状态、在线状态的Region等;
B、实现用户的读写请求，如：get、multiget、mutate、scan等;
C、实现Region服务、文件的管理(storefile信息、region操作、WAL操作等);',4);
INSERT INTO "QuestionBank" VALUES(211178,'Hmaster的作用','729925,729926,729927','B、管理region server负载均衡，调整HRegion分布;
C、在HRegion分裂后，负责新HRegion的分配;
D、在HRegion服务器停机后，负责失效HRegion服务器上的HRegion迁移;',4);
INSERT INTO "QuestionBank" VALUES(211179,'Major Compaction 要实现：','729928,729929,729930,729932','A、清理被删除的数据;
B、清理TTL过期数据;
C、清理版本号超过设定版本号的数据;
E、将所有的StoreFile合并成一个StoreFile;',4);
INSERT INTO "QuestionBank" VALUES(211180,'Minor Compaction 是指','729936','D、选取一些小的、相邻的StoreFile将他们合并成一个更大的StoreFile;',3);
INSERT INTO "QuestionBank" VALUES(211181,'cell 的数据类型','729941','D、字节数组byte[];',3);
INSERT INTO "QuestionBank" VALUES(211182,'<p>hbase在表里存储数据使用的是四维坐标系统有：<span class="fill-placeholder">（1）</span><span class="fill-placeholder">（2）</span><span class="fill-placeholder">（3）</span><span class="fill-placeholder">（4）</span>。请按照升序罗列出相关的英文单词(复合的单词之间去掉空格，小写)</p>','columnfamily%$$%columnqualifier%$$%rowkey%$$%timestamp','columnfamily%$$%columnqualifier%$$%rowkey%$$%timestamp',1);
INSERT INTO "QuestionBank" VALUES(211183,'hlog和hdfs的哪个东西对应关系最恰当','729943','B、fseditlog;',3);
INSERT INTO "QuestionBank" VALUES(211184,'<p>hmaster和yarn的哪个东西对应关系最恰当</p>','729947','B、<p>resourcemanager;</p>',3);
INSERT INTO "QuestionBank" VALUES(211185,'<p>region server和yarn的哪个东西对应关系最恰当</p>','729950','A、<p>nodemanager;</p>',3);
INSERT INTO "QuestionBank" VALUES(211186,'hbase table中每个列簇都对应着region中的一个store，在hdfs系统中则对应着一个目录','729954','A、正确',2);
INSERT INTO "QuestionBank" VALUES(211187,'<p>如果hbase.rootdir 设置为hdfs的/hbase下，则列出默认名字空间default下所有表ls完整命令？<span class="fill-placeholder">（1）</span>，Hdfs dfs -ls ….单词之间保留一个空格,关键给出最后的路径写法 /hbase…...</p>','hdfs dfs -ls /hbase/data/default','hdfs dfs -ls /hbase/data/default',1);
INSERT INTO "QuestionBank" VALUES(214829,'1.有关MapReduce，下面哪个说法是正确的（）','741055','C、它是Hadoop数据处理层',3);
INSERT INTO "QuestionBank" VALUES(214830,'<p>2. 在MapReduce中，如果将reducer数设置为0会发生怎样的情形（）</p>','741057','B、<p>仅有Map作业发生;</p>',3);
INSERT INTO "QuestionBank" VALUES(214831,'3. 在MapReduce中，下面哪个会将输入键值对处理成中间键值对（）','741059','A、Mapper;',3);
INSERT INTO "QuestionBank" VALUES(214832,'4. 在MapReduce中，Map数取决于（）的总量','741063','B、输入数据;',3);
INSERT INTO "QuestionBank" VALUES(214833,'5. 在Hadoop的分区阶段，默认的Partitioner是（）','741067','C、HashPartitioner',3);
INSERT INTO "QuestionBank" VALUES(214834,'6. 下面哪个是一种编程模型，它将大规模的数据处理工作拆分成互相独立的任务然后并行处理（）','741068','A、MapReduce;',3);
INSERT INTO "QuestionBank" VALUES(214835,'7. 在Hadoop中，下面哪个是默认的InputFormat类型，它将每行内容作为新值，而将字节偏移量作为key（）','741072','B、TextInputFormat；',3);
INSERT INTO "QuestionBank" VALUES(214836,'8. 在MapReduce中，对于map输出的中间结果，负责按key进行分区的是（）','741076','C、Partitioner',3);
INSERT INTO "QuestionBank" VALUES(214837,'9. 在MapReduce中，下面哪个阶段是并行进行的（）','741078','B、Shuffle和Sort；',3);
INSERT INTO "QuestionBank" VALUES(214838,'10. 关于MapReduce中的键值对，下面陈述正确的是（）','741081','B、Key类必须实现WritableComparable；',3);
INSERT INTO "QuestionBank" VALUES(214839,'11. 在HDFS中，put命令用于（）','741085','B、将文件或者目录从本地文件系统拷贝到HDFS;',3);
INSERT INTO "QuestionBank" VALUES(214840,'12. 在Hadoop中，下面哪一个是默认的OutputFormat（）','741091','D、TextOutputFormat',3);
INSERT INTO "QuestionBank" VALUES(214841,'13. 下面哪个不是Hadoop的输入格式（）','741092','A、ByteInputFormat;',3);
INSERT INTO "QuestionBank" VALUES(214842,'14. 在MapReduce中，下面哪个数据流的顺序是正确的（）a.InputFormat;b.Mapper;c.Combiner;d.Reducer;e.Partitioner;f.OutputFormat','741097','B、abcedf;',3);
INSERT INTO "QuestionBank" VALUES(214843,'15. 下面哪个不属于Reducer阶段 （）','741102','C、Map;',3);
INSERT INTO "QuestionBank" VALUES(214844,'16. Mapper排序后的输出将作为下面哪个的输入（）','741104','A、Reducer;',3);
INSERT INTO "QuestionBank" VALUES(214845,'17. 如何禁用reduce阶段（）','741108','B、设置job.setNumreduceTasks(0);',3);
INSERT INTO "QuestionBank" VALUES(214846,'18. shuffle和sort输出的key实现了下面哪个接口（）','741111','B、WritableComparable;',3);
INSERT INTO "QuestionBank" VALUES(214847,'19. 在MapReduce编程时，如下阶段的顺序是（）a. Partitioner b. Mapper c. Combiner d. Shuffle/Sort;','741117','D、Mapper Combiner Partitioner Shuffle/Sort',3);
INSERT INTO "QuestionBank" VALUES(214848,'20. 下面生成中间键值对的是（）','741119','B、Mapper;',3);
INSERT INTO "QuestionBank" VALUES(215168,'<p>mapreduce程序的main方法中，job.setCombiner都去除其设置，会不会影响其处理的结果？</p>','742065','A、<p>是</p>',2);
INSERT INTO "QuestionBank" VALUES(215169,'<p><br/><span style="text-decoration:underline;">Combiner只应该用于那种，Reduce的输入key/value与输出key/value类型完全一致，且不影响最终结果的场景。</span></p>','742067','A、<p>是</p>',2);
INSERT INTO "QuestionBank" VALUES(215170,'<p>默认情况下(默认分区)，所有map输出的key和reduce对象的数量对应关系？</p>','742071','C、<p><span>n:1</span></p>',3);
INSERT INTO "QuestionBank" VALUES(215171,'<p>hdfs中的文件和map对象之间是？</p>','742074','B、<p><span>&nbsp;m:n</span></p>',3);
INSERT INTO "QuestionBank" VALUES(215184,'<p>Reduce&nbsp;task</p><p>进程从map&nbsp;task输出的结果获取数据的过程称之为Copy过程。具体实现：Reduce进程启动一些数据copy线程(Fetcher)，通过什么协议<span class="fill-placeholder">（1）</span>请求map task所在的TaskTracker获取map task的输出文件</p>','HTTP','HTTP',1);
INSERT INTO "QuestionBank" VALUES(229036,'<p><span>将类成员的访问权限设置为默认时，则该成员能被（ ）</span></p><p><span>If we set data modifier as default, then the data can be accessed?</span></p>','778080','A、<p><span>同一包中的类访问</span><span>&nbsp;</span></p><p><span>within the package</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(229040,'<p><span>下面的程序段创建了</span><span>BufferedReader</span><span>类的对象</span><span>in</span><span>，以便读取本机</span><span>c</span><span>盘</span><span>my</span><span>文件夹下的文件</span><span>1.txt</span><span>。</span><span>File</span><span>构造函数中正确的路径和文件名的表示是（ ）。</span></p><p><span>File f=new File(填代码处);</span></p><p><span>file =new FileReader(f);</span></p><p><span>in=new BufferedReader(file);</span></p>','778098','C、<p><span>&quot;c:\\my\\1.txt&quot;</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(229041,'<p><span>下面语句的功能是（ ）</span></p><p><span><span>RandomAccessFile&nbsp; raf2 = new RandomAccessFile(&quot;1.txt&quot;,&quot;rw&quot; );&nbsp;</span></span></p>','778100','A、<p><span>打开当前目录下的文件</span><span>1.txt</span><span>，既可以向文件写数据，也可以从文件读数据。</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(229051,'<p><span>If the local variable has the same name as the member variable name, how the member variable can be accessed?</span></p><p><span>如果局部变量和成员变量同名，如何在局部变量作用域内引用成员变量？（ ）</span></p>','778141','B、<p><span>use keyword this to access the member variable</span></p><p><span>在成员变量前加</span><span>this</span><span>，使用</span><span>this</span><span>访问该成员变量</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(229052,'<p><span>当需要向文件写入字符而不是字节时，在下面的类中最好选择使用（</span><span> <span>&nbsp;</span></span><span>）类</span></p>','778145','B、<p><span>java.io.FileWriter</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(229053,'<p><span>int</span><span>型</span><span>public</span><span>成员变量</span><span>MAX_LENGTH</span><span>，该值保持为常数</span><span>100</span><span>，则定义这个变量的语句是</span><span>(&nbsp; )</span><span>。</span></p>','778151','D、<p><span>public final int MAX_LENGTH=100</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(229087,'<p><span>下面哪一个</span><span>import</span><span>命令可以为我们提供编写网络应用程序的类</span></p>','778243','D、<p>import java.net.*;</p>
',3);
INSERT INTO "QuestionBank" VALUES(229088,'<p><span>如果需要从文件中读取数据，则可以在程序中创建哪一个类的对象</span></p>','778244','A、<p>FileInputStream</p>
',3);
INSERT INTO "QuestionBank" VALUES(229097,'<p><span>下面的程序段的功能是</span><span>(&nbsp; )</span><span>。</span></p><p><span>File file1=new File(&quot;d:\\xxx\\yyy\\zzz&quot;);</span></p><p><span>file1.mkdirs();</span></p>','778255','D、<p><span>以上说法都不对</span><span>&nbsp;</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(229110,'<p>Which of following is correctly described inheritance:</p><p><span>关于继承的说法正确的是：</span></p>','778305','B、<p><span>The derived class inherits the non-private properties and methods of the base class only.</span></p><p><span>子类将继承父类的非私有属性和方法。</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(229111,'<p><span>关于构造函数的说法哪个正确？</span></p>','778310','C、<p><span>构造函数与类同名</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(229113,'<p><span>覆盖与重载的关系是</span></p>','778316','A、<p><span>覆盖只有发生在父类与子类之间，而重载可以发生在同一个类中</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(230090,'某企业，在方圆2亩地的范围内组建了企业内部网络，则该网络属于什么网络？','780899','A、LAN
',3);
INSERT INTO "QuestionBank" VALUES(230091,'<p>如图所示， IP address 为10.0.0.34的Cell A与IP地址为172.16.1.103的IP Phone 1 建立了连接，则下列关于设备类型的描述中，用于描述Cell A的是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/86662e03f5a241f282d59099f1a0fe6c.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/86662e03f5a241f282d59099f1a0fe6c.png"/></p>','780903','A、<p>终端设备</p>
',3);
INSERT INTO "QuestionBank" VALUES(230092,'<p>如图拓扑，下列关于网络类型的说法中正确的是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/51e94fd91a924e0e97fc1ffceab2b4cf.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/51e94fd91a924e0e97fc1ffceab2b4cf.png"/></p>','780907','A、<p>Network B – WAN，Network C – LAN，Network A -- LAN</p>
',3);
INSERT INTO "QuestionBank" VALUES(230093,'<p>按照网络的逻辑划分，图中的中间部分拓扑属于什么子网中的哪类设备？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/59bef99a29a940c0ac252bab44852dd8.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/59bef99a29a940c0ac252bab44852dd8.png"/></p>','780911','A、<p>通信子网/互连设备</p>
',3);
INSERT INTO "QuestionBank" VALUES(230094,'<p>如图所示，属于终端设备的设备集合是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/a7384ec5d56a436fb91ed6913e22763a.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/a7384ec5d56a436fb91ed6913e22763a.png"/></p>','780915','A、<p>E, F, H, I, J</p>
',3);
INSERT INTO "QuestionBank" VALUES(230095,'<p>如图所示，属于互连设备的设备集合是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/90195bed65164ccf9734f4a46ecb5c9a.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/90195bed65164ccf9734f4a46ecb5c9a.png"/></p>','780919','A、<p>A, B, D, G</p>
',3);
INSERT INTO "QuestionBank" VALUES(230096,'<p>如图所示拓扑，下列说法中最能反映其网络通信特点的描述是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/377a2a75806f4e259e602b2906dda0dd.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/377a2a75806f4e259e602b2906dda0dd.png"/></p>','780923','A、<p>这是一个多路访问的冲突环境</p>
',3);
INSERT INTO "QuestionBank" VALUES(230097,'<p>如图所示拓扑，下列说法中最恰当的是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/859b3e044c0b44f9b96f1ec4da6eecb6.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/859b3e044c0b44f9b96f1ec4da6eecb6.png"/></p>','780927','A、<p>这是LAN</p>
',3);
INSERT INTO "QuestionBank" VALUES(230098,'一个交换机的四个端口分别连接了四个HUB，这四个HUB每个都再与四台PC机相连，则这个网络采用的拓扑结构是','780933','C、扩展星型；
',3);
INSERT INTO "QuestionBank" VALUES(230099,'下面不属于按规模进行的计算机网络分类是','780936','B、VPN；
',3);
INSERT INTO "QuestionBank" VALUES(230100,'下面国际标准组织中，制定局域网标准的组织是','780941','C、IEEE；
',3);
INSERT INTO "QuestionBank" VALUES(230101,'下面国际标准组织中，制定因特网相关标准的组织通常是','780944','B、IETF；
',3);
INSERT INTO "QuestionBank" VALUES(230102,'下列拓扑结构中，在中心主节点发生故障时会导致整个网络瘫痪的是','780948','B、星型
',3);
INSERT INTO "QuestionBank" VALUES(230103,'下列关于计算机网络的定义中，最恰当的是','780953','C、网络是分布在不同地理位置的多个自治计算机系统的集合；
',3);
INSERT INTO "QuestionBank" VALUES(230104,'下列哪些说法不是关于网络互连设备功能的描述','780956,780958','B、产生初始的数据流
D、数据流传输的最终点
',4);
INSERT INTO "QuestionBank" VALUES(230105,'下列哪些说法是关于网络互连设备功能的描述','780960,780962,780964','A、决定数据传输的路径；
C、再生并转发数据信号；
E、进行拥塞等数据传输的管理；
',4);
INSERT INTO "QuestionBank" VALUES(230106,'下列说法中关于WAN描述的是','780967,780968','C、通过运营商的租用链路来连接不同地址位置的网段；
D、由运营商来提供网络的安全与访问控制策略；
',4);
INSERT INTO "QuestionBank" VALUES(230107,'下列设备中，属于网络互连设备的是','780970,780971','A、路由器；
B、交换机；
',4);
INSERT INTO "QuestionBank" VALUES(230108,'下列设备中，属于资源子网中的端设备的是','780978,780979,780980,780981','C、IP电话；
D、打印机；
E、笔记本电脑；
F、WEB服务器；
',4);
INSERT INTO "QuestionBank" VALUES(230109,'在TCP/IP模型中，与OSI参考模型的网络层对应的层是','780983','B、网际层（网络互连层）
',3);
INSERT INTO "QuestionBank" VALUES(230110,'在OSI模型中，数据链路层的协议数据单元被称为','780986','A、帧
',3);
INSERT INTO "QuestionBank" VALUES(230111,'下面关于OSI网络分层模型优点的描述中，不正确的是','780992','C、分层模型增加了复杂性
',3);
INSERT INTO "QuestionBank" VALUES(230112,'OSI模型中，提供相邻节点之间可靠数据传输功能的层是','780995','B、数据链路层
',3);
INSERT INTO "QuestionBank" VALUES(230113,'OSI模型中，为用户的应用程序提供网络服务或接口的层是','781000','C、应用层
',3);
INSERT INTO "QuestionBank" VALUES(230114,'在OSI模型中，完成路径选择功能的层是','781003','B、网络层
',3);
INSERT INTO "QuestionBank" VALUES(230115,'当计算机A从计算机B下载文件时，计算机B中协议数据单元封装的正确顺序是','781006','A、数据，分段，分组，帧，比特流
',3);
INSERT INTO "QuestionBank" VALUES(230116,'当计算机A从计算机B下载文件时，计算机A中协议数据单元变化的正确顺序是','781012','C、比特流，帧，分组，分段，数据
',3);
INSERT INTO "QuestionBank" VALUES(230117,'在OSI参考模型中，与TCP/IP模型中的网络访问层相当的是','781017','D、物理层与数据链路层
',3);
INSERT INTO "QuestionBank" VALUES(230118,'下列关于ISO/OSI参考模型优越性的描述中，正确的是','781021','D、分层模型能防止一个层上的技术变化影响到另一个层
',3);
INSERT INTO "QuestionBank" VALUES(230119,'下列层(layer)中，属于TCP/IP模型而不属于ISO/OSI模型的层是','781022','A、网络接口层
',3);
INSERT INTO "QuestionBank" VALUES(230120,'网络协议的三大要素为','781029','D、语法、语义、时序
',3);
INSERT INTO "QuestionBank" VALUES(230121,'Internet上各种异构网络和计算机系统之间相互通信的核心协议是','781030','A、IP
',3);
INSERT INTO "QuestionBank" VALUES(230122,'下列关于OSI模型与TCP/IP模型描述错误的是','781035','B、TCP/IP模型将OSI模型的下三层合并成了单一的网络层
',3);
INSERT INTO "QuestionBank" VALUES(230123,'以下关于OSI模型相关层寻址功能的描述中，正确的是','781038','A、Layer 2 可通过嵌入到网卡中的物理地址识别设备或主机
',3);
INSERT INTO "QuestionBank" VALUES(230124,'下列关于PDU的描述中，正确的是','781046','E、一个层中的特别封装
',3);
INSERT INTO "QuestionBank" VALUES(230125,'将分段封装成分组的层是','781049','C、网络层
',3);
INSERT INTO "QuestionBank" VALUES(230126,'在数据封装过程中，在数据链路层所发生的是','781053','C、加上物理地址
',3);
INSERT INTO "QuestionBank" VALUES(230127,'TCP/IP网络访问层（Network Access layer）的功能涉及','781056','B、构成物理链路的部件，并规定如何访问物理链路
',3);
INSERT INTO "QuestionBank" VALUES(230128,'<p>如图所示，下列哪个选项正确说明了所对应字段的作用或内容?</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/80d6fb0384d840bab25fc0f9d96007e6.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/80d6fb0384d840bab25fc0f9d96007e6.png"/></p>','781061','B、<p>data– 来自网络层的数据</p>
',3);
INSERT INTO "QuestionBank" VALUES(230129,'当较低层采用无连接协议时，为了获得高层所需要的可靠数据传输，通常需要在较高层使用以下什么协议或服务来提供对接收数据的确认和丢失数据的重传?','781066','C、TCP
',3);
INSERT INTO "QuestionBank" VALUES(230130,'下列关于网络协议作用的描述中，错误的是','781069,781070,781071','B、给出相邻层之间通信所必需的功能
C、限制硬件的兼容性
D、指出如何实现层功能
',4);
INSERT INTO "QuestionBank" VALUES(230131,'下述行为中，属于封装的功能是','781075,781076,781077','B、标识属于同一通信的数据分片
C、加入寻址信息，确保数据分片能被正确的传到目标接收设备
D、加入必要的信息，使得完整的信息能在接收端被重组
',4);
INSERT INTO "QuestionBank" VALUES(230132,'下列描述中，涉及网络端设备特性的是','781080,781082','A、重组所接收的数据流
C、产生原始数据流
',4);
INSERT INTO "QuestionBank" VALUES(230133,'下列描述中，涉及网络互连设备特性的是','781085,781086','B、信号再生和重新发送
C、决定数据传输路径
',4);
INSERT INTO "QuestionBank" VALUES(230134,'有两台计算机需通过双绞线直接相连，则应选择下列双绞线中的','781088','A、交叉线
',3);
INSERT INTO "QuestionBank" VALUES(230135,'有一台计算机需通过双绞线连接到以太网集线器上，则应选择使用下列UTP线缆中的','781093','B、直连线
',3);
INSERT INTO "QuestionBank" VALUES(230136,'下列设备中，被归入物理层设备的是 A. &nbsp; &nbsp;路由器','781098','C、集线器
',3);
INSERT INTO "QuestionBank" VALUES(230137,'在没有中继的情况下，UTP线缆的最大传输距离是','781101','B、100米
',3);
INSERT INTO "QuestionBank" VALUES(230138,'以下关于物理层的描述中，不正确的是','781107','D、物理层传输的可靠性由物理层自己解决
',3);
INSERT INTO "QuestionBank" VALUES(230139,'通过分割线路的传输时间来实现多路复用的技术被称为','781111','D、时分多路复用
',3);
INSERT INTO "QuestionBank" VALUES(230140,'将物理信道的总频带宽分割成若干个子信道，每个子信道传输一路信号，这种多路复用方式被称为','781113','B、频分多路复用
',3);
INSERT INTO "QuestionBank" VALUES(230141,'<p>某网络测试时，所测出的三条超五类双绞线的长度如下图所示，不同的网络管理员给出了不同的评价，其中正确的评价是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/61f47c92a76340f98bdd4a5d1e98a20b.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/61f47c92a76340f98bdd4a5d1e98a20b.png"/></p>','781118','C、<p>因为网线超过了标准长度，工作站B可能有间歇的网络问题</p>
',3);
INSERT INTO "QuestionBank" VALUES(230142,'在局域网络中，一个接收节点在收到数据的同一时刻也可以向对方节点发送数据，则它传输数据的方式是','781122','C、全双工
',3);
INSERT INTO "QuestionBank" VALUES(230143,'下面关于集线器功能的描述中，错误的是','781124','A、集线器不能延伸网络距离
',3);
INSERT INTO "QuestionBank" VALUES(230144,'下面数字数据编码方式中，不含同步时钟信号的是','781130','C、非归零(NRZ)编码
',3);
INSERT INTO "QuestionBank" VALUES(230145,'当计算机A通过模拟通信系统向计算机B传输数据时，在计算机A一端需要提供','781132','A、调制功能
',3);
INSERT INTO "QuestionBank" VALUES(230146,'下列传输介质中，不受电磁干扰影响的是','781138','C、光纤
',3);
INSERT INTO "QuestionBank" VALUES(230147,'用载波信号相位的变化来表示数字数据的调制方法称为','781140','A、相移键控
',3);
INSERT INTO "QuestionBank" VALUES(230148,'下列关于光纤传输技术的说法中，不正确的是','781145','B、利用光纤传输数字信号需要进行调制，且光载波调制采用相位调制方式
',3);
INSERT INTO "QuestionBank" VALUES(230149,'下列调制技术中，抗干扰能力最差的是','781150','C、幅移键控
',3);
INSERT INTO "QuestionBank" VALUES(230150,'下列关于UTP交叉线(cross-over)作用的说法中，正确的是','781154','C、用于将两台交换机通过以太网接口互连
',3);
INSERT INTO "QuestionBank" VALUES(230151,'<p>如图所示的数据传输过程，用于准确描述该过程的网络术语是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/ea9574dfed434b888c9c6db009b235c9.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/ea9574dfed434b888c9c6db009b235c9.png"/></p>','781156','A、<p>多路复用</p>
',3);
INSERT INTO "QuestionBank" VALUES(230152,'通过将线路的传输时间分割成时间片，每个时间片传输一路信号的多路复用方式被称为','781160','A、时分多路复用
',3);
INSERT INTO "QuestionBank" VALUES(230153,'OSI模型中，哪一个层次负责二进制传输、电缆规范以及网络通信的物理相关内容？','781165','B、物理层
',3);
INSERT INTO "QuestionBank" VALUES(230154,'下列网络连接中，什么时候需要用直连线？','781171','D、主机与交换机相连
',3);
INSERT INTO "QuestionBank" VALUES(230155,'双绞线使用下列哪种接头？','781173','B、RJ-45
',3);
INSERT INTO "QuestionBank" VALUES(230156,'关于单模光纤的描述，下列哪个是正确的?','781178','C、使用激光作为光源
',3);
INSERT INTO "QuestionBank" VALUES(230157,'下列指标中，不被用于衡量物理层传输质量的指标为','781183','D、丢包率
',3);
INSERT INTO "QuestionBank" VALUES(230158,'以下哪项被视为选择无线介质的优点？','781184','A、主机移动更方便
',3);
INSERT INTO "QuestionBank" VALUES(230159,'下列哪种方式是UTP 电缆用于减少干扰的方法？','781191','D、外皮中的绝缘材料
',3);
INSERT INTO "QuestionBank" VALUES(230160,'<p>下图所示的电缆，适用于以下哪种连接？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/8e83b3e9c5e3462c9bb6e07217a0d8ab.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/8e83b3e9c5e3462c9bb6e07217a0d8ab.png"/></p>','781193','B、<p>通过以太网口连接两个路由器</p>
',3);
INSERT INTO "QuestionBank" VALUES(230161,'<p>如下图所示。每条链路都已经被标注了。请问这些链路各需要哪种电缆进行连接？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/b7f8610d36064da881aeb588f2215b98.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/b7f8610d36064da881aeb588f2215b98.png"/></p>','781198','C、<p>Connection 1 - 直连线,Connection 2 - 交叉线,Connection 3 - 直连线</p>
',3);
INSERT INTO "QuestionBank" VALUES(230162,'<p>电缆1和电缆2的接口如下图所示。图中的表格列出了每段连接所使用的电缆。请问那几段的连接使用了正确的电缆？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/089e41ceff7a417db5f94342b9017bca.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/089e41ceff7a417db5f94342b9017bca.png"/></p>','781200','A、<p>segment1,3,4</p>
',3);
INSERT INTO "QuestionBank" VALUES(230163,'下面关于数据链路层功能的描述中，不正确的是','781205','B、为通过网络的数据分组决定最佳路径
',3);
INSERT INTO "QuestionBank" VALUES(230164,'<p>下图给出了帧格式的简单划分，根据该图，则下列关于帧字段的说法中，正确的是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/8093f68e59014aebbe516edd515b1283.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/8093f68e59014aebbe516edd515b1283.png"/></p>','781210','C、<p>数据(data)字段中包含了来自网络层的分组</p>
',3);
INSERT INTO "QuestionBank" VALUES(230165,'关于数据链路层封装所能支持的功能，下列说法中正确的是','781212','A、物理寻址，错误检测，帧定界
',3);
INSERT INTO "QuestionBank" VALUES(230166,'封装在数据链路层帧中的帧尾部分提供的主要功能是什么？','781219','D、支持错误检测
',3);
INSERT INTO "QuestionBank" VALUES(230167,'数据链路层的功能是什么？','781222','C、　提供相邻结点间的数据交换
',3);
INSERT INTO "QuestionBank" VALUES(230168,'下面协议中，可用于流量控制的协议','781225','B、滑动窗口协议
',3);
INSERT INTO "QuestionBank" VALUES(230169,'下面协议中，属于数据链路层协议的是','781229','B、HDLC
',3);
INSERT INTO "QuestionBank" VALUES(230170,'作为数据链路层协议，HDLC协议在帧定界时所采用的方法被称为','781234','C、位填充法
',3);
INSERT INTO "QuestionBank" VALUES(230171,'以下功能中，不属于以太网网卡功能的是','781239','D、模拟信号与数字信号的转换
',3);
INSERT INTO "QuestionBank" VALUES(230172,'网络接口卡（NIC）是一种重要的网络组件，它被认为位于OSI模型的','781240','A、数据链路层
',3);
INSERT INTO "QuestionBank" VALUES(230173,'下列关于以太网网卡地址特点的说法中，不正确的是','781247','D、当设备在网络中移动时，地址会相应的发生变化
',3);
INSERT INTO "QuestionBank" VALUES(230174,'MAC地址又称网卡地址，被用于在物理上标识主机。下列选项中，表示MAC地址的是','781249','B、00-02-60-07-A1-1C
',3);
INSERT INTO "QuestionBank" VALUES(230175,'下面哪个陈述正确描述了MAC地址？','781254','C、长度为6个字节
',3);
INSERT INTO "QuestionBank" VALUES(230176,'某数据链路层协议为了实现可靠的数据传输，采用了ARQ机制中的选择重发（selective repeat）方式。现接收方收到编号分别为1、2、3、4和5的五个帧之后，发现其中编号为3的帧出现了差错，则接收方将采用下列作法中的','781256','A、丢弃编号为3的帧，缓存编号为4和5的帧，请求发送方重发编号为3的帧
',3);
INSERT INTO "QuestionBank" VALUES(230177,'某数据链路层协议为实现可靠的数据传输，采用了ARQ机制中的拉回（back to n）方式。现接收方收到编号分别为1、2、3、4和5的五个帧之后，发现其中编号为3的帧出现了差错，则接收方将采用下列作法中的','781261','B、丢弃编号为3、4和5的帧，请求发送方重发这三个帧
',3);
INSERT INTO "QuestionBank" VALUES(230178,'HDLC是一个典型的数据链路层协议，为了可靠的帧传输，它使用了反馈重发机制。现接收节点在连续收到第2、3、4和5帧后发现第4帧出错，要求发送方只重发第4帧，则说明发送方与接收方之间采用的是反馈重发机制中的','781266','C、选择重发
',3);
INSERT INTO "QuestionBank" VALUES(230179,'HDLC是一个典型的数据链路层协议，为了可靠的帧传输，它使用了反馈重发机制。现接收节点在连续收到第2、3、4和5帧后发现第4帧出错，要求发送方重发第4和第5帧，则说明发送方与接收方之间采用的是反馈重发机制中的','781268','A、拉回方式
',3);
INSERT INTO "QuestionBank" VALUES(230180,'交换机从某端口收到了一个帧，但该帧的目标MAC地址在网桥交换转发表中不存在，则交换机所采取的处理措施是','781275','D、向除源端口之外的所有其它端口转发
',3);
INSERT INTO "QuestionBank" VALUES(230181,'网桥端口1收到一个帧，并检测到该帧中的目标MAC地址与源MAC地址属于同一个网段，于是网桥将','781277','B、忽略该帧
',3);
INSERT INTO "QuestionBank" VALUES(230182,'下列情形中，主机不将所收到的以太网帧丢弃，而进行进一步处理的是','781281','B、帧的目的MAC地址是“FFFFFFFFFFFF” 
',3);
INSERT INTO "QuestionBank" VALUES(230183,'<p>下图为两个局域网 LAN1 和 LAN2 通过网桥 1 和网桥 2 互连后形成的网络结构，设节点A 发送了一个帧，但该帧的目的地址均不在这两个网桥的地址转发表中，那么该帧</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/a7c8b1acf4b04b468ff82d6ad461aa82.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/a7c8b1acf4b04b468ff82d6ad461aa82.png"/></p>','781287','D、<p>在网络中被桥1和桥2无限地进行循环转发</p>
',3);
INSERT INTO "QuestionBank" VALUES(230184,'<p>如图所示，交换机和HUB的配置都是缺省配置，交换机在前面的运行过程中已经构建好了自己的交换表，即具有与当前激活端口相对应的节点物理地址信息。现在当节点A以节点C的MAC地址为目标地址发送单播数据时，会收到这个数据的主机或接口包括</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/a6e40aa50eed481dba1d81831f60058a.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/a6e40aa50eed481dba1d81831f60058a.png"/></p>','781288','A、<p>节点C</p>
',3);
INSERT INTO "QuestionBank" VALUES(230185,'<p>如图所示，名为Sw256的交换机的四个端口分别连了4台计算机，交换机已经通过地址学习构建了自己的地址交换表(又称MAC地址表)。现计算机A要发生一个单播帧给计算机D，那么会收到这个数据的主机或接口包括</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/dc18bb3da83844b88a15f5b0ad2e21b1.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/dc18bb3da83844b88a15f5b0ad2e21b1.png"/></p>','781293','B、<p>计算机D</p>
',3);
INSERT INTO "QuestionBank" VALUES(230186,'为了进行差错控制，必须对传送的数据帧进行校验。在局域网中广泛使用的校验方法是 CRC校验。CRC-16标准规定的生成多项式为G(x)=X16+X15+X2+l，则它产生的校验码长度为','781297','B、16位
',3);
INSERT INTO "QuestionBank" VALUES(230187,'<p>如图所示，从PC到Laptop的数据传输过程中，差错检测用的全部为CRC校验，则该过程所经历的CRC运算次数共计为</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/9db9e45bbdd4437eb309c107a9319de7.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/9db9e45bbdd4437eb309c107a9319de7.png"/></p>','781303','D、<p>8</p>
',3);
INSERT INTO "QuestionBank" VALUES(230188,'下列机制中，可以解决因数据帧丢失而造成的死锁问题的是','781306','C、设置超时定时器，定时器时间到主动重发
',3);
INSERT INTO "QuestionBank" VALUES(230298,'IEEE 802标准对应于OSI参考模型中的哪些层？','781747','D、物理层和数据链路层
',3);
INSERT INTO "QuestionBank" VALUES(230299,'下列字段中，会在以太网帧的头部出现的字段是','781748','A、物理地址
',3);
INSERT INTO "QuestionBank" VALUES(230300,'下面IEEE802标准中，有关以太网标准的是','781752','A、IEEE802.3ab
',3);
INSERT INTO "QuestionBank" VALUES(230301,'下面设备或组件中，可以在以太网中实现冲突域分割的是','781758','C、 交换机
',3);
INSERT INTO "QuestionBank" VALUES(230302,'下面IEEE以太网标准中，关于万兆以太网标准的是','781763','D、IEEE802.3ae
',3);
INSERT INTO "QuestionBank" VALUES(230303,'下面关于万兆以太网特征的描述中，错误的是','781767','D、万兆以太网的MAC子层使用的是CSMA/CD
',3);
INSERT INTO "QuestionBank" VALUES(230304,'“1000Base-LX”标准中，数字“1000”表示','781769','B、最大传输速率为1000Mbps
',3);
INSERT INTO "QuestionBank" VALUES(230305,'“1000base-SX”标准中，字符“base”表示','781772','A、采用了基带传输
',3);
INSERT INTO "QuestionBank" VALUES(230306,'在一个采用星型拓扑的以太网中，当我们用100M的交换机来替代100M的集线器作为中心节点时，下面说法中正确的是','781778','C、网络中的冲突域个数增加了
',3);
INSERT INTO "QuestionBank" VALUES(230307,'虚拟局域网是基于下列设备中的哪类设备实现的？','781781','B、交换机
',3);
INSERT INTO "QuestionBank" VALUES(230308,'两位新手在讨论HUB与交换机的不再，下面是他们在探讨时所提出的观点，其中正确的说法是','781785','B、交换机在局域网环境内通过增加冲突域的个数，降低了冲突对网络性能的影响
',3);
INSERT INTO "QuestionBank" VALUES(230309,'带冲突检测的载波监听多路访问(CSMA/CD)是共享以太网中所采用的MAC机制，下列描述中，不是关于该机制特点的是','781791','D、面向连接的可靠传输
',3);
INSERT INTO "QuestionBank" VALUES(230310,'一个公司需要将一个现有的以太网架构改为无线局域网，则对现有网络上的每台主机而言，必须','781793','B、更换一个合适的网卡
',3);
INSERT INTO "QuestionBank" VALUES(230311,'<p>如下图所示的网络环境，当一个数据帧从主机A通过各个以太网网段发送到主机F时，正确的描述是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/76aa95fe38b4424fa5e032bfc296894a.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/76aa95fe38b4424fa5e032bfc296894a.png"/></p>','781798','C、<p>从源节点到目标节点，帧的格式一直保持不变</p>
',3);
INSERT INTO "QuestionBank" VALUES(230312,'下列MAC机制中，用于无线局域网的是','781801','B、CSMA/CA
',3);
INSERT INTO "QuestionBank" VALUES(230313,'IEEE802局域网模型中，与OSI参考模型的数据链路层相对应的是','781805','B、逻辑链路控制子层和介质访问控制子层
',3);
INSERT INTO "QuestionBank" VALUES(230314,'一个网络管理员被要求提供一个关于公司网络中布线与设备位置的结构图，该图属于','781809','B、物理拓扑
',3);
INSERT INTO "QuestionBank" VALUES(230315,'下列关于物理拓扑与逻辑拓扑的说法中，正确的是','781815','D、逻辑拓扑包含了节点之间的虚拟连接
',3);
INSERT INTO "QuestionBank" VALUES(230316,'下列关于以太网帧中“前导位”字段作用的说法中，正确的是','781817','B、通过特定的0和1组合，提供源和目标之间的帧同步
',3);
INSERT INTO "QuestionBank" VALUES(230317,'<p>如图所示的网络环境，共有三个网段组成，其中网段1为以太网，网段2为广域网串行链路，网段1为IEEE802.11无线网，则下列关于介质访问控制的说法中，正确的是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/b50908ebbee6490aa9986b26d700abd8.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/b50908ebbee6490aa9986b26d700abd8.png"/></p>','781822','C、<p>网段1使用了CSMA/CD，网段2不需要使用介质访问控制，网段3使用了CSMA/CA</p>
',3);
INSERT INTO "QuestionBank" VALUES(230318,'<p>如图所示的拓扑，则下列说法中正确的是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/2f2560539ed44cf2b9f4a37784daa517.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/2f2560539ed44cf2b9f4a37784daa517.png"/></p>','781824','A、<p>该网络环境中包含了五个冲突域</p>
',3);
INSERT INTO "QuestionBank" VALUES(230340,'下面命令中，被Microsoft Windows操作系统用于检查TCP/IP配置信息的命令是','781914','C、ipconfig
',3);
INSERT INTO "QuestionBank" VALUES(230341,'内部网关协议（RIP）是一种在小型互连网环境中广泛使用的基于距离矢量算法的协议。RIP规定一条通路上最多可包含的路由器数量是','781918','C、15
',3);
INSERT INTO "QuestionBank" VALUES(230342,'下面的地址中，可以分配给主机使用的IP地址是','781920','A、172.31.128.255/18
',3);
INSERT INTO "QuestionBank" VALUES(230343,'下列地址中，通常不被因特网上的路由器所转发的网络地址是','781925','B、172.16.32.1
',3);
INSERT INTO "QuestionBank" VALUES(230344,'下列关于ICMP协议的描述中，正确的是','781930','C、ICMP协议把关于网络状态信息的控制报文传送给发送方主机
',3);
INSERT INTO "QuestionBank" VALUES(230345,'ICMP测试的目的是','781932','A、测定网络的连通状态，若不连通，则报告其原因
',3);
INSERT INTO "QuestionBank" VALUES(230346,'下列协议中，用于将IP地址映射为相对应的MAC地址的协议是','781939','D、ARP
',3);
INSERT INTO "QuestionBank" VALUES(230347,'下面网络设备中，可以用于解决过量的广播流量问题的设备是','781943','D、路由器
',3);
INSERT INTO "QuestionBank" VALUES(230348,'IP地址192.168.1.35/27说明该主机所在网络的网络号为','781946','C、192.168.1.32
',3);
INSERT INTO "QuestionBank" VALUES(230349,'IP地址192.168.1.35/27说明该主机所在网络的广播地址为','781948','A、192.168.1.63
',3);
INSERT INTO "QuestionBank" VALUES(230350,'IP地址203.129.12.3/24表示该主机在所在网段中的主机号为','781954','C、3
',3);
INSERT INTO "QuestionBank" VALUES(230351,'一个C类网络用子网划分后，得到了规模相同的30个可用的子网络，则其子网掩码为','781958','C、255.255.255.248
',3);
INSERT INTO "QuestionBank" VALUES(230352,'网络193.3.1.64/26可拥有的最多主机数为','781962','C、62
',3);
INSERT INTO "QuestionBank" VALUES(230353,'下列协议数据单元中，在其包头中会出现IP地址字段的是','781965','B、分组
',3);
INSERT INTO "QuestionBank" VALUES(230354,'ARP协议用于','781971','D、将IP地址映射为MAC地址
',3);
INSERT INTO "QuestionBank" VALUES(230355,'以下路由协议中，不属于内部网关协议的是','781974','C、BGP
',3);
INSERT INTO "QuestionBank" VALUES(230356,'下列协议中，不属于路由选择协议的是','781979','D、ICMP
',3);
INSERT INTO "QuestionBank" VALUES(230357,'下列协议中，与Ping命令功能实现相关的是','781981','B、ICMP
',3);
INSERT INTO "QuestionBank" VALUES(230358,'下列关于IP地址192.168.1.255/24的解析中，正确的是','781985','B、该地址代表一个网络中的广播
',3);
INSERT INTO "QuestionBank" VALUES(230359,'下列协议中，用于向TCP/IP网络中的主机和路由器报告网络层差错和异常情况的是','781988','A、ICMP
',3);
INSERT INTO "QuestionBank" VALUES(230360,'一个主机的IP地址为10.1.13.15/24，说明该主机所在网络可拥有的最大主机数为','781993','B、254
',3);
INSERT INTO "QuestionBank" VALUES(230361,'以下源和目标主机的IP地址组合中，可以不经过路由器而直接寻址的是组合','781997','B、125.2.5.3/16和125.2.2.3/16
',3);
INSERT INTO "QuestionBank" VALUES(230362,'以下描述中，不属于数据报方式特点的是','782001','B、在每次数据传输前都必须在源节点与目标节点之间建立一条逻辑连接
',3);
INSERT INTO "QuestionBank" VALUES(230363,'下列配置内容中，DHCP协议不能提供给主机的配置选项是','782007','D、主机名
',3);
INSERT INTO "QuestionBank" VALUES(230364,'一个网络使用了子网技术，其中的一个子网已被分配了74.178.247.96/28，则下列地址中不能再分配给其他子网使用的是','782011','D、74.178.247.104/29
',3);
INSERT INTO "QuestionBank" VALUES(230366,'为了评估从学生子网到互联网的流量，网络管理员在监测站中安装了包捕获软件，请问在R1和R2之间应该使用哪种设备才能使监测站捕获到所有的分组？','782017','B、集线器
',3);
INSERT INTO "QuestionBank" VALUES(230367,'检查分析网络层的IP报头，可以得到以下什么信息？','782020','A、目标主机的IP地址
',3);
INSERT INTO "QuestionBank" VALUES(230368,'在网际层的封装中加入了以下什么信息？','782026','C、源IP地址和目的IP地址
',3);
INSERT INTO "QuestionBank" VALUES(230369,'在一个无连接系统中，下列哪个陈述是正确的？','782029','B、在发送分组之前，不和目的端建立连接
',3);
INSERT INTO "QuestionBank" VALUES(230370,'哪个IP分组字段用于防止无休止的分组传输循环？','782034','C、time-to-live
',3);
INSERT INTO "QuestionBank" VALUES(230371,'网络层地址的哪部分被路由器用于选择转发接口？','782036','A、主机号
',3);
INSERT INTO "QuestionBank" VALUES(230372,'<p>下图中，192.133.219.0网络中的主机A的缺省网关地址是多少？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/7ef9f40397d9403f9835acbf8b8af7b3.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/7ef9f40397d9403f9835acbf8b8af7b3.png"/></p>','782043','D、<p>192.133.219.1</p>
',3);
INSERT INTO "QuestionBank" VALUES(230373,'缺省网关的作用是什么？','782047','D、允许本地网络主机和其他网络主机通信
',3);
INSERT INTO "QuestionBank" VALUES(230374,'<p>在下图的网络环境中，由路由器隔离出来的广播域个数为</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/b275e8b48dc74d37a0f4ceb420a94391.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/b275e8b48dc74d37a0f4ceb420a94391.png"/></p>','782048','A、<p>4</p>
',3);
INSERT INTO "QuestionBank" VALUES(230375,'<p>参见图示，网络管理员在排查连通性问题时，需要确定可以转发数据包到外网的地址，使用netstat -r命令查看后，管理员认为哪个地址能被主机用于转发通往外部网络的数据包？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/34d6dd3ea62a40848cad72a405a4dbdf.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/34d6dd3ea62a40848cad72a405a4dbdf.png"/></p>','782054','C、<p>10.10.10.6</p>
',3);
INSERT INTO "QuestionBank" VALUES(230376,'<p>如图所示的IP网络环境，两个以太网段所分别使用的网络前缀应为</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/49ad3c2d407f42ceaf3ccf499b08e8a3.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/49ad3c2d407f42ceaf3ccf499b08e8a3.png"/></p>','782057','B、<p>/27</p>
',3);
INSERT INTO "QuestionBank" VALUES(230377,'给定IP地址和subnet mask，路由器如何决定相应的网络地址?','782062','C、二进制“与”运算
',3);
INSERT INTO "QuestionBank" VALUES(230378,'<p>如图所示，主机A连在局域网中，但它不能访问Internet ，根据图中所示的主机配置，则可能的问题是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/1763a9df2f9a4b1984df40d24d29cf87.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/1763a9df2f9a4b1984df40d24d29cf87.png"/></p>','782067','D、<p>缺省网关和主机在不同子网</p>
',3);
INSERT INTO "QuestionBank" VALUES(230379,'如果子网中的主机数最大为254的话，管理员为172.30.1.0网络分配的子网掩码应该是','782069','B、255.255.255.0
',3);
INSERT INTO "QuestionBank" VALUES(230380,'给定IP地址172.16.134.64，子网掩码 255.255.255.224，下面哪个描述合适？','782074','C、这是一个网络标识地址
',3);
INSERT INTO "QuestionBank" VALUES(230381,'路由器接口的IP地址和子网掩码分别为172.16.192.166 和255.255.255.248，它属于哪个子网？','782078','C、172.16.192.160
',3);
INSERT INTO "QuestionBank" VALUES(230382,'<p>如图所示，管理员为LBMISS网络分配的地址范围是192.168.10.0，为新的建设需要，该地址用/29进行子网划分，技术人员为新网络分配第五个子网（子网192.168.10.0是第一个子网），依照公司策略，路由器接口分配第一个可用主机地址，服务器分配最后可用的主机地址，请问图中的主机Server应该怎样配置IP参数才能获得网络连通性？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/e2bd6b176ba24f369913c943ac6ca365.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/e2bd6b176ba24f369913c943ac6ca365.png"/></p>','782081','B、<p>IP address: 192.168.10.38 subnet mask: 255.255.255.248 default gateway: 192.168.10.33</p>
',3);
INSERT INTO "QuestionBank" VALUES(230383,'<p>参见图示，为什么在PC上执行命令ping 127.0.0.1之后，会显示图中的响应信息？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/ce63ef4ad3134e2e986ded3b9298f4df.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/ce63ef4ad3134e2e986ded3b9298f4df.png"/></p>','782084','A、<p>主机没有正确安装IP协议</p>
',3);
INSERT INTO "QuestionBank" VALUES(230384,'<p>参见图示，网络管理员发现主机A到Internet的连通性有问题，但到服务器群是连通的，同时主机A到服务器群的连通性是完好的，引发问题的原因是什么？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/e53d029b1f1c4b38b600b85f5982f092.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/e53d029b1f1c4b38b600b85f5982f092.png"/></p>','782090','C、<p>主机A所在网络需要路由器开启NAT功能</p>
',3);
INSERT INTO "QuestionBank" VALUES(230385,'<p>参见图示，网络管理员制定了192.168.1.0/24的IP地址规划，串行链路网络使用其他范围地址，其他每个网络分配的主机地址数相同，试问什么网络掩码合适？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/59ffb0bd77cc458781ba2e3be168ff89.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/59ffb0bd77cc458781ba2e3be168ff89.png"/></p>','782093','B、<p>255.255.255.192</p>
',3);
INSERT INTO "QuestionBank" VALUES(230386,'<p>如图所示，假设网络已经收敛，即路由表和ARP表是完整的，主机A向www.server发送请求时，主机A的以太网帧中，其目的地址字段的MAC地址是什么？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/c8c647aca8ed4333bfee3fc80c2a003d.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/c8c647aca8ed4333bfee3fc80c2a003d.png"/></p>','782096','A、<p>00-0c-85-cf-65-c0</p>
',3);
INSERT INTO "QuestionBank" VALUES(230387,'<p>如图所示，PC向Laptop发送帧，请问离开RouterB的帧内的源MAC和源IP地址是什么？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/3f84cf7223c646908f99958cdc5eaabb.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/3f84cf7223c646908f99958cdc5eaabb.png"/></p>','782102','C、<p>source MAC - Fa0/1 on RouterB, source IP - PC</p>
',3);
INSERT INTO "QuestionBank" VALUES(230388,'ARP的主要作用是什么？','782105','B、把IPv4地址解析为MAC地址
',3);
INSERT INTO "QuestionBank" VALUES(230389,'当对网络地址为130.68.0.0进行子网掩码为255.255.248.0的子网划分时，请问每个子网可以分配的主机地址数是多少？','782109','B、2046
',3);
INSERT INTO "QuestionBank" VALUES(230390,'公司内部子网主机数最多为27，需要进行子网划分，哪个子网掩码可以满足主机数的需要，并且使得子网内未用的地址数最少？','782112','A、255.255.255.224
',3);
INSERT INTO "QuestionBank" VALUES(230391,'<p>如图所示，PC1向PC2发送数据包，PC1封装在报头中的目的IP地址是哪个？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/d22ef6a04dc240b99373119596caab3e.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/d22ef6a04dc240b99373119596caab3e.png"/></p>','782119','D、<p>192.168.3.54</p>
',3);
INSERT INTO "QuestionBank" VALUES(230392,'<p>IP配置如图所示，Host A和Host B要和其他网络通信，其结果如何？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/a24707a0e3354fc2aa447d19cbe84e36.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/a24707a0e3354fc2aa447d19cbe84e36.png"/></p>','782122','C、<p>主机B成功，主机A失败</p>
',3);
INSERT INTO "QuestionBank" VALUES(230393,'<p>如图所示，假设所有设备都用缺省配置，该拓扑需要分配几个子网地址？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/26e40d00dbe246658b6cdb4e195ffb8c.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/26e40d00dbe246658b6cdb4e195ffb8c.png"/></p>','782124','A、<p>1</p>
',3);
INSERT INTO "QuestionBank" VALUES(230394,'<p>网络如图所示，网络技术员为该网络分配私有地址192.168.1.0/24，请问网段A要使用哪个子网掩码才能满足主机需要？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/f297bff34744483a899d66b9e082166d.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/f297bff34744483a899d66b9e082166d.png"/></p>','782130','C、<p>255.255.255.224</p>
',3);
INSERT INTO "QuestionBank" VALUES(230395,'PC不能连接到远程WEB节点，不能ping自己的缺省网关以及本网段工作正常的打印机，要验证该PC的TCP/IP栈是否功能正常，要采取什么方法？','782133','B、在命令行输入ping127.0.0.1
',3);
INSERT INTO "QuestionBank" VALUES(230396,'<p>网络配置如图所示，Clerical办公室的主机A坏了，更换了一台主机之后，该机Ping 127.0.0.1成功，但不能访问公司网络，请问什么原因引起该问题？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/3c26ad2e14314860a7d1c3c2edec918e.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/3c26ad2e14314860a7d1c3c2edec918e.png"/></p>','782136','A、<p>输入的IP地址不对</p>
',3);
INSERT INTO "QuestionBank" VALUES(230397,'<p>如图所示，一网络技术员要为主机A配置正确的 IP地址，下列配置哪个是有效的？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/2513508b6f1d4400aa2263f47135a918.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/2513508b6f1d4400aa2263f47135a918.png"/></p>','782141','B、<p>IP address: 192.168.100.20; Subnet Mask: 255.255.255.240; Default Gateway: 192.168.100.17</p>
',3);
INSERT INTO "QuestionBank" VALUES(230398,'给定IP地址172.30.0.0，主机数为510，对应的子网掩码是多少？','782146','C、255.255.254.0
',3);
INSERT INTO "QuestionBank" VALUES(230399,'下面哪个网络号和子网掩码正确标识了从172.16.128.0到172.16.159.255的IP地址？','782151','D、172.16.128.0 255.255.224.0
',3);
INSERT INTO "QuestionBank" VALUES(230400,'<p>如图所示，主机A试图和主机C建立TCP/IP会话，在此会话过程中，捕获到源MAC地址为0050.7320.D632，目的MAC地址为0030.8517.44C4的帧，封装在帧内的分组的源IP地址为192.168.7.5，目的IP地址为192.168.219.24。请问该帧是在网络的哪个位置捕获的？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/03b4d5c0e4a4406aa444df55c094016d.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/03b4d5c0e4a4406aa444df55c094016d.png"/></p>','782154','C、<p>离开 Dalla</p>
',3);
INSERT INTO "QuestionBank" VALUES(230401,'以下哪个IPv4地址表示子网的广播地址？','782156','A、172.16.4.63 /26
',3);
INSERT INTO "QuestionBank" VALUES(230402,'<p>IP配置参见图示，是什么原因导致主机A和主机B不能通信？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/e6430815d286437fbe2f54bed4ecb930.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/e6430815d286437fbe2f54bed4ecb930.png"/></p>','782163','D、<p>网关地址被配置成了广播地址</p>
',3);
INSERT INTO "QuestionBank" VALUES(230403,'<p>参见图示，主机A正在给主机B发送数据，主机A使用哪个目的地址？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/090d2ccae5ea4896abcd7f4d66898f32.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/090d2ccae5ea4896abcd7f4d66898f32.png"/></p>','782167','D、<p>Destination MAC: EEEE:EEEE:EEEE Destination IP: 172.22.0.75</p>
',3);
INSERT INTO "QuestionBank" VALUES(230404,'<p>参见图示的主机设置，技术员在排查网络问题时需要验证路由器的LAN接口，技术员在该主机上应该ping哪个地址才可以确定路由器接口是否正常工作？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/add9fe240a444be6b9b4b70bf401a47e.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/add9fe240a444be6b9b4b70bf401a47e.png"/></p>','782170','C、<p>192.168.254.1</p>
',3);
INSERT INTO "QuestionBank" VALUES(230405,'<p>如图， 从PC1发出命令 Tracert PC4时，哪个设备会最先给PC1发送回应？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/0eb57ba77de24ace9d30aaaf8388374d.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/0eb57ba77de24ace9d30aaaf8388374d.png"/></p>','782174','C、<p>London</p>
',3);
INSERT INTO "QuestionBank" VALUES(230406,'<p>网络中的主机要访问Internet，路由器RT_A需要提供什么功能？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/6a6713ad9d7240418029b53ee6a6e0f3.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/6a6713ad9d7240418029b53ee6a6e0f3.png"/></p>','782176','A、<p>NAT</p>
',3);
INSERT INTO "QuestionBank" VALUES(230407,'当路由器在路由表中找不到与IP分组中的目标IP网络相对应的表项时，可能会采取下列做法中的','782181,782184','B、丢弃该IP分组
E、将分组转发到缺省路由所给出的路由器接口
',4);
INSERT INTO "QuestionBank" VALUES(230408,'下列关于路由及其作用的说法中，正确的是','782186,782188,782189','B、如果目的网络是直连的，路由器把数据包直接转发到目的主机
D、如果不存在到达目的网络的路由，并且缺省路由存在，数据包将被转发到下一跳路由器
E、如果源主机配置了缺省网关，发送到远程网络的数据包将使用该缺省网关进行转发
',4);
INSERT INTO "QuestionBank" VALUES(230409,'<p>如图所示的网络环境，网络管理员察觉到网络中有太多的广播，要解决该问题，需采取以下哪两个步骤？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/1b9a560a21494ee8a35a8ec83a92ce35.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/1b9a560a21494ee8a35a8ec83a92ce35.png"/></p>','782190,782192','A、<p>用路由器替换S2</p>
C、<p>子网划分192.168.0.0 /24</p>
',4);
INSERT INTO "QuestionBank" VALUES(230410,'下列关于动态路由协议的说法中，正确的是','782196,782198,782199','B、为路由器提供最新的路由表
D、交换路由信息要消耗带宽
E、避免了路由表的手动配置和维护
',4);
INSERT INTO "QuestionBank" VALUES(230411,'下列哪个IPv4子网地址代表有效的主机地址？','782201,782202','B、172.16.4.155 /26
C、172.16.4.207 /27
',4);
INSERT INTO "QuestionBank" VALUES(230412,'下列关于IP寻址的说法中，正确的是','782207,782209','C、路由器会阻止私有地址访问Internet
E、IP地址127.0.0.1被用作主机的回送地址
',4);
INSERT INTO "QuestionBank" VALUES(230413,'下列哪些网络设备通常被要求分配静态IP地址?','782211,782212,782214','B、服务器
C、路由器
E、网络打印机
',4);
INSERT INTO "QuestionBank" VALUES(230414,'如果路由器收到ICMP消息，其中TTL值为1，并且判断目的主机在大于一跳的远程网络中，则接下来会发生哪两件事情？','782215,782217','A、路由器丢弃数据包
C、路由器给源主机发送超时信息
',4);
INSERT INTO "QuestionBank" VALUES(230415,'当一个设备从一个网络或子网移动到另一个网络时，下面哪两项说法是正确的？','782222,782224','C、设备仍然基于同样的二层地址工作
E、重新分配三层地址才能进行网络通信
',4);
INSERT INTO "QuestionBank" VALUES(230416,'<p>如图所示，HOST_A试图联系SERVER_B，在发起通信的过程中，下列有关Host_A寻址的描述中，正确的是哪个？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/069646f6fdbb4bdb97e29718e00bbbcb.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/069646f6fdbb4bdb97e29718e00bbbcb.png"/></p>','782228,782229','D、<p>帧的目的MAC地址是Router_A</p>
E、<p>数据包的目的IP地址是Server_B</p>
',4);
INSERT INTO "QuestionBank" VALUES(230417,'主机A的IP地址和子网掩码分别是172.16.225.93和255.255.248.0，在和IP地址为172.16.231.78的新主机通信时，主机A要对目的地址执行“与”操作，将会发生哪两件事情？','782231,782233','B、主机A发送ARP广播请求缺省网关的MAC地址
D、得到172.16.224.0的结果
',4);
INSERT INTO "QuestionBank" VALUES(230418,'下面关于路由器在网络中角色的陈述，哪三个是正确的？','782235,782236,782238','A、分割广播域
B、能够连接不同技术的网络
D、每个路由器接口需要一个独立的网络或子网
',4);
INSERT INTO "QuestionBank" VALUES(230419,'<p>拓扑如图所示，下列陈述中，哪三项是正确的？</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/9e4f0229eac74ddaa386785eca6c56da.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/9e4f0229eac74ddaa386785eca6c56da.png"/></p>','782241,782242,782244','B、<p>有5个广播域</p>
C、<p>主机B用交叉线缆和路由器相连</p>
E、<p>有5个网络</p>
',4);
INSERT INTO "QuestionBank" VALUES(230420,'<p>如图所示，路由器提供NAT功能，请问图中可分配给计算机访问Internet的IP地址有哪些？（选择3个）</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/f8a2e00781d24faa9d64df5f12e6b37d.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/f8a2e00781d24faa9d64df5f12e6b37d.png"/></p>','782247,782248,782249','C、<p>192.168.18.49</p>
D、<p>192.168.18.52</p>
E、<p>192.168.18.59</p>
',4);
INSERT INTO "QuestionBank" VALUES(230421,'<p>参见图示，哪三项关于IP配置陈述是正确的？<br/><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/3c0cba930b9042579cb7c0b4cadce523.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/3c0cba930b9042579cb7c0b4cadce523.png"/></p>','782250,782251,782254','A、<p>分配给计算机的地址是私有地址</p>
B、<p>本地网络以外的计算机不能通信</p>
E、<p>主机的地址前缀是/27</p>
',4);
INSERT INTO "QuestionBank" VALUES(230422,'有一个网络管理员，用网络扫描软件捕捉了若干数据包，每个包中都显示了上层应用所对应的源端口与目标端口的组合。下列源端口与目标端口组合中可能属于FTP应用的端口组合是','782255','A、57328与21/20
',3);
INSERT INTO "QuestionBank" VALUES(230423,'下面关于UDP协议特点的描述中，不正确的是','782262','D、使用了滑动窗口技术进行流量控制
',3);
INSERT INTO "QuestionBank" VALUES(230424,'下面应用层协议中，在传输层基于UDP协议实现的是','782265','C、TFTP
',3);
INSERT INTO "QuestionBank" VALUES(230425,'下面特征描述中，属于UDP和TCP共同特征的是','782269','C、使用端口号作为进程标识
',3);
INSERT INTO "QuestionBank" VALUES(230426,'下列协议字段中，会在TCP分段头中出现的是','782272','B、端口号
',3);
INSERT INTO "QuestionBank" VALUES(230427,'下列协议中，属于TCP/IP传输层协议的是','782276','B、UDP
',3);
INSERT INTO "QuestionBank" VALUES(230428,'在TCP协议中，三次握手方法被用于','782279','A、建立TCP连接
',3);
INSERT INTO "QuestionBank" VALUES(230429,'下列协议字段中，不会在TCP分段头中出现的是','782285','C、IP地址
',3);
INSERT INTO "QuestionBank" VALUES(230430,'下列关于传输层分段作用的说法中，正确的是','782290','D、用于在端设备上标识正在通信的进程或服务
',3);
INSERT INTO "QuestionBank" VALUES(230431,'<p>有一个网络管理员，用网络扫描软件捕捉了一个数据报文，如图所示，那么下列说法中正确的是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/f90ebf737f4b43de9ad0f8834fd6993c.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/f90ebf737f4b43de9ad0f8834fd6993c.png"/></p>','782292','B、<p>这是一个关于Telnet 应用的TCP分段</p>
',3);
INSERT INTO "QuestionBank" VALUES(230432,'在TCP分段头中使用端口号的目的在于','782296','B、使得接收主机能够将数据对应到合适的应用
',3);
INSERT INTO "QuestionBank" VALUES(230433,'如图所示，主机A使用FTP从 Server 1上下载大容量文件。在传输过程中，若Server 1没有收到从Host A 的关于部分所传输数据确认，那么 Server 1 将采取下列行动中的','782300','B、等待超时后，重新发送未被确认的数据
',3);
INSERT INTO "QuestionBank" VALUES(230434,'TCP数据传输中使用流量控制的目的在于','782306','D、防止接收端被过量的进来数据所过载
',3);
INSERT INTO "QuestionBank" VALUES(230435,'下列关于Layer 4 寻址的说法中，正确的是','782309','C、标识正在通信的应用
',3);
INSERT INTO "QuestionBank" VALUES(230436,'<p>有一个网络管理员，用网络扫描软件捕捉了一个数据报文，如图所示，关于该报文的作用，下列说法中正确的是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/e8552c8dd0b24c76b16d099479b622cc.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/e8552c8dd0b24c76b16d099479b622cc.png"/></p>','782311','A、<p>建立TCP连接</p>
',3);
INSERT INTO "QuestionBank" VALUES(230437,'<p>如图所示的“netstat -n”结果，表明</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/87653d4ab3c3419e94e8654b327b1a58.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/87653d4ab3c3419e94e8654b327b1a58.png"/></p>','782316','B、<p>与64.100.173.42 主机上的进程通信使用了 HTTPS协议</p>
',3);
INSERT INTO "QuestionBank" VALUES(230438,'源端在发送数据时，将要动态选择的是下列网络参数中的','782322','D、源端口号
',3);
INSERT INTO "QuestionBank" VALUES(230439,'下列机制中，不被TCP用于进行流量控制的是','782324','B、建立连接
',3);
INSERT INTO "QuestionBank" VALUES(230440,'下列信息中，能够在TCP 和UDP头中出现的是','782328','B、端口号
',3);
INSERT INTO "QuestionBank" VALUES(230441,'下列机制中，不属于TCP的是','782334','D、尽力而为的服务
',3);
INSERT INTO "QuestionBank" VALUES(230442,'下列说法中，属于 UDP特点的是','782336','B、数据传输的延迟小
',3);
INSERT INTO "QuestionBank" VALUES(230443,'当一个 web browser向一个使用标准服务器端口的 web server 提出请求时，那么在服务器返回的响应包中，所使用的源端口是','782341','C、80
',3);
INSERT INTO "QuestionBank" VALUES(230444,'<p>如图所示，从主机A到web server 的请求中，目标socket 的值应为</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/085d945f32ce49d198f8ad245887bf9c.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/085d945f32ce49d198f8ad245887bf9c.png"/></p>','782344','B、<p>198.133.219.25:80</p>
',3);
INSERT INTO "QuestionBank" VALUES(230445,'有些网络协议或技术被称为“尽力而为（best-effort）”的服务，除了UDP外，下面属于该类服务的协议或技术是','782348,782349','B、IP
C、Ethernet
',4);
INSERT INTO "QuestionBank" VALUES(230446,'下列关于客户端的说法中，正确的是','782351,782352','A、发起通信请求的一方
B、可上传数据到服务器端
',4);
INSERT INTO "QuestionBank" VALUES(230447,'下列关于Layer 4 寻址的说法中，正确的是','782356,782358','B、标识正在通信的应用
D、在主机之间标识多个通信会话
',4);
INSERT INTO "QuestionBank" VALUES(230448,'下列关于传输层协议的说法中，正确的是','782359,782362,782363','A、TCP和UDP端口被用于标识不同的应用层协议
D、TCP使用窗口与确认机制实现了可靠的数据传输
E、TCP是一个面向连接的协议，而UDP是一个尽力而为的无连接协议
',4);
INSERT INTO "QuestionBank" VALUES(230449,'<p>有一个网络管理员，用网络扫描软件捕捉了一个数据报文，如图所示，那么下列说法中正确的是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/0c05e6330e6f4a809e9cc947ebbb2356.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/0c05e6330e6f4a809e9cc947ebbb2356.png"/></p>','782366,782367','C、<p>目标端口表明这是一个Telnet会话</p>
D、<p>返回的分段中将包含的源端口号为23</p>
',4);
INSERT INTO "QuestionBank" VALUES(230450,'下列协议中，属于TCP/IP模型中应用层协议的是','782371','C、DNS
',3);
INSERT INTO "QuestionBank" VALUES(230451,'下列协议中，属于TCP/IP应用层的应用支撑协议的是','782374','B、DNS
',3);
INSERT INTO "QuestionBank" VALUES(230452,'下列协议中，属于TCP/IP应用层的应用支撑协议并提供网络管理方法的是','782378','B、SNMP
',3);
INSERT INTO "QuestionBank" VALUES(230453,'下列协议中，不属于应用层的协议的是','782384','D、ICMP
',3);
INSERT INTO "QuestionBank" VALUES(230454,'下列著名端口中，用于提供Telnet服务的端口为','782386','B、23
',3);
INSERT INTO "QuestionBank" VALUES(230455,'下列著名端口中，用于提供WWW服务的端口为','782392','D、80
',3);
INSERT INTO "QuestionBank" VALUES(230456,'下列协议中，可用于从邮箱中读出邮件的是','782394','B、POP3
',3);
INSERT INTO "QuestionBank" VALUES(230457,'下列协议中，用于将域名解析为IP地址的协议是','782399','C、DNS
',3);
INSERT INTO "QuestionBank" VALUES(230458,'下列协议中，用于为主机动态分配IP参数的协议是','782404','D、DHCP
',3);
INSERT INTO "QuestionBank" VALUES(230459,'下列协议中，用于在浏览器与Web服务器之间传输超文本信息的协议是','782407','C、HTTP
',3);
INSERT INTO "QuestionBank" VALUES(230460,'下列协议中，用于在浏览器与Web服务器之间以安全方式进行超文本信息传输的协议是','782411','C、HTTPS
',3);
INSERT INTO "QuestionBank" VALUES(230461,'下列协议中，与邮件传输无关的应用层协议是','782414','B、SNMP
',3);
INSERT INTO "QuestionBank" VALUES(230462,'下列TCP端口中，被FTP服务器进程用于建立数据传输连接的为','782420','D、20
',3);
INSERT INTO "QuestionBank" VALUES(230463,'当用户在浏览器中输入http://www.baidu.com这样的URL信息时，从应用实现的角度，第一步操作应该是','782422','B、浏览器调用域名解析库函数进行域名解析
',3);
INSERT INTO "QuestionBank" VALUES(230464,'下列应用协议中，用于在服务器和客户端实现可靠的文件传输的是','782428','D、FTP
',3);
INSERT INTO "QuestionBank" VALUES(230465,'DNS中的资源记录的作用是','782429','A、被DNS服务器用于解析主机名称
',3);
INSERT INTO "QuestionBank" VALUES(230466,'<p>有一个网络管理员，用网络扫描软件捕捉了一个数据报文，如图所示，该数据包的目标端口是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/602188aeb94549f7926af4252c2e6e75.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/602188aeb94549f7926af4252c2e6e75.png"/></p>','782434','B、<p>80</p>
',3);
INSERT INTO "QuestionBank" VALUES(230467,'<p>如图所示的某主机命令行界面，输入“nslookup”后，所提示的“Address： 192.168.33.2”表示</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/6da4bc5ea6284e82856a786fb486baf3.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/6da4bc5ea6284e82856a786fb486baf3.png"/></p>','782439','C、<p>本机的首选DNS服务器</p>
',3);
INSERT INTO "QuestionBank" VALUES(230468,'<p>如图所示，两个客户端通过邮件服务器进行邮件传输。则下列关于各阶段组件或协议的说法中，正确的是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/2151f2db464040b782eb7a89f7e63efa.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/2151f2db464040b782eb7a89f7e63efa.png"/></p>','782443','C、<p>1.MUA 2.SMTP 3.MTA 4.SMTP 5.MTA 6.MDA 7.POP 8.MUA</p>
',3);
INSERT INTO "QuestionBank" VALUES(230469,'<p>有一个网络管理员，用网络扫描软件捕捉了一个数据报文，如图所示，从中可得出的结论是</p><p><img src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/7498fe9a96a349b98cc6b4c2223fde9e.png" _src="http://spoc.wzu.edu.cn/repositry/umeditor/i/2009/14/7498fe9a96a349b98cc6b4c2223fde9e.png"/></p>','782446','B、<p>这是一个HTTP应用相关的TCP分段</p>
',3);
INSERT INTO "QuestionBank" VALUES(230470,'下列协议中，可用于在web server 和client browser之间进行web 资源传输的是','782450,782452','B、HTTP
D、HTTPS
',4);
INSERT INTO "QuestionBank" VALUES(230471,'下列关于MTA 在邮件系统中作用的描述中，正确的是','782453,782455,782456','A、从客户端的邮件用户代理进程上接收邮件
C、将邮件传递给邮件分发代理（MDA）进程
D、使用SMTP协议在邮件服务器之间进行邮件传输
',4);
INSERT INTO "QuestionBank" VALUES(230472,'下列邮件组件或协议中，用于在服务器之间进行邮件转发的是','782459,782461','B、MTA
D、SMTP
',4);
INSERT INTO "QuestionBank" VALUES(231759,'<p>关系数据库管理系统应能实现的专门关系运算包括&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。</p>','785892','A、<p><span>选择、投影、连接&nbsp;</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(231760,'<p>在关系代数的专门关系运算中，从表中取出满足条件的属性的操作称为&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;（　　　） ；</p>','785896','A、<p>投影</p>
',3);
INSERT INTO "QuestionBank" VALUES(231761,'<p>在关系代数的专门关系运算中，从表中选出满足某种条件的元组的操作称为&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ；</p>','785900','A、<p>选择</p>
',3);
INSERT INTO "QuestionBank" VALUES(231762,'<p>在关系代数的专门关系运算中，将两个关系中具有共同属性值的元组连接到一起构成新表的操作称为&nbsp; &nbsp; &nbsp; &nbsp; 。&nbsp;</p>','785904','A、<p>连接</p>
',3);
INSERT INTO "QuestionBank" VALUES(231763,'<p>自然连接是构成新关系的有效方法。一般情况下，当对关系R和S使用自然连接时，要求R和S含有一个或多个共有的&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 。&nbsp;&nbsp;</p>','785908','A、<p><span>属性</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(231764,'<p>在关系数据模型中，通常可以把&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 称为属性</p>','785912','A、<p>字段</p>
',3);
INSERT INTO "QuestionBank" VALUES(231765,'<p>在关系数据模型中，通常可以把&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 称为关系模式。</p>','785916','A、<p><span>记录结构(类型)&nbsp;&nbsp;</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(231766,'<p>在关系数据模型的关系代数中，对一个关系做投影操作后，新关系的元组个数&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 原来关系的元组个数。</p>','785920','A、<p>小于或等于</p>
',3);
INSERT INTO "QuestionBank" VALUES(231767,'<p>21．在关系数据模型中，用&nbsp; &nbsp; &nbsp; &nbsp;⑤&nbsp; &nbsp; &nbsp;形式表示实体类型和实体间的联系是关系模型的主要特征。</p>','785924','A、<p><span>表格或关系</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(231768,'<p>关系运算中花费时间可能最长的运算是&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 。&nbsp;</p>','785928','A、<p><span>笛卡尔积&nbsp;</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(231769,'<p>在关系代数运算中，五种基本运算为&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 。&nbsp;&nbsp;</p>','785932','A、<p><span>并、差、选择、投影、笛卡尔积&nbsp;</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(233295,'计算机中所有信息都以二进制表示的原因是（）','790391','D、物理器件特性所致；
',3);
INSERT INTO "QuestionBank" VALUES(233296,'引入八进制和十六进制的目的是（）','790395','D、用于等价地表示二进制，便于阅读和书写；
',3);
INSERT INTO "QuestionBank" VALUES(233297,'108对应的十六进制形式是（）','790396','A、6CH；
',3);
INSERT INTO "QuestionBank" VALUES(233298,'以下给出的各种进制计数制的数中，最小的数是（）','790403','D、(2F)H；
',3);
INSERT INTO "QuestionBank" VALUES(233299,'以下给出的各种进制计数制的数中，最小的数是（）','790407','D、(5A)H；
',3);
INSERT INTO "QuestionBank" VALUES(233300,'负零的补码表示为（）','790409','B、0 00…00；
',3);
INSERT INTO "QuestionBank" VALUES(233301,'[X]补=X0.X1X2…Xn（n为整数），它的模是（）。','790415','D、2；
',3);
INSERT INTO "QuestionBank" VALUES(233302,'[X]补=X0X1X2…Xn（n为整数），它的模是（）。','790416','A、2^(n+1)；
',3);
INSERT INTO "QuestionBank" VALUES(233303,'以下编码中，零的表示形式是唯一的编码是（）。','790422','C、补码；
',3);
INSERT INTO "QuestionBank" VALUES(233304,'以下关于n位的补码（1位符号位，n-1位数值位）和移码（偏置常数为2^(n-1)）关系的表述中，错误的是（）。','790425','B、零的补码和移码表示相同；
',3);
INSERT INTO "QuestionBank" VALUES(233305,'以下是一些关于编码表示特点的叙述：1.零的表示是唯一的。<br>2.符号位可以和数值部分一起参加运算。3.和其真值的对应关系简单、直观。<br>4.减法可以用加法来实现。其中哪些选项是关于补码表示的特点？（）','790431','D、仅1和2和4；
',3);
INSERT INTO "QuestionBank" VALUES(233306,'<p>假定某数X=-0100 1010B，在计算机内部的表示为1011 0110B，则该数采用的编码方法是（）</p>','790434','C、<p>补码；</p>
',3);
INSERT INTO "QuestionBank" VALUES(233307,'设寄存器的位数为8位，机器数采用补码形式（含一位符号位），则十进制数-26存放在寄存器中的内容为（）','790438','C、E6H；
',3);
INSERT INTO "QuestionBank" VALUES(233308,'-1029的16位补码用十六进制表示为（）','790443','D、FBFBH；
',3);
INSERT INTO "QuestionBank" VALUES(233309,'考虑以下C语言代码：<br>short si=-8196;<br>unsigned short usi = si;<br>执行上述程序段后，usi的值是（）','790447','D、57340；
',3);
INSERT INTO "QuestionBank" VALUES(233310,'<p>若[X]<sub>原</sub>=1.x1x2x3x4,其中，小数点前面一位是符号位，符号位为1时表示负数，当满足（）时，X&gt;-1/2成立。</p>','790451','D、<p>x1必须为0，x2,x3,x4任意；</p>
',3);
INSERT INTO "QuestionBank" VALUES(233311,'设X=-1011，则8位(1+7位)补码[X]补为（）','790454','C、1111 0101；
',3);
INSERT INTO "QuestionBank" VALUES(233312,'16位无符号数所能表示的数值范围是（）','790456','A、0-(2^16-1)；
',3);
INSERT INTO "QuestionBank" VALUES(233313,'16位补码整数所能表示的范围是（）','790460','A、-2^15~+(2^15-1)；
',3);
INSERT INTO "QuestionBank" VALUES(233314,'若浮点数尾数用补码表示，则下列数中为规格化尾数形式的是（）','790467','D、1.000 1000；
',3);
INSERT INTO "QuestionBank" VALUES(233315,'若浮点数尾数用原码表示，则下列数中为规格化尾数形式的是（）','790468','A、1.110 0000；
',3);
INSERT INTO "QuestionBank" VALUES(233316,'用于表示浮点数阶码的编码通常是（）','790475','D、移码；
',3);
INSERT INTO "QuestionBank" VALUES(233317,'假定某数采用IEEE754单精度浮点数格式表示为4510 0000H，则该数的值是（）','790477','B、1.125*2^11；
',3);
INSERT INTO "QuestionBank" VALUES(233318,'假定某数采用IEEE754单精度浮点数格式表示为C820 0000H，则该数的值是（）','790482','C、(-1.25)*2^17；
',3);
INSERT INTO "QuestionBank" VALUES(233319,'假定变量i、f的数据类型分别是int、float。已知i=12345，f=1.2345e3，则在一个32位机器中执行下列表达式时，结果为“假”的是（）','790486','C、f==(float)(int)f；
',3);
INSERT INTO "QuestionBank" VALUES(233320,'IBM 370的短浮点数格式中，总位数为32位，左边第一位（b0）为数符，随后7位（b1~b7）为阶码，用移码表示，偏置常数为64，右边24位（b8~b31）为6位十六进制原码小数表示的尾数，规格化尾数形式为0.x1x2x3x4x5x6，x1~x6为十六进制表示，最高位x1为非0数，基为16。若将十进制数-265.625用该浮点数规格化形式表示，则应表示为（）。（用十六进制表示）','790488','A、C310 9A00H；
',3);
INSERT INTO "QuestionBank" VALUES(233321,'假定两种浮点数表示格式的位数都是32位，但格式1的阶码长、尾数短，格式2的阶码短、尾数长，其他所有规定都相同，则它们可以表示的数的精度和范围为（）','790494','C、格式2可表示的数的范围更小，但精度更高；
',3);
INSERT INTO "QuestionBank" VALUES(233322,'在一般的计算机系统中，西文字符编码普遍采用（）','790497','B、ASCII码；
',3);
INSERT INTO "QuestionBank" VALUES(233323,'假定某计算机按字节编址，采用小端方式，有一个float型变量x的地址为FFFF C000H，x=1234 5678H，则在内存单元FFFF C001H中存放的内容是（）','790502','C、56H;
',3);
INSERT INTO "QuestionBank" VALUES(233324,'以下有关机器字长的叙述中，错误的是（）','790507','D、机器字长对计算机硬件的造价没有影响；
',3);
INSERT INTO "QuestionBank" VALUES(233325,'以下关于计算机中存储器容量单位的叙述中，错误的是（）','790510','C、一台计算机的编址单位，指令字长和数据字长都一样，且是字节的整数倍；
',3);
INSERT INTO "QuestionBank" VALUES(233326,'假定下列字符编码中含有奇偶校验位，但没有发生数据错误，那么采用奇校验的字符编码是（）','790514','C、1011 0000；
',3);
INSERT INTO "QuestionBank" VALUES(233327,'8位无符号整数1001 0101右移一位后的值是（）','790516','A、0100 1010；
',3);
INSERT INTO "QuestionBank" VALUES(233328,'8位补码定点整数1001 0101右移一位后的值是（）','790523','D、1100 1010；
',3);
INSERT INTO "QuestionBank" VALUES(233329,'8位补码定点整数1001 0101左移一位后的值是（）','790527','D、溢出
',3);
INSERT INTO "QuestionBank" VALUES(233330,'8位补码定点整数1001 0101扩展8位后的值用十六进制表示为（）','790530','C、FF95H；
',3);
INSERT INTO "QuestionBank" VALUES(233331,'考虑以下C语言代码：<br>short si=-8196;<br>int i = si;<br>执行上述程序段后，i的机器数表示是（）','790535','D、FFFF DFFCH；
',3);
INSERT INTO "QuestionBank" VALUES(233332,'CPU中能进行算术和逻辑运算的最基本的运算部件是（）','790539','D、ALU；
',3);
INSERT INTO "QuestionBank" VALUES(233333,'ALU的核心部件是（）','790542','C、加法器；
',3);
INSERT INTO "QuestionBank" VALUES(233334,'在补码加减运算部件中，无论采用双符号位还是单符号位，必须有（）电路，它一般用异或门来实现。','790546','C、溢出判断；
',3);
INSERT INTO "QuestionBank" VALUES(233335,'某计算机字长为8位，其CPU中有一个8位加法器。已知无符号数x=69，y=38，现要在该加法器中完成x+y的运算，则该加法器的两个输入端信息和输入的低位进位信息分别为（）','790548','A、0100 0101、0010 0110、0；
',3);
INSERT INTO "QuestionBank" VALUES(233336,'某计算机字长为8位，其CPU中有一个8位加法器。已知无符号数x=69，y=38，现要在该加法器中完成x-y的运算，则该加法器的两个输入端信息和输入的低位进位信息分别为（）','790553','B、0100 0101、1101 1001、1；
',3);
INSERT INTO "QuestionBank" VALUES(233337,'某计算机字长为8位，其CPU中有一个8位加法器。已知带符号数x=-69，y=-38，现要在该加法器中完成x+y的运算，则该加法器的两个输入端信息和输入的低位进位信息分别为（）','790556','A、1011 1011、1101 1010、0；
',3);
INSERT INTO "QuestionBank" VALUES(233338,'某计算机字长为8位，其CPU中有一个8位加法器。已知带符号数x=-69，y=-38，现要在该加法器中完成x-y的运算，则该加法器的两个输入端信息和输入的低位进位信息分别为（）','790562','C、1011 1011、0010 0101、1；
',3);
INSERT INTO "QuestionBank" VALUES(233339,'某8位计算机中，假定x和y是两个带符号整数变量，用补码表示，x=63，y=-31，则x+y的机器数及其相应的溢出标志OF分别是（）','790565','B、20H、0；
',3);
INSERT INTO "QuestionBank" VALUES(233340,'某8位计算机中，假定x和y是两个带符号整数变量，用补码表示，x=63，y=-31，则x-y的机器数及其相应的溢出标志OF分别是（）','790569','B、5EH、0；
',3);
INSERT INTO "QuestionBank" VALUES(233341,'某8位计算机中，假定带符号整数变量x和y的机器数用补码表示，[x]补=F5H，[y]补=7EH，则x+y的值及其相应的溢出标志OF分别是（）','790572','A、115、0；
',3);
INSERT INTO "QuestionBank" VALUES(233342,'某8位计算机中，假定带符号整数变量x和y的机器数用补码表示，[x]补=F5H，[y]补=7EH，则x-y的值及其相应的溢出标志OF分别是（）','790579','D、119、1；
',3);
INSERT INTO "QuestionBank" VALUES(233343,'某8位计算机中，假定x和y是两个带符号整数变量，用补码表示，[x]补=44H，[y]补=DCH，则x+2y的机器数及其相应的溢出标志OF分别是（）','790582','C、FCH、0；
',3);
INSERT INTO "QuestionBank" VALUES(233344,'某8位计算机中，假定x和y是两个带符号整数变量，用补码表示，[x]补=44H，[y]补=DCH，则x-2y的机器数及其相应的溢出标志OF分别是（）','790587','D、8CH、1；
',3);
INSERT INTO "QuestionBank" VALUES(233345,'某8位计算机中，假定x和y是两个带符号整数变量，用补码表示，[x]补=44H，[y]补=DCH，则x/2+2y的机器数及其相应的溢出标志OF分别是（）','790590','C、DAH、0；
',3);
INSERT INTO "QuestionBank" VALUES(233346,'假定有两个整数用8位补码分别表示为r1=F5H，r2=EEH。若将运算结果存放在一个8位寄存器中，则下列运算中会发生溢出的是（）','790594','C、r1*r2；
',3);
INSERT INTO "QuestionBank" VALUES(233347,'若两个float型变量（用IEEE754单精度浮点格式表示）x和y的机器数分别表示为x=40E80000H，y=C2040000H，则在计算x+y时，第一步对阶操作的结果[DE]补为（）','790599','D、1111 1101；
',3);
INSERT INTO "QuestionBank" VALUES(233348,'对于IEEE754单精度浮点加减运算，只要对阶时得到的两个阶码之差的绝对值|DE|大于等于（），就无需继续进行后续处理，此时，运算结果直接取阶大的那个数。','790601','B、25；
',3);
INSERT INTO "QuestionBank" VALUES(233349,'IEEE754标准提供了以下4种舍入模式，其中平均误差最小的是（）','790604','A、就近舍入（中间值时强迫为偶数）；
',3);
INSERT INTO "QuestionBank" VALUES(233949,'删除数据表中的一条记录用以下哪一项( &nbsp; &nbsp; )','792111','B、DELETE;
',3);
INSERT INTO "QuestionBank" VALUES(233950,'关系数据库中，主键是( &nbsp; &nbsp; &nbsp;)','792117','D、为标识表中唯一的实体
',3);
INSERT INTO "QuestionBank" VALUES(233951,'DECIMAL是( &nbsp; &nbsp; &nbsp;)数据类型 //decimal (mumeric) “小数”','792118','A、可变精度浮点值;
',3);
INSERT INTO "QuestionBank" VALUES(233952,'以下删除数据库emp正确语句( &nbsp; &nbsp; &nbsp;)','792123','B、Drop database emp;
',3);
INSERT INTO "QuestionBank" VALUES(233953,'数据库服务器、数据库和表的关系，正确的说法是( &nbsp; &nbsp; &nbsp;)','792127','B、一个数据库服务器可以管理多个数据库，一个数据库可以包含多个表;
',3);
INSERT INTO "QuestionBank" VALUES(233954,'以下哪些选项属于DDL操作( &nbsp; &nbsp; &nbsp;)','792131,792134,792135','B、Create;
E、 &nbsp;Alter;
F、 &nbsp;Drop;
',4);
INSERT INTO "QuestionBank" VALUES(233955,'学生关系模式 S（ S＃，Sname，Sex，Age），S的属性分别表示学生的学号、姓名、性别、年龄。要在表S中删除一个属性“年龄”，可选用的SQL语句是（ ）。','792139','D、 ALTER TABLE S DROP Age;
',3);
INSERT INTO "QuestionBank" VALUES(233956,'修改数据库表结构用以下哪一项( &nbsp; &nbsp; &nbsp;)','792143','D、ALTER;
',3);
INSERT INTO "QuestionBank" VALUES(233957,'删除数据表用以下哪一项( &nbsp; &nbsp; &nbsp;)','792144','A、DROP;
',3);
INSERT INTO "QuestionBank" VALUES(233958,'若要在基本表S中增加一列CN（课程名），可用( &nbsp; &nbsp; &nbsp;)','792149','B、ALTER &nbsp;TABLE &nbsp;S &nbsp;ADD &nbsp;CN CHAR(８);
',3);
INSERT INTO "QuestionBank" VALUES(233959,'下列的SQL语句中，( &nbsp; &nbsp; &nbsp;)不是数据定义语句DDL。','792153','B、GRANT; 
',3);
INSERT INTO "QuestionBank" VALUES(233960,'以下哪种操作能够实现实体完整性( &nbsp; &nbsp; &nbsp;)','792158,792159','C、不能重复 且不能够为空 &nbsp; unique not null;
D、设置主键 primary key;
',4);
INSERT INTO "QuestionBank" VALUES(233961,'以下能够删除一列的是( &nbsp; &nbsp; &nbsp;)','792161','B、alter table emp drop column addcolumn;
',3);
INSERT INTO "QuestionBank" VALUES(233962,'创建数据表时，下列哪些列类型的宽度是可以省略的。 ( &nbsp; &nbsp; &nbsp;)','792164,792165,792167','A、DATE;
B、INT;
D、VARCHAR;
',4);
INSERT INTO "QuestionBank" VALUES(233963,'关于主键下列说法正确的是（）','792169,792170','B、主键的值不能重复也不能为null;
C、一个主键可以唯一识别一个表的每一记录;
',4);
INSERT INTO "QuestionBank" VALUES(233964,'对于删除操作以下说法正确的是（）','792172,792173,792174,792175','A、drop database 数据库名： 删除数据库;
B、delete from 表名； &nbsp;删除表中所有记录条;
C、delete from 表名 where 字段名=值；删除符合条件的记录条;
D、drop table 表名；删除表;
',4);
INSERT INTO "QuestionBank" VALUES(233965,'在下列关于关系的叙述中，正确的是( &nbsp; )','792176,792177,792178','A、行在表中的顺序无关紧要;
B、表中任意两行(值)不能完全相同 ; 
C、列在表中的顺序无关紧要;
',4);
INSERT INTO "QuestionBank" VALUES(233966,'SQL语言集几个功能模块为一体，其中包括（ &nbsp; &nbsp; ）','792180,792181,792183','A、DCL; &nbsp;
B、 DML;
D、 DDL;
',4);
INSERT INTO "QuestionBank" VALUES(233967,'下面的选项是关系数据库基本特征的是（ ）。','792184,792186,792187','A、与列的次序无关;
C、不同的列应有不同的列名;
D、与行的次序无关;
',4);
INSERT INTO "QuestionBank" VALUES(233968,'关于 主键下列说法正确的是（ &nbsp; ）','792188,792189,792190,792191','A、可以是表中的一个字段;
B、是确定数据库中的表的记录的唯一标识字段;
C、该字段不可为空也不可以重复;
D、可以是表中的多个字段组成的;
',4);
INSERT INTO "QuestionBank" VALUES(233969,'以下哪些选项属于DML操作( &nbsp; &nbsp; &nbsp;)','792192,792194,792195','A、update;
C、 insert;
D、Delete;
',4);
INSERT INTO "QuestionBank" VALUES(233970,'定义默认约束的关键字是（<span class="fill-placeholder">（1）</span>）小写','default','default
',1);
INSERT INTO "QuestionBank" VALUES(233971,'定义外键约束的关键字是（<span class="fill-placeholder">（1）</span>）小写，字符之间一个空格','foreign key','foreign key
',1);
INSERT INTO "QuestionBank" VALUES(233972,'定义主键约束的关键字是（<span class="fill-placeholder">（1）</span>）小写，字符之间一个空格','primary key','primary key
',1);
INSERT INTO "QuestionBank" VALUES(233973,'设置某个字段的值不能为空的关键字是（<span class="fill-placeholder">（1）</span>）小写，字符之间一个空格','not null','not null
',1);
INSERT INTO "QuestionBank" VALUES(233974,'定义唯一性约束的关键字是（<span class="fill-placeholder">（1）</span> ）','unique','unique
',1);
INSERT INTO "QuestionBank" VALUES(233975,'例如数据库中有A表，包括学生，学科，成绩 ，序号四个字段 , 数据库结构为<br>学生 &nbsp; &nbsp; 学科 &nbsp; &nbsp; 成绩 &nbsp;序号<br>张三 &nbsp; &nbsp; 语文 &nbsp; &nbsp; 60 &nbsp; &nbsp;1<br>张三 &nbsp; &nbsp; 数学 &nbsp; &nbsp; 100 &nbsp; 2<br>李四 &nbsp; &nbsp; 语文 &nbsp; &nbsp; 70 &nbsp; &nbsp;3<br>李四 &nbsp; &nbsp; 数学 &nbsp; &nbsp; 80 &nbsp; &nbsp;4<br>李四 &nbsp; &nbsp; 英语 &nbsp; &nbsp; 80 &nbsp; &nbsp;5<br>上述哪一列可作为主键列( &nbsp; &nbsp; &nbsp; )','792198','A、序号;
',3);
INSERT INTO "QuestionBank" VALUES(233976,'如果ssex只能取值male和female两个值，则在create table语句中需要使用关键字（<span class="fill-placeholder">（1）</span> ）实现这个约束要求(小写)','check','check
',1);
INSERT INTO "QuestionBank" VALUES(233977,'哪些属于用户自定义约束','792202,792203,792204,792207','A、check;
B、unqiue;
C、not null;
F、trigger实现约束;
',4);
INSERT INTO "QuestionBank" VALUES(233978,'SQL的DQL中，对应于关系代数的选择操作对应的子句关键字是？','792209','B、where;
',3);
INSERT INTO "QuestionBank" VALUES(233987,'在数据变更中如果出现违反实体完整性时候，一般都采用拒绝执行的方式进行处理？','792221','A、正确
',2);
INSERT INTO "QuestionBank" VALUES(233988,'在数据变更中如果出现违反用户自定义的时候，一般都采用拒绝执行的方式进行处理？','792223','A、正确
',2);
INSERT INTO "QuestionBank" VALUES(233989,'在数据变更中如果出现违反参照完整性的时候，都会拒绝执行的方式进行处理？','792226','B、错误
',2);
INSERT INTO "QuestionBank" VALUES(233990,'参照完整性包括参照表R和被参照表S，R的任何删除记录都不需要做参照性完整性的判别？','792227','A、正确
',2);
INSERT INTO "QuestionBank" VALUES(233991,'参照完整性包括参照表R和被参照表S，R的记录修改的时候需要做参照性完整性的判别？','792229','A、正确
',2);
INSERT INTO "QuestionBank" VALUES(233992,'参照完整性包括参照表R和被参照表S，S增加记录的时候需要做参照性完整性的判别？','792232','B、错误
',2);
INSERT INTO "QuestionBank" VALUES(233993,'参照完整性包括参照表R和被参照表S，S做删除记录的时候需要做参照性完整性的判别？','792233','A、正确
',2);
INSERT INTO "QuestionBank" VALUES(233994,'下面哪个不是数据库系统必须提供的数据控制功能 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','792236','B、可移植性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;
',3);
INSERT INTO "QuestionBank" VALUES(233995,'保护数据库，防止未经授权的或不合法的使用造成的数据泄漏、更改破坏。这是指数据的 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','792239','A、安全性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;
',3);
INSERT INTO "QuestionBank" VALUES(233996,'数据库的 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;是指数据的正确性和相容性。','792244','B、完整性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;
',3);
INSERT INTO "QuestionBank" VALUES(233997,'在数据系统中，对存取权限的定义称为 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','792248','B、授权&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;;
',3);
INSERT INTO "QuestionBank" VALUES(233998,'数据库管理系统通常提供授权功能来控制不同用户访问数据的权限，这主要是为了实现数据库的 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','792254','D、安全性;
',3);
INSERT INTO "QuestionBank" VALUES(233999,'授权编译系统和合法性检查机制一起组成了 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;子系统。','792255','A、安全性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;
',3);
INSERT INTO "QuestionBank" VALUES(234000,'下面哪个不是数据库系统必须提供的数据控制功能 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','792260','B、可移植性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;
',3);
INSERT INTO "QuestionBank" VALUES(234001,'保护数据库，防止未经授权的或不合法的使用造成的数据泄漏、更改破坏。这是指数据的 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','792263','A、安全性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;
',3);
INSERT INTO "QuestionBank" VALUES(234002,'数据库的 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;是指数据的正确性和相容性。','792268','B、完整性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;
',3);
INSERT INTO "QuestionBank" VALUES(234003,'在数据系统中，对存取权限的定义称为 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','792272','B、授权;
',3);
INSERT INTO "QuestionBank" VALUES(234004,'数据库管理系统通常提供授权功能来控制不同用户访问数据的权限，这主要是为了实现数据库的 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;。','792278','D、安全性;
',3);
INSERT INTO "QuestionBank" VALUES(234005,'授权编译系统和合法性检查机制一起组成了 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;子系统。','792279','A、安全性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;
',3);
INSERT INTO "QuestionBank" VALUES(234006,'完整性检查和控制的防范对象（ ），防止它们进入数据库。','792283,792285','A、不合语义的数据; 
C、不正确的数据;
',4);
INSERT INTO "QuestionBank" VALUES(234007,'安全性控制的防范对象是（ ），防止他们对数据库数据的存取。','792288,792290','B、非法用户 ;
D、非法操作;
',4);
INSERT INTO "QuestionBank" VALUES(234008,'下述哪个是SQL语言中的数据控制命令（ ）。','792291','A、GRANT ; 
',3);
INSERT INTO "QuestionBank" VALUES(234009,'下述SQL语言中的权限，哪一个允许用户定义新关系时，引用其他关系的主码作为外码（ ）。','792297','C、 REFERENCES ;
',3);
INSERT INTO "QuestionBank" VALUES(234010,'什么是数据库的完整性？','792299,792300','A、保证数据的正确性 ;
B、保证数据相容性 &nbsp;;
',4);
INSERT INTO "QuestionBank" VALUES(234011,'下列属于数据完整性问题的？','792304,792305','A、不符合语义的数据&nbsp;&nbsp;&nbsp;&nbsp;;
B、错误信息的输入和输出&nbsp;&nbsp;&nbsp;&nbsp;;
',4);
INSERT INTO "QuestionBank" VALUES(234012,'DBMS的完整性控制机制应具有哪些功能：','792308,792309,792310','A、定义功能，即提供定义完整性约束条件的机制。 ;
B、 检查功能，即检查用户发出的操作请求是否违背了完整性约束条件。 ;
C、 违约反应：如果发现用户的操作请求使数据违背了完整性约束条件，则采取一定的动作来保证数据的完整性。 ;
',4);
INSERT INTO "QuestionBank" VALUES(235994,'<p>数据库TCSEC/TDI安全等级分为(&nbsp; &nbsp;)。</p>','798181','A、<p>A级、B3级、B2级、B1级、C2级、C1级、D级</p>
',3);
INSERT INTO "QuestionBank" VALUES(235995,'<p>目前常见操作系统和数据库系统最高满足TCSEC/TDI哪级(&nbsp; &nbsp;)标准?B1级C2级C1级D级</p>','798185','A、<p>C2</p>
',3);
INSERT INTO "QuestionBank" VALUES(235996,'<p>实现数据库安全性控制的常用方法和技术有哪些?()</p><p>①用户标识与鉴别</p><p>②存取控制</p><p>③自主存取控制方法</p><p>④强制存取控制方法</p><p>⑤视图机制</p><p>⑥审计</p><p>⑦数据加密</p>','798189','A、<p>全部</p>
',3);
INSERT INTO "QuestionBank" VALUES(235997,'<p>当前流行的关系数据库管理系统一般都会提供一系列安全措施。以下不属于数据库安全措施的是(&nbsp; )。</p>','798193','A、<p><span>并发控制</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(235998,'<p>SQL语言中,能够完成事务管理、数据库恢复、数据库安全管理等功能的是()。</p>','798197','A、<p><span>数据控制</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(237181,'<p>如果想要上下左右中的布局，应该选一下哪个布局面板？</p><p>Which of following layouts could be used for top, bottom, left, right and center arrangement?</p>','802112','A、<p>BorderPane</p>
',3);
INSERT INTO "QuestionBank" VALUES(237216,'以下关于指令的叙述，错误的是（）','802177','B、汇编指令是机器指令的符号表示，CPU能直接执行；
',3);
INSERT INTO "QuestionBank" VALUES(237217,'一条机器指令通常由多个字段构成。以下选项中，（）不显示地包含在机器指令中。','802182','C、下条指令地址；
',3);
INSERT INTO "QuestionBank" VALUES(237218,'对于运算类指令或者传送类指令，通常需要在指令中指出操作数或者操作数所在的位置。通常，指令中指出的操作数不可能出现在（）。','802187','D、程序计数器；
',3);
INSERT INTO "QuestionBank" VALUES(237219,'<p>指令集体系结构（ISA）是计算机系统中必不可少的一个抽象层，它是对硬件的抽象，软件通过它所规定的指令系统规范来使用硬件。以下关于ISA的叙述中，错误的是（）</p>','802189','B、<p>ISA规定了执行每条指令是所包含的控制信号；</p>
',3);
INSERT INTO "QuestionBank" VALUES(237220,'以下选项中，不属于指令集体系结构名称的是（）','802192','A、UNIX；
',3);
INSERT INTO "QuestionBank" VALUES(237221,'以下Intel微处理器中，不兼容IA-32指令集体系结构的是（）','802199','D、Itanium 和 Itanium 2；
',3);
INSERT INTO "QuestionBank" VALUES(237222,'以下关于IA-32指令格式的叙述中，错误的是（）','802203','D、指令中给出的操作数所在的通用寄存器的宽度总是32位；
',3);
INSERT INTO "QuestionBank" VALUES(237223,'以下关于IA-32指令的寻址方式的叙述中，错误的是（）','802207','D、相对寻址的目的地址为“PC内容加位移”，PC内容指当前正在执行指令的地址；
',3);
INSERT INTO "QuestionBank" VALUES(237224,'以下关于IA-32中整数运算指令所支持的操作数的叙述中，错误的是（）','802210','C、除乘法指令之外，其他运算指令的源操作数和目的操作数的位数相等；
',3);
INSERT INTO "QuestionBank" VALUES(237225,'以下关于IA-32的定点寄存器组织的叙述中，错误的是（）','802212','A、每个通用寄存器都可作为32位、16位或8位寄存器使用；
',3);
INSERT INTO "QuestionBank" VALUES(237226,'某C语言程序中对数组变量b的声明为“int b[10][5];”，有一条for语句如下：<br>for(i=0;i&lt;10;i++)<br> &nbsp; for(j=0;j&lt;5;j++)<br> &nbsp; &nbsp; &nbsp;sum+= b[i][j];<br>假设执行到“sum+=b[i][j]”时，sum的值在EAX中，b[i][0]所在的地址在EDX中，j在ESI中，则“ sum+= b[i][j];”所对应的指令（AT&amp;T格式）可以是（）','802216','A、addl 0(%edx,%esi,4),%eax；
',3);
INSERT INTO "QuestionBank" VALUES(237227,'IA-32中指令“pushl %ebp”的功能是（）','802220','A、R[esp] &lt;- R[esp]-4, M[R[esp]] &lt;- R[ebp]；
',3);
INSERT INTO "QuestionBank" VALUES(237228,'IA-32中指令“popl %ebp”的功能是（）','802227','D、R[ebp] &lt;- M[R[esp]], R[esp] &lt;- R[esp]+4；
',3);
INSERT INTO "QuestionBank" VALUES(237229,'IA-32中指令“movl 8(%ebp),%edx”的功能是（）','802229','B、R[edx] &lt;- M[R[ebp]+8]；
',3);
INSERT INTO "QuestionBank" VALUES(237230,'IA-32中指令“movl 8(%edx,%esi,4),%edx”的功能是（）','802234','C、R[edx] &lt;- M[R[edx]+R[esi]*4+8]；
',3);
INSERT INTO "QuestionBank" VALUES(237231,'IA-32中指令“leal 8(%edx,%esi,4),%edx”的功能是（）','802238','C、R[edx] &lt;- R[edx]+R[esi]*4+8；
',3);
INSERT INTO "QuestionBank" VALUES(237232,'设SignExt[x]表示对x符号扩展，ZeroExt[x]表示对x零扩展。IA-32中指令“movswl %cx, -20(%ebp)”的功能是（）','802240','A、M[R[ebp]-20] &lt;- SignExt[R[cx]]；
',3);
INSERT INTO "QuestionBank" VALUES(237233,'假设R[ax]=FFE8H，R[bx]=7FE6H，执行指令“addw %bx, %ax”后，寄存器的内容和各标志的变化为（）','802246','C、R[ax]=7FCEH, OF=0,SF=0, CF=1, ZF=0；
',3);
INSERT INTO "QuestionBank" VALUES(237234,'假设R[ax]=FFE8H，R[bx]=7FE6H，执行指令“subw %bx, %ax”后，寄存器的内容和各标志的变化为（）','802248','A、R[ax]=8002H, OF=0,SF=1, CF=0, ZF=0；
',3);
INSERT INTO "QuestionBank" VALUES(237235,'假设R[eax]=000001B6H，R[ebx]=00FF0110H，执行指令“mulw %bx”后，寄存器的内容变为（）','802253','B、R[eax]=0000D160H, R[dx]=0001H；
',3);
INSERT INTO "QuestionBank" VALUES(237236,'假设R[eax]=0000B160H，R[ebxl=00FF0110H,执行指令“imulw %bx”后，寄存器的内容变为（ ）。','802257','B、R[eax]=00007600H，R[dx]=FFACH；
',3);
INSERT INTO "QuestionBank" VALUES(237237,'<p>假设R[eax]=080480B4H，R[ebx]=00000011H，M[080480F8H]=000000BOH，执行指令“imull $-16，(%eax,%ebx,4)，%eax”后，寄存器的内容和存储单元内容变为（）。</p>','802262','C、<p>R[eax]=FFFFF500H；</p>
',3);
INSERT INTO "QuestionBank" VALUES(237238,'<p>假设R[eax]=FF000008H，R[ecx]=00001000H，执行指令&quot;testl %eax,%ecx&quot;后，寄存器的<br/>内容和标志变为（）。</p>','802267','D、<p>寄存器内容不变，OF=CF=SF=O，ZF=1；</p>
',3);
INSERT INTO "QuestionBank" VALUES(237239,'假设short型变量x被分配在寄存器AX中，若R[ax]=FF70H，则执行指令&quot;salw $2, %ax&quot;后，变量x的机器数和真值分别是（）。','802268','A、FDCOH，-576；
',3);
INSERT INTO "QuestionBank" VALUES(237240,'<p>程序P中有两个unsigned类型变量i和j，被分别分配在寄存器EAX和EDX中，P中存在以下if语句：<br/>If（i&lt;j) (…);<br/>该if语句对应的指令序列一定不会是（）。</p>','802278','D、<p>cmpl %eax,%edx</p><p><span>jae &nbsp; &nbsp;8048480；</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(237241,'<p>程序P中有两个int类型变量i和j，被分别分配在寄存器EAX和EDX中，P中存在以下if语句：<br/>If (i&lt;j) (…);<br/>该if语句对应的指令序列一定不会是（）。</p>','802283','C、<p><span>cmpl %eax，%edx</span></p><p><span><span>ja 8048380；</span></span></p>
',3);
INSERT INTO "QuestionBank" VALUES(237242,'程序P中有两个变量i和j,被分别分配在寄存器EAX和EDX中,P中语句&quot;if(i&lt;j)<br>(…}”对应的指令序列如下(左边为指令地址,中间为机器代码,右边为汇编指令）：<br>804846a &nbsp;39 &nbsp;c2 &nbsp; &nbsp; &nbsp;cmpl &nbsp;%eax，%edx<br>804846c &nbsp;7e &nbsp;0d &nbsp; &nbsp; &nbsp;jle &nbsp;XXXXXXXX<br>若执行到804846a处的cmpl指令时,i=105,j=100,则jle指令执行后将会转到（）<br>处的指令执行。','802291','D、804847b；
',3);
INSERT INTO "QuestionBank" VALUES(237243,'以下关于各类控制转移指令的叙述中,错误的是()。','802294','C、条件转移指令(Jcc)的判断条件可用于整数之间和浮点数之间的大小比较；
',3);
INSERT INTO "QuestionBank" VALUES(237244,'<p>以下关于x87 FPU浮点处理指令系统的叙述中,错误的是()。</p>','802299','D、<p>float和&nbsp;double型数据从主存装入浮点寄存器时有可能发生舍人，造成精度损失；</p>
',3);
INSERT INTO "QuestionBank" VALUES(237245,'以下关于 MMX/SSE指令集的叙述中,错误的是(）。','802301','B、MMX/SSE指令集和IA-32指令集共用同一套通用寄存器；
',3);
INSERT INTO "QuestionBank" VALUES(237246,'假设P为调用过程,Q为被调用过程,程序在IA-32处理器上执行,以下有关过程调用<br>的叙述中,错误的是()。','802305','B、从P传到Q的实参无需重新分配空间存放；
',3);
INSERT INTO "QuestionBank" VALUES(237247,'假设P为调用过程,Q为被调用过程,程序在IA-32处理器上执行,以下是C语言程序中过程调用所涉及的操作:<br>①过程Q保存P的现场,并为非静态局部变量分配空间<br>②过程P将实参存放到Q能访问到的地方<br>③过程P将返回地址存放到特定处,并跳转到Q执行<br>④过程Q取出返回地址,并跳转回到过程P执行<br>⑤过程Q恢复P的现场,并释放局部变量所占空间<br>⑥执行过程Q的函数体<br>过程调用的正确执行步骤是','802310','C、②→③→①→⑥→⑤→④；
',3);
INSERT INTO "QuestionBank" VALUES(237248,'以下有关IA-32的过程调用方式的叙述中,错误的是()。','802315','D、EBX、ESI、EDI、EBP和ESP都是被调用者保存寄存器；
',3);
INSERT INTO "QuestionBank" VALUES(237249,'以下有关IA-32/Linux的过程调用的叙述中,错误的是()。','802316','A、在过程中通常先使用被调用者保存寄存器；
',3);
INSERT INTO "QuestionBank" VALUES(237250,'以下有关IA-32的过程调用所使用的栈和栈帧的叙述中，错误的是()。','802322','C、只能通过将栈指针ESP作为基址寄存器来访问用户栈中的数据；
',3);
INSERT INTO "QuestionBank" VALUES(237251,'以下有关C语言程序的变量的作用域和生存期的叙述中，错误的是()。','802324','A、静态( static型)变量和非静态局部(auto型)变量都分配在对应栈帧中；
',3);
INSERT INTO "QuestionBank" VALUES(237252,'以下是一段C语言程序代码：<br>1 int add(int x, int y)<br>2 {<br>3 &nbsp;&nbsp;&nbsp;&nbsp; return x+y;<br>4 }<br>5<br>6 int caller()<br>7 {<br>8&nbsp;&nbsp;&nbsp;&nbsp; int t1=100;<br>9&nbsp;&nbsp;&nbsp;&nbsp; int t2=200;<br>10&nbsp;&nbsp;&nbsp;&nbsp; int sum=add(t1, t2);<br>11&nbsp;&nbsp;&nbsp;&nbsp; return sum;<br>12 }<br>以下关于上述程序代码在IA-32上执行的叙述中，错误的是()。','802329','B、传递参数时t1和t2的值从高地址到低地址依次存入栈中；
',3);
INSERT INTO "QuestionBank" VALUES(237253,'<p>第37题中的caller函数对应的机器级代码如下：<br/>1 &nbsp;pushl&nbsp;&nbsp;&nbsp;&nbsp;%ebp<br/>2 &nbsp;movl &nbsp;&nbsp;&nbsp;&nbsp;%esp, %ebp<br/>3 &nbsp;subl&nbsp; &nbsp; &nbsp; &nbsp; 24, %esp<br/>4 &nbsp;movl&nbsp; &nbsp; &nbsp; &nbsp; 100, -12(%ebp)<br/>5 &nbsp;movl&nbsp; &nbsp; &nbsp; &nbsp; 200, -8(%ebp)<br/>6 &nbsp;movl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-8(%ebp), %eax<br/>7 &nbsp;movl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%eax, 4(%esp)<br/>8 &nbsp;movl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-12(%ebp), %eax<br/>9 &nbsp;movl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%eax, (%esp)<br/>10 call&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;add<br/>11 movl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%eax, -4(%ebp)<br/>12 movl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-4(%ebp), %eax<br/>13 leave&nbsp;&nbsp;&nbsp;&nbsp;<br/>14 ret&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/>假定caller的调用过程为P，对于上述指令序列，以下叙述中错误的是（&nbsp;&nbsp;&nbsp;&nbsp;）。</p>','802334','C、<p>第3条指令将栈指针ESP向高地址方向移动,以生成当前栈帧；</p>
',3);
INSERT INTO "QuestionBank" VALUES(237254,'对于第37题的caller函数以及第38题给出的对应机器级代码,以下叙述中错误的是（）。','802337','B、变量t1所在的地址高(或大)于变量t2所在的地址；
',3);
INSERT INTO "QuestionBank" VALUES(237255,'对于第37题的caller函数以及第38题给出的对应机器级代码,以下叙述中错误的是（）。','802343','D、leave指令用于恢复EBP的旧值,并不会改变ESP的内容；
',3);
INSERT INTO "QuestionBank" VALUES(237256,'以下有关递归过程调用的叙述中，错误的是（）。','802346','C、每次递归调用在栈帧中保存的返回地址都不相同；
',3);
INSERT INTO "QuestionBank" VALUES(237257,'以下关于if(cond_expr) then_statement else else_statement选择结构对应的机器级代码表示的叙述中，错误的是（）。','802351','D、对应then_statement的代码一定在对应else_statement的代码之前
',3);
INSERT INTO "QuestionBank" VALUES(237258,'以下关于switch语句的机器级代码表示的叙述中，错误的是（）。','802353','B、每个case至少对应一条条件转移指令，因而一定会包含多条条件转移指令
',3);
INSERT INTO "QuestionBank" VALUES(237259,'以下关于循环结构语句的机器级代码表示的叙述中，错误的是（）。','802359','D、循环体内执行的指令不包含条件转移指令；
',3);
INSERT INTO "QuestionBank" VALUES(237260,'假定全局short型数组a的起始地址为0x804908c,则a[2]的地址是（）。','802361','B、0x8049090；
',3);
INSERT INTO "QuestionBank" VALUES(237261,'假定全局double型数组a的起始地址为0x804908c，则a[i]的地址是（）。','802367','D、0x804908c+8×i；
',3);
INSERT INTO "QuestionBank" VALUES(237262,'假定全局数组a的声明为char *a[8]，a的首地址为0x80498c0，i在ECX中，现要将a[i]取到EAX相应宽度的寄存器中，则所用的汇编指令是（）。','802370','C、mov 0x80498c0(,%ecx,4),%eax；
',3);
INSERT INTO "QuestionBank" VALUES(237263,'假定全局数组a的声明为double *a[8]，a的首地址为0x80498c0，i在ECX中，现要将a[i]取到EAX相应宽度的寄存器中，则所用的汇编指令是（）。','802372','A、mov 0x80498c0(,%ecx,4),%eax；
',3);
INSERT INTO "QuestionBank" VALUES(237264,'假定局部int型数组a的首地址在EDX中，i在ECX中，现要将a[i]取到EAX相应宽度的寄存器中，则所用的汇编指令是（）。','802379','D、mov (%edx,%ecx,4),%eax；
',3);
INSERT INTO "QuestionBank" VALUES(237265,'假定局部数组a的声明为int a[4]={0，-1，300，20}，a的首地址为R[ebp]-16，则在地址R[ebp]-4处存放的是（）。','802383','D、20；
',3);
INSERT INTO "QuestionBank" VALUES(237266,'假定局部数组a的声明为int a[4]={0,-1,300,20},a的首地址为R[ebp]-16,则将a的首地址取到EDX的汇编指令是（）','802386','C、leal -16(%ebp),%edx；
',3);
INSERT INTO "QuestionBank" VALUES(237267,'某C语言程序中有以下两个变量声明：<br>int a[10];<br>int *ptr=&amp;a[0];<br>则ptr+i的值为（）','802390','C、&amp;a[0]+4*i；
',3);
INSERT INTO "QuestionBank" VALUES(237268,'<p>假定int型数组a的首址在ECX中，则“a送EAX”所对应的汇编指令是（）</p>','802392','A、<p>movl %ecx,%eax；</p>
',3);
INSERT INTO "QuestionBank" VALUES(237269,'<p>假定int型数组a的首址在ECX中，i在EDX中，则“&amp;a[i]-a送EAX”所对应的汇编指令是（）</p>','802397','B、<p>movl %edx,%eax；</p>
',3);
INSERT INTO "QuestionBank" VALUES(237270,'<p>假定int型数组a的首址在ECX中，则“&amp;a[4]送EAX”所对应的汇编指令是（）</p>','802403','D、<p>leal 16(%ecx),%eax；</p>
',3);
INSERT INTO "QuestionBank" VALUES(237271,'<p>假定int型数组a的首址在ECX中，i在EDX中，则“*(a+i)送EAX”所对应的汇编指令是（）</p>','802404','A、<p>movl (%ecx,%edx,4),%eax；</p>
',3);
INSERT INTO "QuestionBank" VALUES(237272,'<p>假定int型数组a的首址在ECX中，i在EDX中，则“a+i-1送EAX”所对应的汇编指令是（）</p>','802411','D、<p>leal -4(%ecx,%edx,4),%eax；</p>
',3);
INSERT INTO "QuestionBank" VALUES(237273,'假定静态short型二维数组b的声明如下：<br>static short b[2][4]={{2,9,-1,5},{3,8,2,-6}};<br>若b的首地址为0x8049820，则按行优先储存方式下，数组元素“8”的地址是（）','802413','B、0x804982a；
',3);
INSERT INTO "QuestionBank" VALUES(237274,'假定静态short型二维数组b的声明如下：<br>static short b[2][4]={{2,9,-1,5},{3,1,-6,2}};<br>若b的首地址为0x8049820，则按行优先储存方式下，地址0x804982c中的内容是（）','802416','A、0xfa；
',3);
INSERT INTO "QuestionBank" VALUES(237275,'假定静态short型二维数组b和指针数组pb的声明如下：<br>static short b[2][4]={{2,9,-1,5},{3,1,-6,2}};<br>static short *pb[2]={b[0],b[1]};<br>若b的首地址为0x8049820，则pb[1]的值是（）','802423','D、0x8049828；
',3);
INSERT INTO "QuestionBank" VALUES(237276,'假定静态short型二维数组b和指针数组pb的声明如下：<br>static short b[2][4]={{2,9,-1,5},{3,1,-6,2}};<br>static short *pb[2]={b[0],b[1]};<br>若b的首地址为0x8049820，则&amp;pb[1]的值是（）','802426','C、0x8049834；
',3);
INSERT INTO "QuestionBank" VALUES(237277,'<p>假定静态short型二维数组b和指针数组pb的声明如下：<br/>static short b[2][4]={ {2,9,-1,5}, {3,1,-6,2}};<br/>static short *pb[2] = {b[0], b[1]};<br/>若b和pb的首地址分别是0x8049820、0x8049830，i在ECX中，则“*pb[i]送EAX”所对应的汇编指令序列是（）</p>','802432','C、<p>movl 0x8049830(,%ecx,4),%edx</p><p><span>movl (%edx),%eax</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(237278,'假定结构体类型cont_info的声明如下：<br>struct cont_info {<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; char id[8];<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; char name[16];<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; unsigned post;<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; char address[100];<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; char phone[20];<br>};<br>若结构体变量x初始化定义为struct cont_info x={&quot;00000010&quot;,&quot;ZhangS&quot;,&quot;210022&quot;,&quot;273 long street, High Building #3105&quot;,&quot;12345678&quot;}，x的首地址在EDX中，则&quot;unsigned xpost=x.post;&quot;所对应的汇编指令为（）','802437','B、movl 0x18(%edx),%eax；
',3);
INSERT INTO "QuestionBank" VALUES(237279,'假定结构体类型cont_info的声明如下：<br>struct cont_info {<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; char id[8];<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; char name[16];<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; unsigned post;<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; char address[100];<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; char phone[20];<br>};<br>若结构体变量x初始化定义为struct cont_info，x的首地址在EDX中，则&quot;unsigned xpost=x.post;&quot;所对应的汇编指令为（）','802441','B、movl 0x18(%edx),%eax；
',3);
INSERT INTO "QuestionBank" VALUES(237280,'<p>假定结构体类型cont_info的声明如下：<br/>struct cont_info {<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; char id[8];<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; char name[16];<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; unsigned post;<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; char address[125];<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; char phone[20];<br/>};<br/>若变量x的数据类型为struct conf_info，x的首地址为0x8049820，则字段x.phone的起始地址为（）</p>','802444','A、<p>0x80498b9；</p>
',3);
INSERT INTO "QuestionBank" VALUES(237281,'<p>假定联合体类型node的声明如下：<br/>union node{<br/> &nbsp; &nbsp; &nbsp; &nbsp; struct{<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;int *ptr;<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;int data1;<br/> &nbsp; &nbsp; &nbsp; &nbsp; }node1;<br/> &nbsp; &nbsp; &nbsp; &nbsp; struct{<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;int data2;<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;union node *next;<br/> &nbsp; &nbsp; &nbsp; &nbsp; }node2;<br/>};<br/>node定义了一个单向链表，函数node_proc用来处理仅有两个节点的链表，其定义为：<br/>void node_proc(union node *np){<br/> &nbsp; &nbsp; np-&gt;node2.next-&gt;node1.data1=*(np-&gt;node2.next-&gt;node1.ptr);<br/>}<br/>已知参数np所在的地址为R[ebp]+8，则函数node_proc中赋值语句对应的汇编代码序列为（）</p>','802448','A、<p>movl 8(%ebp),%edx</p><p><span>movl 4(%edx),%edx</span></p><p><span><span>movl (%edx),%ecx</span></span></p><p><span><span><span>movl (%ecx),%ecx</span></span></span></p><p><span><span><span><span>movl %ecx,4(%edx)；</span></span></span></span></p>
',3);
INSERT INTO "QuestionBank" VALUES(237282,'以下关于IA-32处理器对齐方式的叙述中，错误的是（）','802468','C、总是按数据宽度进行对齐，例如，double型变量的地址总是8的倍数；
',3);
INSERT INTO "QuestionBank" VALUES(237283,'以下关于缓冲区溢出以及缓冲区溢出攻击的叙述中，错误的是（）','802473','D、只要发生缓冲区溢出，CPU就会跳转到恶意程序事先设定好的程序去执行；
',3);
INSERT INTO "QuestionBank" VALUES(237375,'<p><span>以<span>PAL</span>制<span>25</span>帧<span>/</span>秒为例，已知一帧彩色静态图像<span>(RGB)</span>的分辨率为<span>256</span>×<span>256</span>，每一颜色分量用<span>16bit</span>表示，则该视频每秒钟的数据量为（<span>&nbsp;&nbsp;</span>）。</span></p><p><span>（<span>A</span>）<span><span>&nbsp;</span></span><span>&nbsp; &nbsp; &nbsp;</span>（<span>B</span>）<span><span>&nbsp;</span></span></span><span>（<span>C</span>）<span><span>&nbsp;</span></span><span>&nbsp; &nbsp; &nbsp;&nbsp;</span>（<span>D</span>）<span><span>&nbsp;</span></span></span></p>','802664','A、<p><span>256</span><span>×<span>256</span>×<span>3</span>×<span>16</span>×<span>25 bps</span></span></p>
',3);
INSERT INTO "QuestionBank" VALUES(237376,'<p><span>图像序列中的两幅相邻图像，后一幅图像与前一幅图像之间有较大的相关，这是（<span>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span>）。</span></p>','802669','B、<p><span>时间冗余</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(237377,'<p><span><span>&nbsp;</span></span><span>VCD</span><span>压缩算法采用的<span>MPEG</span>系列中哪个系列<span>&nbsp;</span>（<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>）。</span></p>','802672','A、<p><span>MPEG-1</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(237378,'<p><span><span>&nbsp;</span></span><span>MP3</span><span>音乐格式利用了</span><span>（<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>）</span><span>音频编码算法。</span></p>','802676','A、<p><span>MPEG-1 Audio</span><span>的第三层（</span><span>Layer 3</span><span>）</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(237379,'<p><span>在以下的彩色电视信号中，信号质量居中的是（</span><span><span>&nbsp;</span></span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span><span>&nbsp;</span></span><span>）。</span></p>','802682','C、<p><span>S-Video</span><span>信号</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(238940,'以下关于使用GCC生成C语言程序的可执行文件的叙述中，错误的是（）','806625','B、第二步编译，将预处理结果编译转换成二进制形式的汇编语言程序代码；
',3);
INSERT INTO "QuestionBank" VALUES(238941,'以下有关使用GCC生成C语言程序的可执行文件的叙述中，错误的是（）','806631','D、只要在链接命令中指定所有的相关可重定位目标文件，就能生成可执行目标文件；
',3);
INSERT INTO "QuestionBank" VALUES(238942,'以下有关链接所带来的好处和不足的叙述中，错误的是（）','806635','D、使得所生成的可执行目标代码中包含了更多公共库函数代码，从而节约程序开发时间；
',3);
INSERT INTO "QuestionBank" VALUES(238943,'以下关于ELF目标文件格式的叙述中，错误的是（）','806638','C、可重定位和可执行两种文件中的数据都是二进制表示的补码形式；
',3);
INSERT INTO "QuestionBank" VALUES(238944,'以下关于链接器基本功能的叙述中，错误的是（）','806642','C、确定每个符号（包括全局变量和局部变量）的首地址；
',3);
INSERT INTO "QuestionBank" VALUES(238945,'以下关于可重定位目标文件的叙述中，错误的是（）','806645','B、在.data节包含相应模块内所有变量的初始值；
',3);
INSERT INTO "QuestionBank" VALUES(238946,'以下关于ELF目标文件和ELF头的叙述中，错误的是（）','806648','A、包含了ELF头本身的长度和目标文件的长度；
',3);
INSERT INTO "QuestionBank" VALUES(238947,'以下关于ELF目标文件的节头表的叙述中，错误的是（）','806652','A、每个表项用来记录某个节的内容以及相关描述信息；
',3);
INSERT INTO "QuestionBank" VALUES(238948,'以下关于ELF可重定位和可执行两种目标文件格式比较的叙述中，错误的是（）','806657','B、可重定位目标文件中有初始化程序段.init节，在可执行目标文件中则没有；
',3);
INSERT INTO "QuestionBank" VALUES(238949,'以下关于ELF可执行目标文件的程序头表（段头表）的叙述中，错误的是（）','806660','A、用于描述可执行文件的节与主存储器中的存储段之间的映射关系；
',3);
INSERT INTO "QuestionBank" VALUES(238950,'以下关于链接过程中对符号定义的判断中，错误的是（）','806665','B、全局变量声明&quot;int *xp=&amp;x;&quot;中，xp和x都是符号的定义；
',3);
INSERT INTO "QuestionBank" VALUES(238951,'若x为局部变量，xp、y和z是全局变量，则以下判断中错误的是（）','806668','A、赋值语句“int y = x+z；&quot;中，y和z都是符号的引用；
',3);
INSERT INTO "QuestionBank" VALUES(238952,'以下有关链接符号类型的叙述中，错误的是（）','806675','D、在模块m内的某个函数中定义的局部变量称为m的局部符号；
',3);
INSERT INTO "QuestionBank" VALUES(238953,'以下有关ELF目标文件的符号表的叙述中，错误的是（）','806679','D、符号表中包含了所有定义符号的描述信息，包括局部变量的相关信息；
',3);
INSERT INTO "QuestionBank" VALUES(238954,'以下是有关链接过程中符号解析（符号绑定）的叙述，错误的是（）','806681','B、同一个符号名可能在多个模块中定义，每个定义处的符号都须分配空间；
',3);
INSERT INTO "QuestionBank" VALUES(238955,'以下有关强符号和弱符号定义的叙述中，错误的是（）','806685','B、所有出现的函数名都是强符号；
',3);
INSERT INTO "QuestionBank" VALUES(238956,'以下有关强符号和弱符号的符号解析的叙述中，错误的是（）','806691','D、一个符号名可以仅出现在引用处或仅出现在定义处；
',3);
INSERT INTO "QuestionBank" VALUES(238957,'以下是两个源程序文件：<br><br>/* m1.c */ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /* m2.c */ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>int p(void); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; static main = 1;<br>int main() &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; int p()<br>{ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ <br> &nbsp; &nbsp;int p1 = p(); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;main++;<br> &nbsp; &nbsp;return p1; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return main;<br>} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}<br>对于上述两个源程序文件链接时的符号解析，错误的是（）','806695','D、因为出现了两个强符号main，所以会发生链接错误；
',3);
INSERT INTO "QuestionBank" VALUES(238958,'以下是两个源程序文件：<br><br>/* m1.c */ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /* m2.c */ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>int p(void); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; main = 1;<br>int main() &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; int p()<br>{ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ <br> &nbsp; &nbsp;int p1 = p(); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;int p1 = main++;<br> &nbsp; &nbsp;return p1; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return main;<br>} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}<br>对于上述两个源程序文件链接时的符号解析，错误的是（）','806698','C、在模块m1的所有语句中，对符号p1的引用共有两处；
',3);
INSERT INTO "QuestionBank" VALUES(238959,'以下是两个源程序文件：<br><br>/* m1.c */ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /* m2.c */<br>int x = 100; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; float x; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>int p1(void); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;static main = 1;<br>int main() &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; int p1()<br>{ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ <br> &nbsp; &nbsp;x = p1(); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;int p1 = main + (int) x;<br> &nbsp; &nbsp;return x; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return p1;<br>} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}<br>对于上述两个源程序文件链接时的符号解析，错误的是（）','806701','B、m2中对x的引用与m2中对x的定义绑定；
',3);
INSERT INTO "QuestionBank" VALUES(238960,'以下是两个源程序文件：<br><br>/* m1.c */ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /* m2.c */<br>#include &lt;stdio.h&gt;<br>int x = 100; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; double x; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>short y = 1,z = 2; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>int main() &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; int p1()<br>{ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ <br> &nbsp; &nbsp;p1(); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;x = -1.0;<br> &nbsp; &nbsp;printf(&quot;x=%d,z=%d\n&quot;,x,z); &nbsp; &nbsp;} <br>} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>上述程序执行的结果是（）（提示：1074790400=2^30+2^20，16400=2^14+2^4)','806707','D、x = 0,z = -16400；
',3);
INSERT INTO "QuestionBank" VALUES(238961,'<p>假设调用关系如下：func.o → libx.a 和liby.a中的函数，libx.a→ libz.a中的函数，libx.a和liby.a之间、liby.a和libz.a相互独立，则以下几个命令行中，静态链接发生错误的命令是（）</p>','806709','B、<p>gcc -static -o myfunc func.o liby.a libz.a libx.a；</p>
',3);
INSERT INTO "QuestionBank" VALUES(238962,'假设调用关系如下：func1.o → func2.o，func1.o → libx.a中的函数，func2.o → libx.a中的函数，libx.a → liby.a同时liby.a → libx.a，则以下几个命令行中，能够正确进行静态链接的命令是（）','806712','A、gcc -static -o myfunc func1.o func2.o libx.a liby.a libx.a；
',3);
INSERT INTO "QuestionBank" VALUES(238963,'以下有关重定位功能的叙述中，错误的是（）','806719','D、重定位的最后一步是将引用出处的地址修改为与之关联（绑定）的定义处的首地址；
',3);
INSERT INTO "QuestionBank" VALUES(238964,'以下有关重定位信息的叙述中，错误的是（）','806720','A、重定位信息是由编译器在生成汇编指令时产生的；
',3);
INSERT INTO "QuestionBank" VALUES(238965,'以下有关IA-32的重定位类型的叙述中，错误的是（）','806727','D、过程调用相关的重定位中，PC相对地址中使用的当前PC是指CALL指令的地址；
',3);
INSERT INTO "QuestionBank" VALUES(238966,'假定“int buf[2]={10,50};”所定义的buf被分配在静态数据区，其首地址为0x8048930,bufp1为全局变量，被分配在buf随后的存储空间。以下有关“int*bufp1=&amp; buf[1];”的重定位的描述中，错误的是（）','806730','C、在相应的重定位条目中，对bufp1和buf的引用均采用绝对地址方式；
',3);
INSERT INTO "QuestionBank" VALUES(238967,'假定“int buf[2]={10,50};”所定义的buf被分配在静态数据区，其首地址为0x8048930,bufp1为全局变量，也被分配在静态数据区。以下有关“bufp1=&amp; buf[1];”的重定位的描述中，错误的是（）','806732','A、在可重定位目标文件的.rel.data节中，有一个与bufp1相关的重定位条目；
',3);
INSERT INTO "QuestionBank" VALUES(238968,'以下有关在Linux系统中启动可执行目标文件的执行的叙述中，错误的是（）','806736','A、可在CUI（命令行用户界面）中双击可执行目标文件对应的图标来启动其执行；
',3);
INSERT INTO "QuestionBank" VALUES(238969,'以下有关在Linux系统中加载可执行目标文件的叙述中，错误的是（）','806742','C、在可执行目标文件的加载过程中，其中的指令和数据被读入主存储器；
',3);
INSERT INTO "QuestionBank" VALUES(238970,'以下是在Linux系统中启动并加载可执行文件的过程中shell命令行解释程序所做的部分操作：<br>①构造argv和envp<br>②调用fork()系统调用函数 <br>③调用execve()系统调用函数 <br>④读入命令(可执行文件名)及参数 &nbsp;<br>启动并加载可执行目标文件的正确步骤是（）','806746','C、④-&gt;①-&gt;②-&gt;③；
',3);
INSERT INTO "QuestionBank" VALUES(238971,'以下有关动态链接及其所链接的共享库以及动态链接生成的可执行目标文件的叙述中，错误的是（）','806750','C、可执行目标文件由动态链接器对可重定位目标文件和共享库中部分信息进行链接而成；
',3);
INSERT INTO "QuestionBank" VALUES(238972,'以下有关静态链接和动态链接的比较的叙述中，错误的是（）','806755','D、静态库函数在加载时被链接，而共享库函数可在加载或运行时被链接；
',3);
INSERT INTO "QuestionBank" VALUES(238973,'以下有关动态链接所用共享库代码的叙述中，错误的是（）','806759','D、共享库代码长度发生变化时会影响到调用它的程序；
',3);
INSERT INTO "QuestionBank" VALUES(238974,'一个共享库文件(.so)文件由多个模块（.o文件）生成。在生成共享库文件的过程中，需要对.o文件进行处理。以生成位置无关代码。以下有关位置无关代码（PIC）生成的叙述中，错误的是（）','806763','D、模块间函数调用需要动态连接器进行重定位，重定位时在GOT和PLT中填入相应内容；
',3);
INSERT INTO "QuestionBank" VALUES(240823,'<p>以下哪个为错误端口号？</p>','812762','A、<p>-1203</p>
',3);
INSERT INTO "QuestionBank" VALUES(242349,'<p>参考本章练习文档：回答t11、t12 索引问题</p>','816332','A、<p><span>t12唯一索引</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(242350,'<p>t11 t12 的(去数据的)扫描方式有区别？</p>','816337','B、<p><span>都是全表扫描</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(242351,'<p>t21 t22 的(去数据的)扫描方式有区别？</p>','816340','A、<p><span>t21 全表扫描,t22基于索引扫描&nbsp;</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(242352,'<p>explain analyze select * from student natural join sc&nbsp;(准备好自己的jwc数据库)，回答：数据库系统在运行该语句的时候，两张表的连接是采用？</p>','816344','A、<p><span>hash join&nbsp;</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(242353,'<p>在创建emp1表的时候，使用了哪些内置函数？</p>','816349,816350,816351,816352','B、<p><span>floor</span></p>
C、<p><span>random</span></p>
D、<p><br/><span>substring</span></p>
E、<p><span>concat</span></p>
',4);
INSERT INTO "QuestionBank" VALUES(242739,'机器主频的倒数（一个节拍）等于（）。','817545','A、CPU时钟周期；
',3);
INSERT INTO "QuestionBank" VALUES(242740,'CPU中控制器的功能是（）。','817552','D、完成指令操作码译码，并产生操作控制信号；
',3);
INSERT INTO "QuestionBank" VALUES(242741,'冯·诺依曼计算机中指令和数据均以二进制形式存放在存储器中，CPU依据（）来区分它们。','817555','C、指令和数据的访问时点不同；
',3);
INSERT INTO "QuestionBank" VALUES(242742,'下列寄存器中，对汇编语言程序员不透明的是（）。','817558','B、程序计数器PC；
',3);
INSERT INTO "QuestionBank" VALUES(242743,'下列有关CPU中部分部件的功能的描述中，错误的是（）。','817564','D、IR称为指令寄存器，用来存放当前指令的操作码；
',3);
INSERT INTO "QuestionBank" VALUES(242744,'执行完当前指令后，PC中存放的是后继指令的地址，因此PC的位数和（）的位数相同。','817567','C、存储器地址寄存器MAR；
',3);
INSERT INTO "QuestionBank" VALUES(242745,'通常情况下，下列（）部件不包含在中央处理器（CPU）芯片中。','817572','D、DRAM；
',3);
INSERT INTO "QuestionBank" VALUES(242746,'下列有关程序计数器PC的叙述中，错误的是（）。','817574','B、指令顺序执行时，PC的值总是自动加1；
',3);
INSERT INTO "QuestionBank" VALUES(242747,'CPU取出一条指令并执行所用的时间被称为（）。','817580','D、指令周期；
',3);
INSERT INTO "QuestionBank" VALUES(242748,'下列有关指令周期的叙述中，错误的是（）。','817582','B、乘法指令和加法指令的指令周期总是一样长；
',3);
INSERT INTO "QuestionBank" VALUES(242749,'下列有关CPU时钟信号的叙述中，错误的是（）。','817585','A、处理器总是每来一个时钟信号就开始执行一条新的指令；
',3);
INSERT INTO "QuestionBank" VALUES(242750,'下列有关数据通路的叙述中，错误的是（）。','817592','D、通用寄存器属于状态元件，但不包含在数据通路中;
',3);
INSERT INTO "QuestionBank" VALUES(242751,'以下关于指令流水线设计的叙述中，错误的是（）。','817596','D、任何时候各个流水段的功能部件都不可能执行空（nop）操作;
',3);
INSERT INTO "QuestionBank" VALUES(242752,'<p>下列有关RISC特征的描述中，错误的是（）。</p>','817599','C、<p>配置的通用寄存器数目不多;</p>
',3);
INSERT INTO "QuestionBank" VALUES(242753,'以下关于指令流水线和指令执行效率关系的叙述中，错误的是（）。','817602','B、为了提高指令吞吐率，流水段个数可以无限制地增多；
',3);
INSERT INTO "QuestionBank" VALUES(242754,'某计算机的指令流水线由4个功能段组成，指令流经各功能段的时间（忽略各功能段之间流水段寄存器的缓存时间）分别为90ns、80ns、70ns和60ns，则该计算机的CPU时钟周期至少是（）。','817605','A、90ns；
',3);
INSERT INTO "QuestionBank" VALUES(242755,'假定执行最复杂的指令需要完成6个子功能，分别由对应的功能部件A~F来完成，每个功能部件所花的时间分别为80ps、40ps、50ps、70ps、20ps、30ps，流水段寄存器延时为20ps，现把最后两个功能部件E和F合并，以产生一个5段流水线。该5段流水线的时钟周期至少是（）ps。','817612','D、100；
',3);
INSERT INTO "QuestionBank" VALUES(242756,'以下给定的情况中，不会引起指令流水线阻塞的是（）。','817615','C、执行空操作指令;
',3);
INSERT INTO "QuestionBank" VALUES(243029,'下面有关半导体存储器组织的叙述中，错误的是（）。','818353','D、同一个存储器中，每个存储单元的宽度可以不同；
',3);
INSERT INTO "QuestionBank" VALUES(243030,'下面4种存储器中，目前已被淘汰的是（）。','818356','C、磁芯存储器；
',3);
INSERT INTO "QuestionBank" VALUES(243031,'<p>若计算机的主存储器谷量为1GB，也就等于（）。</p>','818358','A、<p>2<sup>30</sup>个字节；</p>
',3);
INSERT INTO "QuestionBank" VALUES(243032,'某SRAM芯片的容量为1024×4位，则地址和数据引脚的数目分别为（）。','818362','A、10，4；
',3);
INSERT INTO "QuestionBank" VALUES(243033,'某计算机字长16位，主存地址空间大小是64KB，按字节编址，则寻址范围是（）。','818366','A、0~（64K-1）；
',3);
INSERT INTO "QuestionBank" VALUES(243034,'EPROM是指（）。','818373','D、可擦除可编程的只读存储器;
',3);
INSERT INTO "QuestionBank" VALUES(243035,'下列几种存储器中，（）是易失性存储器。','818374','A、cache；
',3);
INSERT INTO "QuestionBank" VALUES(243036,'假定主存地址空间大小为1024MB，按字节编址，每次读写操作最多可以一次存取32位。不考虑其他因素，则存储器地址寄存器MAR和存储器数据寄存器MDR的位数至少应分别为（）。','818379','B、30，32；
',3);
INSERT INTO "QuestionBank" VALUES(243037,'需要定时刷新的半导体存储器芯片是（）。','818383','B、DRAM
',3);
INSERT INTO "QuestionBank" VALUES(243038,'通常采用行、列地址引脚复用的半导体存储器芯片是（）。','818387','B、DRAM 
',3);
INSERT INTO "QuestionBank" VALUES(243039,'具有RAS（行地址选通）和CAS（列地址选通）信号引脚的半导体存储器芯片是（）。','818391','B、DRAM 
',3);
INSERT INTO "QuestionBank" VALUES(243040,'下面有关ROM和RAM的叙述中，错误的是（）。','818397','D、系统的主存都用DRAM芯片实现
',3);
INSERT INTO "QuestionBank" VALUES(243041,'下面有关半导体存储器的叙述中，错误的是（）。','818398','A、半导体存储器都采用随机存取方式进行读写；
',3);
INSERT INTO "QuestionBank" VALUES(243042,'假定DDR3 SDRAM芯片内部核心频率为133.25MHz，与之相连的存储器总线每次传输8字节，则下面有关叙述中，错误的是（）。','818404','C、存储器总线的时钟频率为1066MHz；
',3);
INSERT INTO "QuestionBank" VALUES(243043,'假定用若干个16K×1位的存储芯片组成一个64K×8位的存储器，芯片内各单元连续编址，则地址BFF0H所在的芯片的最小地址为（）。','818408','C、8000H；
',3);
INSERT INTO "QuestionBank" VALUES(243044,'<p>假定用若干个16K×8位的存储芯片组成一个64K<span>×8位</span>的存储器，芯片各单元交叉编址，则地址BFFFH所在的芯片的最小地址为（）；</p>','818413','D、<p>0003H；</p>
',3);
INSERT INTO "QuestionBank" VALUES(243045,'用存储容量为16K×1位的存储器芯片组成一个64K×8位的存储器，则在字方向和位方向上分别扩展了（）倍。','818415','B、4和8；
',3);
INSERT INTO "QuestionBank" VALUES(243046,'存储谷量为16K×4位的DRAM芯片，其地址引脚和数据引脚数各是（B）。','818419','B、7和4；
',3);
INSERT INTO "QuestionBank" VALUES(243047,'多模块存储器之所以能高速进行读/写，是因为（）。','818423','B、各模块有独立的读写电路；
',3);
INSERT INTO "QuestionBank" VALUES(243048,'相联存储器是按（）进行寻址访问的存储器。','818427','B、内容指定方式；
',3);
INSERT INTO "QuestionBank" VALUES(243049,'以下是有关磁盘驱动器的叙述，其中错误的是（）。','818430','A、送到磁盘驱动器的盘地址由磁头号、盘面号和扇区号组成；
',3);
INSERT INTO "QuestionBank" VALUES(243050,'假定一个磁盘存储器有4个盘片，用于记录信息的柱面数为2000，每个磁道上有3000个扇区，每个扇区512B，则该磁盘存储器的容量约为（）。','818437','D、24GB；
',3);
INSERT INTO "QuestionBank" VALUES(243051,'<p>假定一个磁盘的转速为7200RPM，磁盘的平均寻道时间为20ms，平均数据传输率为1MB/s，不考虑排队等待时间，那么读一个512字节的扇区的平均时间大约为（）。</p>','818440','C、<p>24.7ms；</p>
',3);
INSERT INTO "QuestionBank" VALUES(243052,'在存储器分层体系结构中，存储器速度从最快到最慢的排列顺序是（）。','818445','D、寄存器—cache—主存—辅存；
',3);
INSERT INTO "QuestionBank" VALUES(243053,'在存储器分层体系结构中，存储器从容量最大到最小的排列顺序是（）。','818448','C、辅存一主存—cache-寄存器；
',3);
INSERT INTO "QuestionBank" VALUES(243054,'在主存和CPU之间增加cache的目的是（）。','818452','C、加快信息访问速度；
',3);
INSERT INTO "QuestionBank" VALUES(243055,'以下哪一种情况能很好地发挥cache的作用？（）。','818456','C、程序具有较好的访问局部性；
',3);
INSERT INTO "QuestionBank" VALUES(243056,'假定主存地址位数为32位，按字节编址，主存和cache之间采用直接映射方式，主存块大小为1个字，每字32位，写操作时采用直写（write through）方式，则能存放32K字数据的cache的总容量至少应有多少位？（）。','818459','B、1536K；
',3);
INSERT INTO "QuestionBank" VALUES(243057,'假定主存地址位数为32位，按字节编址，主存和cache之间采用直接映射方式，主存块大小为1个字，每字32位，写操作时采用回写（write back）方式，则能存效32K字数据的cache的总容量至少应有多少位？（）。','818464','C、1568K；
',3);
INSERT INTO "QuestionBank" VALUES(243058,'假定主存地业位数为32位，按字节编址，主存和cache之间采用全相联映射方式，主存块大小为1个字，每字32位，写操作时采用回写（write back）方式，则能存按32K字数据的cache的总容量至少应有多少位？（）。','818469','D、2048K；
',3);
INSERT INTO "QuestionBank" VALUES(243059,'假定主存按字节编址，cache共有64行。采用直接映射方式，主存块大小为32字节，所有编号都从0开始。问主存第2593号单元所在的主存块对应的cache行号是（）。','818471','B、17；
',3);
INSERT INTO "QuestionBank" VALUES(243060,'假定主存按字节编址，cache共有64行。采用4路组相联映射方式，主存块大小为32字节，所有编号都从0开始。问主存第2593号单元所在的主存块对应的cache组号是（）。','818474','A、1；
',3);
INSERT INTO "QuestionBank" VALUES(243061,'假定CPU通过存储器总线读取数据的过程为：发送地址和读命令需1个时钟周期，存储器准备一个数据需8个时钟周期，总线上每传送1个数据需1个时钟周期。若主存和cache之间交换的主存块大小为64B，存取宽度和总线宽度都为4B，则cache的一次缺失损失至少为多少个时钟周期？（）。','818481','D、160；
',3);
INSERT INTO "QuestionBank" VALUES(243062,'假定CPU通过存储器总线读取数据的过程为：发送地址和读命令需1个时钟局期，存储器准备一个数据需8个时钟周期，总线上每传送1个数据需1个时钟周期。若主存和cache之间交换的主存块大小为64B，存取宽度和总线宽度都为8B，则cache的一次缺失损失至少为多少个时钟周期？（）。','818484','C、80；
',3);
INSERT INTO "QuestionBank" VALUES(243063,'下列命中组合情况中，一次访存过程中不可能发生的是（）。','818489','D、TLB未命中、cache命中、page未命中；
',3);
INSERT INTO "QuestionBank" VALUES(243064,'以下是有关虚拟存储管理机制中页表的叙述，其中错误的是（）。','818493','D、所有进程都可以访问页表；
',3);
INSERT INTO "QuestionBank" VALUES(243065,'以下有关缺页处理的叙述中，错误的是（）。','818495','B、缺页是一种外部中断，需要调用操作系统提供的中断服务程序来处理；
',3);
INSERT INTO "QuestionBank" VALUES(243066,'以下有关页式存储管理的叙述中，错误的是（）。','818501','D、相对于段式存储管理，分页式更利于存储保护；
',3);
INSERT INTO "QuestionBank" VALUES(243067,'以下有关段式存储管理的叙述中，错误的是（）。','818505','D、分段方式对低级语言程序员和编译器来说是透明的；
',3);
INSERT INTO "QuestionBank" VALUES(243068,'以下有关快表的叙述中，错误的是（）。','818508','C、在快表中命中时，在L1 cache中一定命中；
',3);
INSERT INTO "QuestionBank" VALUES(243069,'以下给出的事件中，无需异常处理程序进行处理的是（）。','818511','B、cache缺失；
',3);
INSERT INTO "QuestionBank" VALUES(246636,'假定盘块的大小为1KB，对于l.2MB的软盘，FAT需占用( &nbsp; )的存储空间。','828909','B、1.8KB；',3);
INSERT INTO "QuestionBank" VALUES(246637,'假定盘块的大小为1KB，对于100MB的硬盘，FAT需占用( &nbsp; &nbsp;)的存储空间。','828914','C、250KB；',3);
INSERT INTO "QuestionBank" VALUES(246638,'从下面的描述中选出一条错误的描述( &nbsp; &nbsp; )。','828916','A、一个文件在同一系统中、不同的存储介质上的拷贝，应采用同一种物理结构；',3);
INSERT INTO "QuestionBank" VALUES(246639,'从下面关于顺序文件和链接文件的论述中，选出一条正确的论述( &nbsp; &nbsp; )。','828922','C、顺序文件必须采用连续分配方式，而链接文件和索引文件则可采用离散分配方式；',3);
INSERT INTO "QuestionBank" VALUES(246640,'从下面关于索引文件的论述中， 选出2条正确的论述( &nbsp; &nbsp; &nbsp;)。','828924,828925','A、在索引文件中，索引表的每个表项中含有相应记录的关键字和该记录的物理地址；
B、对顺序文件进行检索时，首先从 FCB 中读出文件的第一个盘块号；而对索引文件进行检索时，应先从 FCB 中读出文件索引表的始址；',4);
INSERT INTO "QuestionBank" VALUES(246641,'某些系统中设置了一张(A) 表，其中的每一个二进制位可用来表示磁盘中的一个块的使用情况。','828931','D、位示图。',3);
INSERT INTO "QuestionBank" VALUES(246642,'有些系统中设置了一张( &nbsp; &nbsp;)表，其中的每个表项存放着文件中下一个盘块的物理地址。','828933','B、文件分配表；',3);
INSERT INTO "QuestionBank" VALUES(246643,'在下列物理文件中， ( &nbsp; &nbsp; )将使文件顺序访问的速度最快。','828936','A、顺序文件；',3);
INSERT INTO "QuestionBank" VALUES(246644,'在下列物理文件中， ( &nbsp; &nbsp;)最不适合对文件进行随机访问。','828941','B、隐式链接文件；',3);
INSERT INTO "QuestionBank" VALUES(246645,'在下列物理文件中， ( &nbsp; &nbsp;)能直接将记录键值转换成物理地址。','828948','E、直接文件。',3);
INSERT INTO "QuestionBank" VALUES(246646,'对文件空闲存储空间的管理，在MS-DOS中是采用( &nbsp; &nbsp; )。','828950','B、文件分配表；',3);
INSERT INTO "QuestionBank" VALUES(246647,'对文件空闲存储空间的管理，在UNIX中采用( &nbsp; )。','828956','D、成组链接法。',3);
INSERT INTO "QuestionBank" VALUES(246648,'对文件空闲存储空间的管理，在Linux的 extfs 则采用( &nbsp; &nbsp;)。','828959','C、位示图；',3);
INSERT INTO "QuestionBank" VALUES(246649,'如果利用20行、30列的位示图来标志空闲盘块的状态，假定行号、列号和盘块号均从1开始编号，则在进行盘块分配时，当第一次找到的空闲盘块（即该位的值为“0”) 处于第 5 行、第 12 列，则相应的盘块号为( &nbsp; &nbsp; &nbsp;)。','828963','C、132；',3);
INSERT INTO "QuestionBank" VALUES(246650,'如果利用20行、30列的位示图来标志空闲盘块的状态，假定行号、列号和盘块号均从1开始编号，则在回收某个盘块时，若其盘块号为484，则它在位示图中的位置应为第i行，第j列，正确的i，j值是（ &nbsp; &nbsp;）。','828968','D、（17，4）。',3);
INSERT INTO "QuestionBank" VALUES(246651,'磁盘高速缓冲设在(A) 中。','828971','C、内存；',3);
INSERT INTO "QuestionBank" VALUES(246652,'设置磁盘高速缓冲设的主要目的是( &nbsp; &nbsp;)。','828974','B、提高磁盘I/O的速度；',3);
INSERT INTO "QuestionBank" VALUES(246653,'从下面的论述中选出一条错误的论述( &nbsp; &nbsp; )。','828979','C、对随机访问的文件， 可通过提前读提高对数据的访问速度；',3);
INSERT INTO "QuestionBank" VALUES(246654,'下列方式中，( &nbsp; &nbsp;)无法提高磁盘I /O的速度。','828981','A、在磁盘上设置多个分区；',3);
INSERT INTO "QuestionBank" VALUES(246655,'下列方式中，( &nbsp; &nbsp;)不能改善磁盘系统的可靠性。','828987','C、磁盘高速缓存；',3);
INSERT INTO "QuestionBank" VALUES(246656,'文件的物理结构主要有顺序结构、链接结构和索引结构，其中顺序访问效率最高的是顺序结构，随机访问效率最高的是<span class="fill-placeholder">（1）</span>。','索引结构','索引结构',1);
INSERT INTO "QuestionBank" VALUES(246658,'可将链接式文件中的文件内容装入到离散的多个盘块中，并通过<span class="fill-placeholder">（1）</span>将它们构成一个队列，显示链接文件具有较高的检索速度。','链接指针','链接指针',1);
INSERT INTO "QuestionBank" VALUES(246659,'在利用<span class="fill-placeholder">（1）</span>来管理外存空间时，可有两种方式；一种以空闲盘块为单位拉成一条链；另一种以空闲盘区为单位拉成一条链。','空闲链表','空闲链表',1);
INSERT INTO "QuestionBank" VALUES(246660,'在<span class="fill-placeholder">（1）</span>中，将每一组的盘块数和该组的所有盘块号记入前一组的最后一个盘块中；再将第一组的上述信息记入超级块的空闲盘块号栈中，从而将各组盘块链接起来。','成组链接法','成组链接法',1);
INSERT INTO "QuestionBank" VALUES(246661,'文件系统最基本的目标是按名存取，它主要是通过目录管理功能实现的， 文件系统所追求的最重要的目标是( &nbsp; &nbsp;)。','828990','B、提高对文件的存取速度；',3);
INSERT INTO "QuestionBank" VALUES(246662,'在文件系统中可命名的最小数据单位是数据项，用户以记录为单位对文件进行存取、检索等，对文件存储空间的分配则以( &nbsp; &nbsp;)为单位。','828995','C、文件；',3);
INSERT INTO "QuestionBank" VALUES(246663,'按逻辑结构可把文件分为记录式文件和流式文件两类， LINUX 文件系统采用( &nbsp; &nbsp;)结构。','829000','D、流式文件。',3);
INSERT INTO "QuestionBank" VALUES(246664,'OS用来控制和管理一个文件的文件属性信息被称作该文件的FCB, 它通常存放在( &nbsp; &nbsp; )中。','829003','C、该文件的上级目录的数据盘块；',3);
INSERT INTO "QuestionBank" VALUES(246665,'在文件系统中是利用目录来组织大量的文件的，为了允许不同用户的文件使用相同的文件名，通常文件系统中采用多级目录；在目录文件中的每个目录项通常就是FCB；在 UNIX 系统中的目录项则是 ( &nbsp; &nbsp;)。','829008','D、文件名和索引结点指针。',3);
INSERT INTO "QuestionBank" VALUES(246666,'一个文件系统中，FCB 占64B，一个盘块大小为1KB，采用一级目录，假定文件目录中有3200个目录项，则检索一个文件平均需要( &nbsp; &nbsp;)次访问磁盘。','829011','C、100；',3);
INSERT INTO "QuestionBank" VALUES(246667,'Windows FAT32的目录项中不会包含( &nbsp; )；而 Unix的磁盘索引结点中不会包含文件名信息。','829016','D、文件控制块的物理位置。',3);
INSERT INTO "QuestionBank" VALUES(246668,'在树型目录结构中，用户对某文件的首次访问通常都采用文件路径名；文件被打开后，对文件的访问通常采用用户文件描述符；打开文件操作完成的主要工作是( &nbsp; &nbsp;)。','829017','A、把指定文件的目录项复制到内存指定的区域；',3);
INSERT INTO "QuestionBank" VALUES(246669,'利用 Hash 法查找文件时，如果目录中相应的目录项是空，则表示( &nbsp; )；如果目录项中的文件名与指定的文件名不匹配，则表示发生了冲突。','829022','B、系统中无指定文件名；',3);
INSERT INTO "QuestionBank" VALUES(246670,'<p>从下面关于目录检索的论述中，选出一条正确的论述( &nbsp; )。</p>','829027','C、<p>在顺序检索法的查找过程中，只要有一个文件分量名未能找到，便应停止查找；</p>',3);
INSERT INTO "QuestionBank" VALUES(246671,'在Linux中，设文件F1的当前链接计数为，先建立F1的符号链接文件F2，再建立F1的硬链接文件F3 , 则此时文件F1、F2和F3的链接计数值分别是( &nbsp; )。','829030','B、2, 1, 2；',3);
INSERT INTO "QuestionBank" VALUES(246672,'如果采用符号链接的方式共享文件，那么当文件被删除的时候，该共享链接会( &nbsp; &nbsp;)。','829035','B、失效；',3);
INSERT INTO "QuestionBank" VALUES(246673,'在执行close过程时，若系统打开文件表项引用计数 f.count=0不成立，应( &nbsp; &nbsp; )。','829039','B、置用户文件描述符表项为空；',3);
INSERT INTO "QuestionBank" VALUES(246674,'在执行close过程时，若系统打开文件表项引用计数 f.count=0，但内存索引结点引用计数 i.count=0不成立，则应( &nbsp; &nbsp; )。','829044','C、使用户文件描述符表项和文件表项皆为空；',3);
INSERT INTO "QuestionBank" VALUES(246675,'在执行close过程时，若系统打开文件表项引用计数 f.count=0，i.count=0, 则应( &nbsp; &nbsp; )。','829046','A、关闭文件；',3);
INSERT INTO "QuestionBank" VALUES(246676,'在create处理过程中，若未检索到指定文件的索引结点，此时属于创建文件； 检索到指定文件的索引结点，此时若允许写， 则此时属于( &nbsp; &nbsp;)。','829053','D、重写文件。',3);
INSERT INTO "QuestionBank" VALUES(246677,'文件管理应具有文件存储空间的管理、<span class="fill-placeholder">（1）</span>、文件的读/写管理和文件的共享和保护等功能。','目录管理','目录管理',1);
INSERT INTO "QuestionBank" VALUES(246678,'文件按逻辑结构可分成字符流式和记录式两种类型，现代操作系统普遍采用的是其中的<span class="fill-placeholder">（1）</span>结构。','字符流式','字符流式',1);
INSERT INTO "QuestionBank" VALUES(246679,'数据项是用来描述一个实体的某个属性，记录是用来描述一个实体的某方面（相对完整）的属性，<span class="fill-placeholder">（1）</span>用于描述一个实体集（即群体）的某方面的属性。','文件','文件',1);
INSERT INTO "QuestionBank" VALUES(246680,'一个文件系统模型由最低层对象及其属性，中间层对对象进行操纵和管理的软件集合和最高层<span class="fill-placeholder">（1）</span>三个层次组成。','用户接口','用户接口',1);
INSERT INTO "QuestionBank" VALUES(246681,'文件目录的最主要功能是实现按名存取（文件名到物理地址的转换），故目录项的内容至少应包含<span class="fill-placeholder">（1）</span>和文件的物理地址。','文件名','文件名',1);
INSERT INTO "QuestionBank" VALUES(246682,'在采用<span class="fill-placeholder">（1）</span>目录结构的文件系统中， 树的结点分为三类： 根结点表示根目录， 枝结点表示子目录文件，叶结点表示数据文件。','树形','树形',1);
INSERT INTO "QuestionBank" VALUES(246683,'在利用线性检索法对树形目录进行检索时，系统首先读入路径名的第一分量，将它与根目录/当前工作目录文件中的各目录项中的文件名进行比较。若匹配，便可得到FCB/<span class="fill-placeholder">（1）</span>指针。','索引结点','索引结点',1);
INSERT INTO "QuestionBank" VALUES(246684,'引入索引结点后，一个文件在磁盘中占有的资源包括一个<span class="fill-placeholder">（1）</span>、一个（或多个）目录项和若干个存放文件内容的磁盘块三部分。','磁盘索引结点','磁盘索引结点',1);
INSERT INTO "QuestionBank" VALUES(246685,'文件在使用前必须先执行上打开操作，其主要功能是把文件的FCB/索引结点从外存复制到内存中，并在用户和指定文件之间建立一条通路，再返回给用户一个<span class="fill-placeholder">（1）</span>。','文件描述符','文件描述符',1);
INSERT INTO "QuestionBank" VALUES(246711,'进程和程序的一个本质区别是( &nbsp; &nbsp; )。','829141','D、前者为动态的，后者为静态的。',3);
INSERT INTO "QuestionBank" VALUES(246712,'正在等待他人释放临界资源的进程处于( &nbsp; &nbsp; &nbsp;)状态。','829143','B、阻塞；',3);
INSERT INTO "QuestionBank" VALUES(246713,'已分配到除CPU外的所有资源的进程处于( &nbsp; &nbsp; &nbsp; )状态。','829148','C、就绪；',3);
INSERT INTO "QuestionBank" VALUES(246714,'某进程所要求的一次打印输出结束， 该进程被( &nbsp; &nbsp; &nbsp; &nbsp; )。','829152','C、唤醒；',3);
INSERT INTO "QuestionBank" VALUES(246715,'下列进程状态转换中，绝对不可能发生的状态转换是( &nbsp; &nbsp; &nbsp;)。','829155','B、就绪→阻塞；',3);
INSERT INTO "QuestionBank" VALUES(246716,'在一个单处理机系统中，存在5个进程， 最多可有( &nbsp; &nbsp; &nbsp;)个进程处于就绪队列。','829159','B、4；',3);
INSERT INTO "QuestionBank" VALUES(246717,'正在执行的进程由于其时间片用完被暂停执行，此时进程应从执行状态变为( &nbsp; &nbsp; &nbsp; )状态。','829165','D、活动就绪。',3);
INSERT INTO "QuestionBank" VALUES(246718,'下列信息中，不属于CPU现场信息的依次是( &nbsp; &nbsp; &nbsp; )。','829167','B、进程的就绪、阻塞、执行等基本状态；',3);
INSERT INTO "QuestionBank" VALUES(246719,'下列信息中， ( &nbsp; &nbsp; &nbsp;)不属于PCB的内容。','829173','D、完整的程序代码。',3);
INSERT INTO "QuestionBank" VALUES(246720,'在分时系统中，导致进程创建的典型事件是( &nbsp; &nbsp; &nbsp; &nbsp; )。','829175','B、用户登录；',3);
INSERT INTO "QuestionBank" VALUES(246721,'在批处理系统中，导致进程创建的典型事件是( &nbsp; &nbsp; &nbsp; &nbsp; )。','829179','B、作业调度；',3);
INSERT INTO "QuestionBank" VALUES(246722,'由系统专门为运行中的应用进程创建新进程的事件是 ( &nbsp; &nbsp; &nbsp; &nbsp;)。','829185','D、提供服务。',3);
INSERT INTO "QuestionBank" VALUES(246723,'从下面对临界区的论述中，选出一条正确的论述( &nbsp; &nbsp; &nbsp; &nbsp;)。','829190','E、临界区是指进程中用于访问临界资源的那段代码。',3);
INSERT INTO "QuestionBank" VALUES(246724,'用信号量 S 实现对系统中 4 台打印机的互斥使用，S.value 的初值应设置为( &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; )。','829194','D、4。',3);
INSERT INTO "QuestionBank" VALUES(246725,'用信号量 S 实现对系统中 4 台打印机的互斥使用，若 S.value 的当前值为-1, 则表示 S.L 队列中有( &nbsp; &nbsp;)个等待进程。','829195','A、1；',3);
INSERT INTO "QuestionBank" VALUES(246726,'<p>设有 10 个进程共享一个互斥段，如果最多允许有 1 个进程进入互斥段，则所采用的互斥信号量初值应设置为1，而该信号量的取值范围为( &nbsp; )。</p>','829201','C、<p>1~-9；</p>',3);
INSERT INTO "QuestionBank" VALUES(246727,'设有 10 个进程共享一个互斥段，如果最多允许有 3 个进程同时进入互斥段， 则所采用的互斥信号量初值应设置为( &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;)。','829204','B、3；',3);
INSERT INTO "QuestionBank" VALUES(246728,'使用共享文件进行通信的方式属于( &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;)通信。','829210','D、管道通信。',3);
INSERT INTO "QuestionBank" VALUES(246729,'有两个程序： A程序按顺序使用 CPU 10秒、设备甲5秒、CPU 5秒、设备乙10 秒、CPU 10 秒； B程序按顺序使用设备甲10 秒、CPU 10 &nbsp;秒、设备乙5秒、CPU 5 秒、设备乙 10 秒。在顺序环境下， 执行上述程序， CPU 的利用率约为( &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; )。','829213','C、50%；',3);
INSERT INTO "QuestionBank" VALUES(246730,'从下面的叙述中选出一条正确的叙述( &nbsp; &nbsp; &nbsp; &nbsp;)。','829216','B、当进程由执行状态变为就绪状态时，CPU现场信息必须被保存在PCB中；',3);
INSERT INTO "QuestionBank" VALUES(246731,'进程最基本的特征是动态性和并发性。&nbsp;&nbsp;&nbsp;&nbsp;除此之外，它还有独立特征、和<span class="fill-placeholder">（1）</span>特征。','异步性','异步性',1);
INSERT INTO "QuestionBank" VALUES(246732,'系统中共有5个用户进程， 且当前 CPU 在用户态下执行，则最多可有4个用户进程处于就绪状态，最多可有<span class="fill-placeholder">（1）</span>个用户进程处于阻塞状态。','4','4',1);
INSERT INTO "QuestionBank" VALUES(246733,'系统中共有5个用户进程，若当前在核心态下执行，则最多可有<span class="fill-placeholder">（1）</span>个用户进程处于就绪状态，最多可有5个用户进程处于阻塞状态。','5','5',1);
INSERT INTO "QuestionBank" VALUES(246734,'同步机制应遵循的准则有空闲让进、忙则等待、有限等待和<span class="fill-placeholder">（1）</span>。','让权等待','让权等待',1);
INSERT INTO "QuestionBank" VALUES(246735,'利用共享的文件进行进程通信的方式被称作管道通信， 除此之外， 进程通信的类型还有共享存储器、消息系统和<span class="fill-placeholder">（1）</span>三种类型。','客户机/服务器系统','客户机/服务器系统',1);
INSERT INTO "QuestionBank" VALUES(246736,'在面向用户的调度准则中，( &nbsp; &nbsp;)准则则是为了照顾紧急作业用户的要求而设置的。','829222','D、优先权高的作业能获得优先服务。',3);
INSERT INTO "QuestionBank" VALUES(246737,'作业调度是从处于( &nbsp; &nbsp; &nbsp;)状态的队列中选取作业投入运行，周转时间是指作业进入系统到作业完成所经过的时间间隔。','829224','B、后备；',3);
INSERT INTO "QuestionBank" VALUES(246738,'( &nbsp; &nbsp; &nbsp; &nbsp;)算法不适合作业调度。','829230','D、时间片轮转。',3);
INSERT INTO "QuestionBank" VALUES(246739,'下列算法中， ( &nbsp; &nbsp; )只能采用非抢占调度方式。','829233','C、FCFS调度算法；',3);
INSERT INTO "QuestionBank" VALUES(246740,'下列算法中， ( &nbsp; &nbsp;)只能采用抢占调度方式， 而其余的算法既可采用抢占方式，也可采用非抢占方式。','829236','B、时间片轮转法；',3);
INSERT INTO "QuestionBank" VALUES(246741,'下列算法中， ( &nbsp; &nbsp; )既可采用抢占方式，也可采用非抢占方式。','829239','A、高优先权优先法和短作业优先算法；',3);
INSERT INTO "QuestionBank" VALUES(246742,'如果为每一个作业只建立一个进程， 则为了兼顾短作业和长时间等待的作业，应采用( &nbsp; &nbsp;)。','829246','D、高响应比优先。',3);
INSERT INTO "QuestionBank" VALUES(246743,'如果为每一个作业只建立一个进程， 则为了使作业的平均周转时间最短，应采用( &nbsp;)算法。','829247','A、短作业优先；',3);
INSERT INTO "QuestionBank" VALUES(246744,'下列调度方式和算法中，最容易引起进程长期等待的是 ( &nbsp; &nbsp; &nbsp; )。','829252','B、抢占式静态优先权优先算法；',3);
INSERT INTO "QuestionBank" VALUES(246745,'下列选项中，降低进程优先级的最合理的时机是( &nbsp; &nbsp;)。','829255','A、进程的时间片用完；',3);
INSERT INTO "QuestionBank" VALUES(246746,'支持多道程序设计的操作系统在运行过程中，不断地选择新进程运行来实现CPU的共享，但其中( &nbsp; &nbsp;)不是引起操作系统选择新进程的直接原因。','829262','D、有新进程进入就绪队列。',3);
INSERT INTO "QuestionBank" VALUES(246747,'从下面关于优先权大小的论述中，选择一条正确的论述( &nbsp; &nbsp;)。','829266','D、在动态优先权时，随着进程执行时间的增加，其优先权降低。',3);
INSERT INTO "QuestionBank" VALUES(246748,'假设就绪队列中有10个进程，以时间片轮转方式进行进程调度，时间片大小为300ms,CPU进行进程切换要花费10ms，则系统开销所占的比率约为( &nbsp; &nbsp; &nbsp;)。','829267','A、%3；',3);
INSERT INTO "QuestionBank" VALUES(246749,'假设就绪队列中有10个进程，以时间片轮转方式进行进程调度，时间片大小为300ms,CPU进行进程切换要花费10ms，若就绪队列中进程个数增加到20个，其余条件不变，则系统开销所占的比率将( &nbsp; &nbsp;)。','829273','C、不变；',3);
INSERT INTO "QuestionBank" VALUES(246750,'设m为同类资源R的数目，n为系统中并发进程数。当n个进程共享m个互斥资源R时，每个进程对R的最大需求是W；则下列情况会出现死锁的是( &nbsp; &nbsp; &nbsp;)。','829278','D、m=4, n=2, w=3。',3);
INSERT INTO "QuestionBank" VALUES(246751,'下述解决死锁的方法中，属于死锁预防策略的是( &nbsp; )。','829280','B、资源有序分配法；',3);
INSERT INTO "QuestionBank" VALUES(246752,'下述解决死锁的方法中，属于死锁避免策略的是( &nbsp; &nbsp; )。','829283','A、银行家算法；',3);
INSERT INTO "QuestionBank" VALUES(246753,'死锁的预防是通过破坏产生死锁的四个必要条件来实现的，下列方法中，( &nbsp; &nbsp; )破坏了“诸求与保持”条件。','829288','B、一次性分配策略；',3);
INSERT INTO "QuestionBank" VALUES(246754,'某系统中有13台磁带机，K个进程共享这些设备，每个进程最多请求使用3台，则系统不会死锁的K值是( &nbsp; ) 。','829292','B、不大于6；',3);
INSERT INTO "QuestionBank" VALUES(246755,'从下面关于安全状态和非安全状态的论述中，选出一条正确的论述( &nbsp; &nbsp; )。','829298','D、安全状态是没有死锁的状态，非安全状态是有可能死锁的状态。',3);
INSERT INTO "QuestionBank" VALUES(246756,'<span class="fill-placeholder">（1）</span>的主要任务是保护CPU现场、按某种算法选择一个就绪进程、把CPU分配给新进程。','进程调度','进程调度',1);
INSERT INTO "QuestionBank" VALUES(246757,'在抢占调度方式中，抢占的原则主要有：<span class="fill-placeholder">（1）</span>、短作业优先和优先权原则。','时间片原则','时间片原则',1);
INSERT INTO "QuestionBank" VALUES(246758,'分时系统中，时间片选得太小会造成系统开销增大的现象，因此，时间片的大小一般选择为<span class="fill-placeholder">（1）</span>一次典型的交互所需要的时间。','略大于','略大于',1);
INSERT INTO "QuestionBank" VALUES(246759,'在采用动态优先权时，为了避免一个低优先权的进程处于<span class="fill-placeholder">（1）</span>状态，可以随着进程等待时间的增加而提高其优先权；而为了避免一个高优先权的长作业长期垄断CPU,则可以随着进程运行时间的增加而降低其优先权。','饥饿','饥饿',1);
INSERT INTO "QuestionBank" VALUES(246760,'<span class="fill-placeholder">（1）</span>调度算法综合考虑了作业的运行时间和等待时间，因此会兼顾到长、短作业。','高响应比优先','高响应比优先',1);
INSERT INTO "QuestionBank" VALUES(246761,'使每道程序能在不受干扰的环境下运行，主要是通过( &nbsp; &nbsp;)功能实现的。','829300','B、内存保护；',3);
INSERT INTO "QuestionBank" VALUES(246762,'使分配到与其地址空间不一致的内存空间的程序，仍能正常运行则主要是通过（ &nbsp; ）功能实现的。','829305','C、地址映射；',3);
INSERT INTO "QuestionBank" VALUES(246763,'静态重定位是在作业的( &nbsp; &nbsp; &nbsp;)中进行的， 动态重定位是在作业执行过程中进行的。','829308','B、装入过程；',3);
INSERT INTO "QuestionBank" VALUES(246764,'从下列关于存储器管理功能的论述中，选出两条正确的论述（ &nbsp; &nbsp; ）。','829312,829315','B、内存分配最基本的任务是为每道程序分配内存空间，其所追求的主要目标是提高存储空间的利用率；
E、地址映射是指将程序空间中的逻辑地址变为内存空间的物理地址；',4);
INSERT INTO "QuestionBank" VALUES(246765,'在进程的地址空间中，有一条将第1000单元中的数据装入寄存器 R1的指令&quot;LOAD Rl, 1000&quot;,采用静态重定位技术时，装入内存后，该指令的第二个操作数(A)；采用动态重定位技术时，则仍为1000。','829318','B、修改为1000 和装入该进程的内存起始地址之和；',3);
INSERT INTO "QuestionBank" VALUES(246766,'静态链接是在装入程序之前进行的；而动态链接是在装入某段程序时或调用某段程序时进行的，其中在调用某段程序时进行链接，可提高内存利用率；适用于动态链接的存储方式是( &nbsp; &nbsp; )。','829321','A、分段存储管理；',3);
INSERT INTO "QuestionBank" VALUES(246767,'要保证进程在主存中被改变了位置后仍能正确执行，则对主存空间应采用( &nbsp; &nbsp; )。','829326','B、动态重定位；',3);
INSERT INTO "QuestionBank" VALUES(246768,'由连续分配方式发展为分页存储管理方式的主要 推动力是（ &nbsp; &nbsp;）。','829329','A、提高内存利用率；',3);
INSERT INTO "QuestionBank" VALUES(246769,'在动态分区式内存管理中，倾向于优先使用低址部分空闲区的算法是（ &nbsp; &nbsp; ）；能使内存空间中空闲区分布得较均匀的算法是循环首次适应算法。','829335','C、首次适应算法；',3);
INSERT INTO "QuestionBank" VALUES(246770,'在首次适应算法中，要求空闲分区按( &nbsp; &nbsp; )的顺序形成空闲分区链。','829337','A、空闲区起始地址递增；',3);
INSERT INTO "QuestionBank" VALUES(246771,'采用动态分区存储管理系统中，主存总容量为 55MB，初始状态全空，采用最佳适应算法，内存的分配和回收顺序为：分配15MB，分配30MB，回收15MB，分配8MB，分配6MB，此时主存中最大的空闲分区大小是（ &nbsp; &nbsp; ）。','829342','B、9MB；',3);
INSERT INTO "QuestionBank" VALUES(246772,'采用动态分区存储管理系统中，主存总容量为 55MB，初始状态全空，采用首次适应算法，内存的分配和回收顺序为：分配15MB，分配30MB，回收15MB，分配8MB，分配6MB，此时主存中最大的空闲分区大小是（ &nbsp; &nbsp; &nbsp;）。','829347','C、10MB；',3);
INSERT INTO "QuestionBank" VALUES(246773,'在伙伴系统中，一对空闲分区为伙伴是指（ &nbsp; &nbsp; ）。','829351','C、(3)两个大小均为2kB的相邻空闲分区，且前一个分区的起始地址是2k+1B的倍数；',3);
INSERT INTO "QuestionBank" VALUES(246774,'<p>在回收内存时可能出现下述情况：释放区与插入点前一分区F1相邻接，此时应（ &nbsp; &nbsp; ）。</p>','829355','C、<p><span>&nbsp;以F1 分区的表项为新表项，但修改新表项的大小；</span></p>',3);
INSERT INTO "QuestionBank" VALUES(246775,'对重定位存储管理方式，应在整个系统中设置一个重定位寄存器，当程序执行时，是由( &nbsp; &nbsp;)与重定位寄存器中的起始地址相加得到物理地址， &nbsp;用物理地址来访问内存。','829357','B、有效地址；',3);
INSERT INTO "QuestionBank" VALUES(246776,'在没有快表的情况下，分页系统每访问一次数据，要访问2次内存；分段系统每访问一次数据， 要访问2次内存；段页式系统每访问一次数据， 要访问( &nbsp; &nbsp; &nbsp; )次内存。','829362','C、3；',3);
INSERT INTO "QuestionBank" VALUES(246777,'在段页式存储管理中，用于地址映射的映射表是( &nbsp; &nbsp; )。','829367','D、每个进程一张段表，每个段一张页表；',3);
INSERT INTO "QuestionBank" VALUES(246778,'通常情况下，在下列存储管理方式中，( &nbsp; &nbsp; &nbsp;)支持多道程序设计、管理最简单，但存储碎片多。','829370','C、固定分区；',3);
INSERT INTO "QuestionBank" VALUES(246779,'通常情况下，在下列存储管理方式中，( &nbsp; &nbsp; &nbsp;)使内存碎片尽可能少，而且使内存利用率最高。','829373','B、页式；',3);
INSERT INTO "QuestionBank" VALUES(246780,'下述存储管理方式中， 会产生内部碎片的是( &nbsp; &nbsp; )。','829377','B、页式和段页式；',3);
INSERT INTO "QuestionBank" VALUES(246781,'下述存储管理方式中，会产生外部碎片的是( &nbsp; &nbsp; &nbsp;)。','829382','C、动态分区方式和段式；',3);
INSERT INTO "QuestionBank" VALUES(246782,'在首次适应算法中，空闲分区以地址递增的次序拉链；在<span class="fill-placeholder">（1）</span>算法中，空闲分区以空闲区大小递增的次序拉链。','最佳适应','最佳适应',1);
INSERT INTO "QuestionBank" VALUES(246783,'在连续分配方式中可通过<span class="fill-placeholder">（1）</span>来减少内存零头，它必须得到动态重定位技术的支持。','紧凑','紧凑',1);
INSERT INTO "QuestionBank" VALUES(246784,'分页系统中若页面较小，虽有利于减少块内碎片，但会引起<span class="fill-placeholder">（1）</span>太长；而页面较大，会引起块内碎片增大。','页表','页表',1);
INSERT INTO "QuestionBank" VALUES(246785,'分页系统中，页表的作用是实现页号到<span class="fill-placeholder">（1）</span>的转换。','物理块号','物理块号',1);
INSERT INTO "QuestionBank" VALUES(246786,'现代操作系统中，提高内存利用率主要是通过( &nbsp; &nbsp; &nbsp;)功能实现的。','829387','D、虚拟存储器。',3);
INSERT INTO "QuestionBank" VALUES(246787,'从下列关于非虚拟存储器的论述中， 选出一条正确的论述( &nbsp; &nbsp; &nbsp;)。','829388','A、要求作业在运行前，必须全部装入内存，且在运行过程中也必须一直驻留内存；',3);
INSERT INTO "QuestionBank" VALUES(246788,'虚拟存储器最基本的特征是多次性，该特征主要是基于( &nbsp; &nbsp; &nbsp;)。','829395','D、局部性原理。',3);
INSERT INTO "QuestionBank" VALUES(246789,'实现虚拟存储器最关键的技术是( &nbsp; &nbsp; &nbsp;)。','829398','C、请求调页（段）；',3);
INSERT INTO "QuestionBank" VALUES(246790,'虚拟存储器管理系统的基础是程序的局部性理论。此理论的基本含义是&nbsp;&nbsp;&nbsp;&nbsp;( &nbsp; &nbsp; )。','829401','B、程序执行时对主存的访问是不均匀的；',3);
INSERT INTO "QuestionBank" VALUES(246791,'根据局部性理论，Denning 提出了( &nbsp; &nbsp; &nbsp; )。','829406','C、工作集理论；',3);
INSERT INTO "QuestionBank" VALUES(246792,'实现虚拟存储器的目的是( &nbsp;)。','829411','D、扩充主存容量。',3);
INSERT INTO "QuestionBank" VALUES(246793,'下列方式中，( &nbsp; &nbsp;)不适用于实现虚拟存储器。','829412','A、可变分区管理；',3);
INSERT INTO "QuestionBank" VALUES(246794,'从下列关于虚拟存储器的论述中，选出两条正确的论述( &nbsp; &nbsp; &nbsp;)。','829417,829421','B、在请求段页式系统中，以段为单位管理用户的虚空间，以页为单位管理内存空间；
F、由于有了虚拟存储器，于是允许用户使用比内存更大的地址空间。',4);
INSERT INTO "QuestionBank" VALUES(246795,'一个计算机系统的虚拟存储器的最大容量是由( &nbsp; &nbsp;)确定的。','829425','D、计算机的地址结构。',3);
INSERT INTO "QuestionBank" VALUES(246796,'在请求分页系统的页表中增加了若干项，其中状态位供( &nbsp; &nbsp; &nbsp; )参考。','829427','B、程序访问；',3);
INSERT INTO "QuestionBank" VALUES(246797,'在请求分页系统的页表中增加了若干项，其中修改位供( &nbsp; &nbsp; )时参考。','829432','C、换出页面；',3);
INSERT INTO "QuestionBank" VALUES(246798,'在请求分页系统的页表中增加了若干项 ， 其中访问位供( &nbsp; &nbsp;)参考；外存始址供(D)参考。','829434','A、置换算法；',3);
INSERT INTO "QuestionBank" VALUES(246799,'在请求分页系统的页表中增加了若干项 ， 其中外存始址供( )参考。','829441','D、调入页面。',3);
INSERT INTO "QuestionBank" VALUES(246800,'在页面置换算法中，存在 Belady现象的算法是FIFO算法，其中，Belady现象是指( &nbsp; &nbsp;)。','829443','B、当分配到的内存块数增加时，缺页中断的次数有可能反而增加；',3);
INSERT INTO "QuestionBank" VALUES(246801,'某虚拟存储器的用户编程空间共32个页面，每页1KB，主存16KB。假定某时刻用户页表中已调入主存的页面的虚页号0，1，2和3。对应的物理页号分别为5，10，4和7。则十六进制虚地址0A5C相对应的物理地址为（ &nbsp; &nbsp; ）。','829449','D、125C。',3);
INSERT INTO "QuestionBank" VALUES(246802,'虚拟存储器的功能由软硬件结合完成的，在虚拟存储器系统中，采用（ &nbsp; ）提高动态地址翻译的速度。','829453','D、高速缓冲存储器。',3);
INSERT INTO "QuestionBank" VALUES(246803,'从下面关于请求分段存储管理的叙述中选出一条正确的叙述( &nbsp; &nbsp; &nbsp;)。','829455','B、分段的尺寸受内存空间的限制，但作业总的尺寸不受内存空间的限制；',3);
INSERT INTO "QuestionBank" VALUES(246804,'Linux 采用( &nbsp; &nbsp;)存储管理方式。','829460','C、请求分页；',3);
INSERT INTO "QuestionBank" VALUES(246805,'Linux内核的页面分配程序采用( &nbsp; &nbsp;)算法进行页框的分配和回收。','829464','C、伙伴系统；',3);
INSERT INTO "QuestionBank" VALUES(246806,'实现虚拟存储器，除了需要有一定容量的内存和相当容量的外存外，还需要有<span class="fill-placeholder">（1）</span>、地址变换机构和缺页中断机构的硬件支待。','页表机制','页表机制',1);
INSERT INTO "QuestionBank" VALUES(246807,'为实现请求分页管理，应在<span class="fill-placeholder">（1）</span>的页表基础上增加状态位、访问字段、修改位和外存地址等数据项。','纯分页','纯分页',1);
INSERT INTO "QuestionBank" VALUES(246808,'在请求调页系统中，调页的策略有预调页和<span class="fill-placeholder">（1）</span>两种方式。','请求调页','请求调页',1);
INSERT INTO "QuestionBank" VALUES(246809,'在请求调页系统中，反复进行页面换进和换出的现象称为<span class="fill-placeholder">（1）</span>，它产生的原因主要原因是置换算法选用不当。','抖动','抖动',1);
INSERT INTO "QuestionBank" VALUES(246810,'分段系统中的越界检查是通过<span class="fill-placeholder">（1）</span>中存放的段表长度和逻辑地址中的段号的比较，以及段表项中的段长和逻辑地址中的段内地址的比较来实现的。','段表寄存器','段表寄存器',1);
INSERT INTO "QuestionBank" VALUES(246811,'在一般大型计算机系统中，主机对外围设备的控制可通过通道、控制器和设备三个层次来实现。从下述叙述中选出一条正确的叙述（ &nbsp; &nbsp; &nbsp;）。','829467','B、通道控制控制器，设备在控制器控制下工作；',3);
INSERT INTO "QuestionBank" VALUES(246812,'从下面关于设备属性的论述中，选择一条正确的论述（ &nbsp; &nbsp; &nbsp;）。','829471','B、共享设备必须是可寻址的和随机访问的设备；',3);
INSERT INTO "QuestionBank" VALUES(246813,'通道是一种特殊的处理机，具有执行I/O指令集能力。主机的CPU与通道可以并行工作，并通过( &nbsp; &nbsp; )实现彼此之间的通信和同步。','829476','C、I/O指令和I/O中断；',3);
INSERT INTO "QuestionBank" VALUES(246814,'在I/O控制方式的发展过程中，最主要的推动因素是( &nbsp; &nbsp;)。提高I/O速度和设备利用率，在OS中主要依靠缓冲管理功能。使用户所编制的程序与实际使用的物理设备无关是由设备独立性功能实现的。','829480','C、减少主机对I/O控制的干预；',3);
INSERT INTO "QuestionBank" VALUES(246815,'磁盘属于块设备，其信息的存取是以固定长数据块为单位的；磁盘的I/O控制主要采取( &nbsp; &nbsp; &nbsp;)方式。','829484','C、DMA；',3);
INSERT INTO "QuestionBank" VALUES(246816,'在程序I/O方式中，对于输出设备，准备就绪是指( &nbsp; &nbsp; )。','829486','A、输出缓冲区已空；',3);
INSERT INTO "QuestionBank" VALUES(246817,'在利用 RS-232 接口进行通信时，其通信速率为9.6KB/S(B为 Bit)。如果在通信接口中仅设置了一个8位寄存器作为缓冲寄存器，这意味着大约每隔( &nbsp; )的时间便要中断一次CPU，且要求CPU必须在0.1ms时间内予以响应。','829492','C、0.8 ms；',3);
INSERT INTO "QuestionBank" VALUES(246818,'假定把磁盘上一个数据块中的信息输入到一单缓冲区的时间T为100µs，将缓冲区中的数据传送到用户区的时间 M为50µs，而CPU对这一块数据进行计算的时间C为50µs，这样，系统对每一块数据的处理时间为( &nbsp; )。','829496','C、150µs；',3);
INSERT INTO "QuestionBank" VALUES(246819,'假定把磁盘上一个数据块中的信息输入到一双缓冲区的时间T为100µs，将缓冲区中的数据传送到用户区的时间 M为50µs，而CPU对这一块数据进行计算的时间C为50µs，这样，系统对每一块数据的处理时间为( &nbsp; ); 如果将单缓冲改为双缓冲，则系统对每一块数据的处理时间为(B) 。','829499','B、100µs；',3);
INSERT INTO "QuestionBank" VALUES(246820,'操作系统中采用缓冲技术的目的是为了增强系统并行操作的能力；为了使多个进程能有效地同时处理输入和输出，最好使用( &nbsp; &nbsp; )。','829502','A、缓冲池；',3);
INSERT INTO "QuestionBank" VALUES(246821,'从下面关千设备独立性的论述中，选择一条正确的论述( )。','829507','B、设备独立性是指用户程序独立于具体使用的物理设备的一种特性；',3);
INSERT INTO "QuestionBank" VALUES(246822,'在多用户系统中应为( )设置一张逻辑设备表。','829511','B、每个用户（进程）；',3);
INSERT INTO "QuestionBank" VALUES(246823,'为实现设备分配，应为每个设备设置一张设备控制表，在系统中配置一张( )。','829516','C、系统设备表；',3);
INSERT INTO "QuestionBank" VALUES(246824,'为实现设备独立性，系统中应设置一张( )。','829520','C、逻辑设备表；',3);
INSERT INTO "QuestionBank" VALUES(246825,'从下面关于虚拟设备的论述中，选择一条正确的论述( &nbsp;)。','829524','C、虚拟设备是指把一个物理设备变换成多个对应的逻辑设备；',3);
INSERT INTO "QuestionBank" VALUES(246826,'SPOOLing是对脱机I/O工作方式的模拟，SPOOLing系统中的输入井是对脱机输入中的( )进行模拟。','829527','B、磁盘；',3);
INSERT INTO "QuestionBank" VALUES(246827,'SPOOLing 是对脱机I/O工作方式的模拟，SPOOLing系统中输出进程是对脱机输出中的( )进行模拟。','829532','C、外围控制机；',3);
INSERT INTO "QuestionBank" VALUES(246828,'从下列有关 SPOOLing系统的论述中，选择两条正确的论述( &nbsp; )。','829541,829542','H、SPOOLing 系统实现了对I /O设备的虚拟，只要输入设备空闲， SPOOLing可预先将输入数据从设备传送到输入井中供用户程序随时读取；
I、在 SPOOLing系统中， 用户程序可随时将输出数据送到输出井中，待输出设备空闲时再执行数据输出操作。',4);
INSERT INTO "QuestionBank" VALUES(246829,'从下列论述中选出一条正确的论述( &nbsp;)。','829545','C、同一用户所使用的I/O设备也可以并行工作。',3);
INSERT INTO "QuestionBank" VALUES(246830,'从下列关于驱动程序的论述中， 选出一条正确的论述( &nbsp;)。','829550','D、对于一台多用户机，配置了相同的8个终端， 此时可只配置一个由多个终端共享的驱动程序。',3);
INSERT INTO "QuestionBank" VALUES(246831,'对打印机的I/O控制方式常采用<span class="fill-placeholder">（1）</span>方式，对磁盘的I/O控制方式常采用DMA控制方式。','中断驱动','中断驱动',1);
INSERT INTO "QuestionBank" VALUES(246832,'I/O软件通常被组织成用户层软件、<span class="fill-placeholder">（1）</span>、设备驱动程序和I/O中断处理程序四个层次。','设备独立性软件','设备独立性软件',1);
INSERT INTO "QuestionBank" VALUES(246833,'驱动程序与I/O设备特性紧密相关，如果计算机中连有3个同种类型的彩色终端和2个同种类型的黑白终端，可以为它们配置<span class="fill-placeholder">（1）</span>个设备驱动程序。','2','2',1);
INSERT INTO "QuestionBank" VALUES(246834,'为实现设备独立性，在系统中必须设置<span class="fill-placeholder">（1）</span>， 通常它包括逻辑设备名、物理设备名和设备驱动程序入口地址三项。','逻辑设备表','逻辑设备表',1);
INSERT INTO "QuestionBank" VALUES(246835,'实现后台打印时，SPOOLing系统中的输出进程，只为请求I/O的进程做两件事：(1)为之在<span class="fill-placeholder">（1）</span>中申请空闲缓冲区，并将待打印数据送入其中；(2)为用户进程申请一张用户请求打印表，并将用户的打印要求填入表中，再将该表排在队列中。','输出井','输出井',1);
INSERT INTO "QuestionBank" VALUES(247744,'在计算机系统中配置操作系统的主要目的是（ &nbsp;）。','832082','B、提高系统资源的利用率；',3);
INSERT INTO "QuestionBank" VALUES(247745,'操作系统的主要功能是管理计算机系统中的资源 ，其中包括（ &nbsp;）、存储器，以及文件和设备。','832087','C、处理机；',3);
INSERT INTO "QuestionBank" VALUES(247746,'操作系统有多种类型：允许多个用户以交互方式使用计算机的操作系统，称为（ &nbsp;）。','832090','B、分时操作系统；',3);
INSERT INTO "QuestionBank" VALUES(247747,'操作系统有多种类型：在IBM-PC 机上的操作系统称为（ &nbsp;）。','832093','A、微机操作系统；',3);
INSERT INTO "QuestionBank" VALUES(247748,'用户在程序设计过程中，可通过（ &nbsp;）获得操作系统的服务。','832099','C、系统调用；',3);
INSERT INTO "QuestionBank" VALUES(247749,'操作系统是一种（ &nbsp;）,它负责为用户和用户程序完成所有与硬件相关并与应用无关的工作，高级程序设计语言的编译不是操作系统关心的主要问题。','832102','B、系统软件；',3);
INSERT INTO "QuestionBank" VALUES(247750,'在设计分时操作系统时， 首先要考虑的是（ &nbsp;）。','832106','B、交互性和响应时间；',3);
INSERT INTO "QuestionBank" VALUES(247751,'在多道批处理系统中为了提高吞吐量，系统总是想方设法缩短用户作业（ &nbsp;）。','832109','A、周转时间；',3);
INSERT INTO "QuestionBank" VALUES(247752,'<p>从下面关于操作系统的论述中，选出一条正确的论述（ &nbsp;）。</p>','832113','A、<p>对批处理作业，必须提供相应的作业控制信息；</p>',3);
INSERT INTO "QuestionBank" VALUES(247753,'在分时系统中，为使多个用户能够同时与系统交互，最关键的问题是能在一较短的时间内，使所有用户程序都得到运行；当用户数目为100时，为保证响应时间不超过2秒，此时的时间片最大应为（ &nbsp;）。','832119','B、20ms；',3);
INSERT INTO "QuestionBank" VALUES(247754,'在下列系统中，（ &nbsp;）是实时信息系统。','832124','B、民航售票系统；',3);
INSERT INTO "QuestionBank" VALUES(247755,'现有以下计算机的应用场合为机房学生上机学习编程，请为其选择适当的操作系统（ &nbsp;）。','832130','C、配置分时操作系统；',3);
INSERT INTO "QuestionBank" VALUES(247756,'现有以下计算机的应用场合为国家统计局数据处理中心，请为其选择适当的操作系统（ &nbsp;）。','832133','B、配置批处理操作系统；',3);
INSERT INTO "QuestionBank" VALUES(247757,'从下面关于并发性的论述中，选出一条正确的论述（ &nbsp;）。','832138','C、并发性是指若干事件在同一时间间隔内发生；',3);
INSERT INTO "QuestionBank" VALUES(247758,'在单处理器系统中，可以并发但不可以并行工作的是（ &nbsp;）。','832142','C、进程与进程；',3);
INSERT INTO "QuestionBank" VALUES(247759,'从下述关于模块化程序的叙述中， 选出一条正确的叙述（ &nbsp; ）。','832144','A、只要模块接口不变，各模块内部实现细节的修改，不会影响别的模块。',3);
INSERT INTO "QuestionBank" VALUES(247760,'通常，下列模块中必须包含在操作系统内核中的是（ &nbsp;）模块。','832150','B、中断处理；',3);
INSERT INTO "QuestionBank" VALUES(247761,'UNIX 操作系统最初是由（ &nbsp; ）推出的。','832156','D、Bell实验室。',3);
INSERT INTO "QuestionBank" VALUES(247762,'<p>Linux 是一个多用户多任务类型的操作系统，其内核的创始人是（ &nbsp; ）。</p>','832159','C、<p>Linus Torvalds；</p>',3);
INSERT INTO "QuestionBank" VALUES(247763,'Linux 是一个多用户多任务类型的操作系统，所谓 linux 是一个“FreeSoftware”，这意味着（ &nbsp; ）。','832162','B、Linux可以自由修改和发布；',3);
INSERT INTO "QuestionBank" VALUES(247764,'在单处理机环境下的多道程序设计具有多道、<span class="fill-placeholder">（1）</span>和微观上交替运行的特点。','宏观上同时运行','宏观上同时运行',1);
INSERT INTO "QuestionBank" VALUES(247765,'现代操作系统的两个最基本的特征是并发和共享，除此之外，它还具有虚拟性和<span class="fill-placeholder">（1）</span>的特征。','异步性','异步性',1);
INSERT INTO "QuestionBank" VALUES(247766,'除了传统操作系统中的进程管理、存储器管理、设备管理、文件管理等基本功能外， 现代操作系统中还增加了<span class="fill-placeholder">（1）</span>、网络和多媒体等功能。','系统安全','系统安全',1);
INSERT INTO "QuestionBank" VALUES(247767,'操作系统的基本类型主要有批处理系统、<span class="fill-placeholder">（1）</span>和实时系统。','分时系统','分时系统',1);
INSERT INTO "QuestionBank" VALUES(247768,'实现分时系统的关键问题是人机交互，为此必须引入时间片的概念，并采用<span class="fill-placeholder">（1）</span>调度算法。','时间片轮转','时间片轮转',1);
INSERT INTO "QuestionBank" VALUES(278390,'<p>如果想要做一个登陆页面，用什么面板布局登陆信息比较好？</p><p>which of following layouts is the best for arranging the login page?</p>','918779','C、<p>GridPane</p>
',3);
INSERT INTO "QuestionBank" VALUES(278392,'<p>如果现在我想要用事件控制圆的大小，可以通过哪些事件完成？</p><p>Which of following events could help me control the size of the circel?</p>','918783,918784,918785,918786','A、<p>鼠标点击按钮事件</p><p>mouse click event</p>
B、<p>键盘key pressed事件</p><p>key pressed event</p>
C、<p>鼠标点击面板事件</p><p>panel click event</p>
D、<p>鼠标点击圆事件</p><p>click on the circel event</p>
',4);
INSERT INTO "QuestionBank" VALUES(278544,'<p>完整性检查和控制的防范对象（），防止它们进入数据库。</p><p><br/></p>','919250,919251','A、<p><span>不合语义的数据</span></p>
B、<p><span>不正确的数据</span></p>
',4);
INSERT INTO "QuestionBank" VALUES(278545,'<p>安全性控制的防范对象是（），防止他们对数据库数据的存取。</p>','919254,919255','B、<p><span>非法用户</span></p>
A、<p><span>非法操作</span></p>
',4);
INSERT INTO "QuestionBank" VALUES(278546,'<p>下述SQL语言中的权限，引用其他关系的主码作为外码时候涉及到的关键子有（）。</p>','919258,919259','A、<p><span>Foreign key</span></p>
B、<p><span>REFERENCES</span></p>
',4);
INSERT INTO "QuestionBank" VALUES(278547,'<p><span>DBMS的完整性控制机制应具有哪些功能？</span></p>','919262,919263,919264','A、<p><span>定义功能，即提供定义完整性约束条件的机制。</span></p>
C、<p><span>违约反应：如果发现用户的操作请求使数据违背了完整性约束条件，则采取一定的动作来保证数据的完整性。</span></p>
B、<p><span>检查功能，即检查用户发出的操作请求是否违背了完整性约束条件</span></p>
',4);
INSERT INTO "QuestionBank" VALUES(278548,'<p>删除被参照关系的元组时的考虑，这时系统可能采取的作法有：</p>','919266,919267','B、<p><span>受限删除（RESTRICTED）</span></p>
A、<p><span>级联删除（CASCADES） </span></p>
',4);
INSERT INTO "QuestionBank" VALUES(278549,'<p><span>RDBMS在实现参照完整性时需要考虑以下几个方面：</span></p>','919270,919271,919272','A、<p><span>外码是否可以接受空值</span></p>
C、<p><span>在参照关系中插入元组时的问题，这时系统考虑外键是否取自被参照关系中是否有对应的属性值存在</span></p>
B、<p><span>删除被参照关系的元组时的考虑，拒绝、级联及置空等</span></p>
',4);
INSERT INTO "QuestionBank" VALUES(278550,'<p>关系系统中，当操作违反实体完整性、参照完整性和用户定义的完整性约束条件时，一般是如何分别进行处理的？  </p>','919274,919275,919276','A、<p><span>对于违反实体完整性，一般都采用拒绝执行的方式进行处理。</span></p>
C、<p><span>对于违反参照完整性的操作，并不都是简单地拒绝执行，有时要根据应用语义执行一些附加的操作，以保证数据库的正确性。</span></p>
B、<p><span>对于违反用户定义的完整性的操作一般都采用拒绝执行的方式进行处理。</span></p>
',4);
INSERT INTO "QuestionBank" VALUES(278552,'<p>下列哪些属于用户自定义完整性</p>','919282,919284,919285','A、<p>要求年龄(<span>属性</span>)处于 1-100之间</p>
D、<p>一个人的奖金(属性)不能超过其工资(属性)</p>
C、<p>名字唯一但是可以为空</p>
',4);
INSERT INTO "QuestionBank" VALUES(278553,'<p>关系数据库管理系统实现用户自定义完整性的技术包括</p>','919287,919288','B、<p>sql not null</p>
A、<p>SQL unique</p>
',4);
INSERT INTO "QuestionBank" VALUES(279539,'二分搜索算法是利用( &nbsp;)实现的算法','922079','A、分治；
',3);
INSERT INTO "QuestionBank" VALUES(279540,'在一个有2021个元素的最小堆中，下列哪个下标不可能是最大元的位置？','922083','A、1000；
',3);
INSERT INTO "QuestionBank" VALUES(279541,'哪种树，树中任何结点到根结点路径上的各结点值是有序的？','922089','C、堆；
',3);
INSERT INTO "QuestionBank" VALUES(279542,'分治法的设计思想是将一个难以直接解决的大问题分割成规模较小的子问题，分别解决子问题，最后将子问题的解组合起来形成原问题的解。这要求原问题和子问题','922093','C、问题规模不同，问题性质相同；
',3);
INSERT INTO "QuestionBank" VALUES(279545,'<p>汉诺塔要求一次只能移动一个圆盘，小的圆盘只能在大的圆盘之上，将一叠圆盘从A移动到B，可以在C处中转。下面代码正确的是</p>','922102','D、<p><span>void Hanoi(int n,int A,int B,int C){if(n&gt;0){Hanoi(n-1,A,C,B);Move(n,a,b);Hanoi(n-1,C,B,A);}</span></p>
',3);
INSERT INTO "QuestionBank" VALUES(279546,'<p>（5，8，12，19，25，20，15，22）是一个堆，现在将2 插入堆中，结果是什么？</p>','922106','D、<p>2，5，12，8，25，20，15，22，19；</p>
',3);
INSERT INTO "QuestionBank" VALUES(280080,'线性时间内找第i小元素的算法，下列叙述不正确的是','923701','A、可以每三个元素一组找中位数；
',3);
INSERT INTO "QuestionBank" VALUES(280081,'关于排序算法，下列错误的是','923707','C、任何排序算法的最坏时间不可能好于Θ(nlog n)；
',3);
INSERT INTO "QuestionBank" VALUES(280082,'<p>插入操作的时间复杂度，错误的是</p>','923712','D、<p>斐波那契堆是Θ(log n)；</p>
',3);
INSERT INTO "QuestionBank" VALUES(280083,'在下面的排序方法中，需要额外O(n)空间的算法是( &nbsp; &nbsp;)','923716','D、合并排序；
',3);
INSERT INTO "QuestionBank" VALUES(280084,'想得到1000个元素组成的序列中最大七个元素排序的序列，用以下什么方法最快？','923718','B、堆排序；
',3);
INSERT INTO "QuestionBank" VALUES(280085,'排序算法的稳定性是指','923724','D、以上都不对；
',3);
INSERT INTO "QuestionBank" VALUES(280086,'若需在O(nlogn)的时间内完成对数组的排序，且要求排序是稳定的，则可选择的排序方法是','923725','A、合并排序；
',3);
INSERT INTO "QuestionBank" VALUES(280088,'对ｎ个不同的排序码按从小到大顺序进行冒泡排序，在下列哪个情况下比较的次数最多？','923732','B、从大到小排列好的；
',3);
INSERT INTO "QuestionBank" VALUES(280089,'下列关键字序列中，哪个可以是堆？','923738','D、18, 23, 53, 31, 94, 72；
',3);
INSERT INTO "QuestionBank" VALUES(280090,'以下排序方法中，需要的时间与输入序列初始顺序相关性最小的是？','923740','B、二分插入排序；
',3);
INSERT INTO "QuestionBank" VALUES(280091,'当输入序列反向排好序了，用下列哪个排序算法最快？','923745','C、堆排序；
',3);
INSERT INTO "QuestionBank" VALUES(301360,'下列哪个命题为真？','985560','C、构造函数可以访问类的静态成员
',3);
INSERT INTO "QuestionBank" VALUES(301361,'下列哪一项说法最好地描述了Java中的对象？（ &nbsp; ）','985564','C、对象是一种数据结构，它具有操作数据的方法
',3);
INSERT INTO "QuestionBank" VALUES(301362,'有关类的说法，正确的是（ &nbsp; ）。','985567','B、类具有封装性，但可以通过类的公共接口访问类中的数据
',3);
INSERT INTO "QuestionBank" VALUES(301363,'自定义类型转换是由按优先关系从低级数据转换为高级数据，优先次序为（ &nbsp; &nbsp;）','985570','A、char-int-long-float-double
',3);
INSERT INTO "QuestionBank" VALUES(301364,'下面程序片段输出的是（ &nbsp; ）<br>int i = 0, j = 9; <br><br>do<br> { <br>if(i++ &gt; --j) <br> &nbsp; &nbsp;break; <br>} while(i &lt; 4); <br>System.out.println(&quot;i = &quot; + i + &quot; and j = &quot; + j);','985577','D、i = 4 and j = 5
',3);
INSERT INTO "QuestionBank" VALUES(301365,'关于while和do－while循环，下列说法正确的是（ &nbsp;）','985581','D、以上都不对
',3);
INSERT INTO "QuestionBank" VALUES(301366,'一个循环一般应包括哪几部分内容（ &nbsp; ）','985585','D、以上都是
',3);
INSERT INTO "QuestionBank" VALUES(301367,'下面不属于java条件分支语句结构的是（ &nbsp; ）','985589','D、if－else else结构
',3);
INSERT INTO "QuestionBank" VALUES(301368,'多分支语句switch（表达式）｛｝中，表达式不可以返回哪种类型的值（ &nbsp; &nbsp;）','985592','C、接口型
',3);
INSERT INTO "QuestionBank" VALUES(301369,'下面选项中，（ &nbsp; ）是 Java 关键字。','985594','A、continue
',3);
INSERT INTO "QuestionBank" VALUES(301370,'java用（ &nbsp; ）来实现goto语句所特有的一些功能。','985598','A、break
',3);
INSERT INTO "QuestionBank" VALUES(301371,'关于下面程序，（ &nbsp; ）的结论是正确的。<br> public class J_Test <br>{ <br>public static void main(String[] args) <br>{ <br>try { return; <br>} <br>finally<br> { <br>System.out.println(&quot;1&quot;);<br> } <br>}<br> }','985605','D、上面程序输出“1”
',3);
INSERT INTO "QuestionBank" VALUES(301372,'设有定义语句int a[]={1,1,2}; 则以下对此语句的叙述错误的是( &nbsp; &nbsp;)。','985608','C、a数组的下标为1～3
',3);
INSERT INTO "QuestionBank" VALUES(301373,'下列数组定义及赋值，错误的是( &nbsp; &nbsp;)','985611','B、intArray=new int[3]; &nbsp;intArray[1]=1; intArray[2]=2; intArray[3]=3;
',3);
INSERT INTO "QuestionBank" VALUES(301374,'public class T18 <br>{ <br>static int arr[] = new int[10]; <br>public static void main(String a[]) <br>{ &nbsp; <br>System.out.println(arr[1]); <br> &nbsp;} <br>} <br>哪个语句是正确的？（ &nbsp; ）','985616','C、输出零
',3);
INSERT INTO "QuestionBank" VALUES(301375,'关于以下程序段，正确的说法是（ &nbsp; ）<br>String &nbsp;s1=“a”+“b”; <br>String &nbsp;s2=new &nbsp;String（s1）； <br>if（s1= =s2） <br>System.out.println(“= = &nbsp;is succeeded”); <br>if (s1.equals(s2)) <br>System.out.println(“.equals() is succeeded”);','985620','C、行6执行，行4不执行
',3);
INSERT INTO "QuestionBank" VALUES(301376,'作为 Java 应用程序入口的 main 方法，其声明格式可以是（ &nbsp;）','985622','A、public static void main(String[] args)
',3);
INSERT INTO "QuestionBank" VALUES(301377,'下面的方法重载，正确的是（ &nbsp;）','985628','C、float fun(float a) { }float fun(float a, float b) { }
',3);
INSERT INTO "QuestionBank" VALUES(301378,'为了区分重载多态中同名的不同方法，要求（ &nbsp; ）。','985630','A、采用不同的参数列表
',3);
INSERT INTO "QuestionBank" VALUES(301379,'在 Java 中，所有类的根类是（ &nbsp;）','985634','A、java.lang.Objet
',3);
INSERT INTO "QuestionBank" VALUES(301380,'下列说法正确的是（ &nbsp;）','985638','A、JAVA程序的main方法必须写在类里面
',3);
INSERT INTO "QuestionBank" VALUES(301381,'Java中，在如下所示的Test类中，共有（ &nbsp; ）个构造方法。<br>public class Test{<br>private int x;<br>public Test(){<br>x=35;<br>}<br>public void Test(double f){<br>This.x=(int)f;<br>}<br>public Test(String s){}<br>}','985644','C、2
',3);
INSERT INTO "QuestionBank" VALUES(301382,'以下程序的运行结果是：( &nbsp; )<br>public class Increment{<br>public static void main(String args[]) {<br>int a;<br>a = 6;<br>System.out.print(a);<br>System.out.print(a++);<br>System.out.print(a);<br>}<br>}','985647','B、667
',3);
INSERT INTO "QuestionBank" VALUES(301383,'将类的成员的访问权限设置为默认的，则该成员能被（ &nbsp;）','985650','A、同一包中的类访问
',3);
INSERT INTO "QuestionBank" VALUES(301384,'下面关于继承的说法，正确的是（ &nbsp; ）','985657','D、一个类只能有一个超类
',3);
INSERT INTO "QuestionBank" VALUES(301385,'下列哪种说法是正确的？（ &nbsp; ）','985658','A、私有方法不能被子类覆盖
',3);
INSERT INTO "QuestionBank" VALUES(301386,'下列说法正确的是（ &nbsp; ）','985662','A、final 可修饰类、属性、方法
',3);
INSERT INTO "QuestionBank" VALUES(301387,'下面关于类的说法错误的是（ &nbsp; ）','985667','B、Java语言的类支持单继承和多继承
',3);
INSERT INTO "QuestionBank" VALUES(301388,'在Java中，多态的实现不仅能减少编码的工作量，还能大大提高程序的可维护性及可扩展性，那么实现多态的步骤包括以下几个方面除了（ &nbsp; ）','985671','B、是同一个方法
',3);
INSERT INTO "QuestionBank" VALUES(301389,'下面关于多态性的说法，正确的是（ &nbsp; )','985676','C、子类中可以有和父类中同名且参数相同的方法
',3);
INSERT INTO "QuestionBank" VALUES(301390,'下面关于Java接口的说法错误的是（ &nbsp;）','985680','C、Java接口中可以声明私有成员
',3);
INSERT INTO "QuestionBank" VALUES(301391,'关于类继承的说法，正确的是（ &nbsp; ）。','985683','B、Java接口允许多继承
',3);
INSERT INTO "QuestionBank" VALUES(301392,'有关类的说法，正确的是（ &nbsp; ）。','985687','B、类具有封装性，但可以通过类的公共接口访问类中的数据
',3);
INSERT INTO "QuestionBank" VALUES(301393,'下面关于接口的描述中，错误的是（ &nbsp; ）。','985690','A、一个类只允许继承一个接口
',3);
INSERT INTO "QuestionBank" VALUES(301394,'下面关于接口的说法中不正确的是（ &nbsp; ）。','985696','C、子接口继承父接口所用的关键字是implements
',3);
INSERT INTO "QuestionBank" VALUES(301395,'下列关于抽象类的描述中，错误的是（ &nbsp;）。','985700','C、抽象类是不可以有构造方法的
',3);
INSERT INTO "QuestionBank" VALUES(301396,'下面说法不正确的是（ &nbsp; ）。','985703','B、abstract和final能同时修饰一个类
',3);
INSERT INTO "QuestionBank" VALUES(301397,'用abstract修饰的类称为抽象类，它们（ &nbsp;）','985706','A、只能用以派生新类，不能用以创建对象；
',3);
INSERT INTO "QuestionBank" VALUES(301398,'定义外部类的类头时，不可用的关键字是（ &nbsp;）','985712','C、protected
',3);
INSERT INTO "QuestionBank" VALUES(301399,'关于Object类中定义的toString方法，以下说法正确的是（ &nbsp;）','985716','C、toString方法可以将所有其他类型转换为字符串类型
',3);
INSERT INTO "QuestionBank" VALUES(306044,'<p>大数据的特点包括：</p>','996264,996265,996266,996267,996268','A、<p>Velocity</p>
B、<p>Variety</p>
C、<p>Volume</p>
D、<p>Value</p>
E、<p>Veracity</p>',4);
INSERT INTO "QuestionBank" VALUES(306045,'<p>云是一个平台，是一个业务模式，为客户提供 IT 服务，包括 （ ？ ）等部分。</p>','996269,996270,996271','A、<p>管理平台</p>
B、<p>服务提供</p>
C、<p>构建服务</p>',4);
INSERT INTO "QuestionBank" VALUES(306046,'在云计算中，虚拟层主要包括（？）','996274,996275,996276,996277','B、存储虚拟化
C、网络虚拟化
D、桌面虚拟化
E、应用级虚拟化',4);
INSERT INTO "QuestionBank" VALUES(306048,'大数据的数据来源包括：（ &nbsp; &nbsp;）','996283,996284,996285,996286,996287','A、企业和用户的交易数据
B、日常的行为数据
C、机器和传感器创建或生成的数据
D、移动通信设备的移动通信数据
E、从其他系统中迁移的数据',4);
INSERT INTO "QuestionBank" VALUES(306050,'大数据的发展历程大致包括：','996288,996291,996292','A、萌芽期
D、成熟期
E、大规模应用期',4);
INSERT INTO "QuestionBank" VALUES(306051,'信息科技为大数据时代提供的支撑技术包括：','996293,996294,996295','A、存储技术
B、微电子技术
C、通信技术',4);
INSERT INTO "QuestionBank" VALUES(306794,'1. 在Linux中，哪个命令用于创建目录？','998190','C、mkdir;',3);
INSERT INTO "QuestionBank" VALUES(306795,'2. Linux中，哪个命令用于查看文件内容？','998192','A、cat',3);
INSERT INTO "QuestionBank" VALUES(306796,'3. 哪个命令用于在Linux中列出所有正在运行的进程？','998196','A、ps',3);
INSERT INTO "QuestionBank" VALUES(306797,'4. 在Linux中，如何重启系统？','998200,998202,998203','A、reboot
C、shutdown -r now
D、init 6',4);
INSERT INTO "QuestionBank" VALUES(306798,'5. 在Linux中，哪个命令用于列出当前工作目录下的文件和目录？','998204','A、ls',3);
INSERT INTO "QuestionBank" VALUES(306799,'6. 在Linux中，哪个命令用于复制文件？','998210','C、cp',3);
INSERT INTO "QuestionBank" VALUES(306800,'7. 在Linux中，哪个命令用于移动文件或目录？','998212','A、mv',3);
INSERT INTO "QuestionBank" VALUES(306801,'8. 在Linux中，哪个命令用于删除文件或目录？','998216','A、rm',3);
INSERT INTO "QuestionBank" VALUES(306802,'9. 在Linux中，哪个命令用于压缩文件或目录？','998220,998221,998222,998223','A、tar
B、zip
C、gzip
D、bzip2',4);
INSERT INTO "QuestionBank" VALUES(306803,'10. 在Linux中，哪个命令用于解压缩文件或目录？','998224,998225,998226,998227','A、tar &nbsp;
B、unzip &nbsp;
C、gunzip &nbsp;
D、bunzip2',4);
INSERT INTO "QuestionBank" VALUES(306804,'11. 在Linux中，哪个命令用于查看文件的权限？','998231','D、ls -l',3);
INSERT INTO "QuestionBank" VALUES(306805,'12. 在Linux中，哪个命令用于改变文件的权限？','998233','B、chmod &nbsp;',3);
INSERT INTO "QuestionBank" VALUES(306806,'13. 在Linux中，哪个命令用于改变文件的所有者？','998238','C、chown &nbsp;',3);
INSERT INTO "QuestionBank" VALUES(306807,'14. 在ubuntu Linux中，哪个命令用于安装软件包？','998240','A、apt-get &nbsp;',3);
INSERT INTO "QuestionBank" VALUES(306808,'14. 在centos Linux中，哪个命令用于安装软件包？','998245','B、yum &nbsp;',3);
INSERT INTO "QuestionBank" VALUES(306809,'15. 在ubuntu Linux中，哪个命令用于卸载软件包？','998248','A、apt-get remove &nbsp;',3);
INSERT INTO "QuestionBank" VALUES(306810,'16. 在Linux中，哪个命令用于查找文件？','998253','B、locate &nbsp;',3);
INSERT INTO "QuestionBank" VALUES(306811,'17. 在Linux中，哪个命令用于显示网络接口的配置信息？','998259','D、ifconfig',3);
INSERT INTO "QuestionBank" VALUES(306812,'18. 在Linux中，哪个命令用于连接到远程主机，实现交互命令操作？','998260,998261','A、ssh &nbsp;
B、telnet &nbsp;',4);
INSERT INTO "QuestionBank" VALUES(306813,'19. 在Linux中，哪个命令可以直接实现将一个文件的内容追加到另外一个文件中？','998265','B、cat &nbsp;',3);
INSERT INTO "QuestionBank" VALUES(306814,'在Linux中，哪些命令可接实现在命令行中实现将屏幕输入内容直接追加到另外一个文件中？','998268,998270','A、echo &nbsp;
C、vi &nbsp;',4);
INSERT INTO "QuestionBank" VALUES(306815,'20. 在Linux中，哪个命令用于打印当前时间和日期？','998272','A、date &nbsp;',3);
INSERT INTO "QuestionBank" VALUES(306816,'21. 如何查看当前目录下所有文件和子目录的大小？','998277','B、du -sh * &nbsp;',3);
INSERT INTO "QuestionBank" VALUES(306817,'1. 如何在Linux中安装软件包(ubuntu/centos)？','998282','C、Both A and B',3);
INSERT INTO "QuestionBank" VALUES(306818,'2. 如何查看Linux系统的内存使用情况？','998286','D、free',3);
INSERT INTO "QuestionBank" VALUES(306819,'1. 哪个命令可以列出当前用户所属的组？','998290','D、groups',3);
INSERT INTO "QuestionBank" VALUES(306820,'2. 如何从一个远程服务器下载文件到本地计算机？','998293','C、scp remote_file local_directory',3);
INSERT INTO "QuestionBank" VALUES(306821,'3. 如何进入当前用户的家(home)目录？','998295,998297,998298','A、cd
C、cd ~/
D、cd ~',4);
INSERT INTO "QuestionBank" VALUES(306822,'4. 如何在Linux系统上创建一个新的文件夹？','998300','B、touch [folder-name]',3);
INSERT INTO "QuestionBank" VALUES(306823,'5. 在Linux系统上，如何将一个目录及其所有内容复制到另一个目录？','998306','D、cp -r /source/directory destination/directory',3);
INSERT INTO "QuestionBank" VALUES(306824,'6. 如何显示Linux系统的IP地址？','998307','A、ifconfig',3);
INSERT INTO "QuestionBank" VALUES(306825,'7. 如何关闭现有的Linux系统(不重启)？','998314','D、initi 0',3);
INSERT INTO "QuestionBank" VALUES(306826,'8. 如何将当前目录下所有的.txt文件复制到/home/user目录下？','998315','A、cp *.txt /home/user',3);
INSERT INTO "QuestionBank" VALUES(306827,'9. 如何在Linux系统上安装更新(ubuntu/centos)？','998319','B、yum update',3);
INSERT INTO "QuestionBank" VALUES(306828,'10. 如何向Linux系统添加新用户？','998323','C、Both A and B',3);
INSERT INTO "QuestionBank" VALUES(306829,'11. 如何列出Linux系统上所有安装的软件包(ubuntu/centos)？','998324,998325','A、dpkg --list &nbsp;
B、rpm -qa &nbsp;',4);
INSERT INTO "QuestionBank" VALUES(306830,'12. 如何查看Linux系统上的CPU信息？','998329','B、cat /proc/cpuinfo &nbsp;',3);
INSERT INTO "QuestionBank" VALUES(306831,'13. 如何在Linux系统上压缩文件或文件夹？','998332,998333,998334','A、tar -czvf [archive-name.tar.gz] [source-directory] &nbsp;
B、gzip [file-name] &nbsp;
C、zip [archive-name.zip] [source-directory]',4);
INSERT INTO "QuestionBank" VALUES(306832,'14. 如何从Linux系统中删除一个文件？','998335','A、rm [file-name] &nbsp;',3);
INSERT INTO "QuestionBank" VALUES(306833,'15. 如何查看Linux系统上的磁盘空间使用情况？','998341','C、du',3);
INSERT INTO "QuestionBank" VALUES(306834,'<p>16. 如何在Linux系统上编辑文件？</p>','998343,998344,998345','A、<p>nano [file-name] &nbsp;</p>
B、<p>vim [file-name] &nbsp;</p>
C、<p>ed</p>',4);
INSERT INTO "QuestionBank" VALUES(306835,'17. 如何在Linux系统上打印当前工作目录的完整路径？','998348','B、pwd &nbsp;',3);
INSERT INTO "QuestionBank" VALUES(306836,'1. 在Linux系统中，哪个命令可以列出当前目录下的所有文件和文件夹？','998351','A、ls',3);
INSERT INTO "QuestionBank" VALUES(306837,'2. 在Linux系统中，如何创建一个新的空白文件？','998356','B、touch',3);
INSERT INTO "QuestionBank" VALUES(306838,'3. 在Linux系统中，使用哪个命令可以将文件从一个目录复制到另一个目录？','998360','B、cp',3);
INSERT INTO "QuestionBank" VALUES(306839,'4. 在Linux系统中，如何在终端中查看一个文本文件的内容？','998364','B、cat',3);
INSERT INTO "QuestionBank" VALUES(306840,'5. 在Linux系统中，如何彻底删除一个文件，不可恢复？','998370','D、rm',3);
INSERT INTO "QuestionBank" VALUES(306841,'1. 在命令行中，如何创建一个名为 &quot;myfolder&quot; 的文件夹？','998371','A、`mkdir myfolder`',3);
INSERT INTO "QuestionBank" VALUES(306842,'2. 如何在Linux中列出当前目录下所有文件和文件夹的详细信息？','998377','C、`ls -la`',3);
INSERT INTO "QuestionBank" VALUES(306843,'3. 如何将一个名为 &quot;file.txt&quot; 的文件复制到名为 &quot;backup&quot; 的文件夹中？','998381','C、`cp file.txt backup/`',3);
INSERT INTO "QuestionBank" VALUES(306844,'4. 如何查看运行中的进程列表(信息包括：进程编号、用户、对应的程序、开启时间等)？','998383','A、`ps`',3);
INSERT INTO "QuestionBank" VALUES(306845,'5. 如何将一个名为 &quot;example.tar.gz&quot; 的归档文件解压缩到当前目录下？','998388','B、`tar -zxvf example.tar.gz`',3);
INSERT INTO "QuestionBank" VALUES(306846,'4. 如何查看系统资源统计信息(总体及各个用户的cpu/mem/...)？','998392','B、`top`',3);
INSERT INTO "QuestionBank" VALUES(306847,'如何看待ls la获取的某一个文件demo的第1栏的信息为：-rw-rw-r--,下列说法正确的包括：','998395,998397,998398','A、该用户可以读取demo的内容
C、该用户可以修改demo的内容
D、该用户同组的其它用户也可以修改demo的内容',4);
INSERT INTO "QuestionBank" VALUES(306848,'Docker中的“镜像”（image）指的是什么？','998401','C、一个可重复生成的文件，包含了运行应用程序所需的所有文件和配置信息',3);
INSERT INTO "QuestionBank" VALUES(306849,'在Docker中，容器的作用是什么？','998405','C、&nbsp; &nbsp;执行Docker镜像中的应用程序',3);
INSERT INTO "QuestionBank" VALUES(306850,'在Docker中，如何创建一个新的容器？','998409','A、docker run',3);
INSERT INTO "QuestionBank" VALUES(306851,'在Docker中，如何列出所有正在运行的容器？','998413','A、docker ps',3);
INSERT INTO "QuestionBank" VALUES(306852,'在Docker中，如何停止一个正在运行的容器？','998420','D、docker stop',3);
INSERT INTO "QuestionBank" VALUES(306853,'在Docker中，如何删除一个容器？','998423','C、&nbsp; &nbsp;docker rm',3);
INSERT INTO "QuestionBank" VALUES(306854,'在Docker中，如何列出所有可用的镜像？','998426','B、&nbsp; &nbsp;docker images',3);
INSERT INTO "QuestionBank" VALUES(306855,'在Docker中，如何从Docker Hub下载一个镜像？','998430','B、&nbsp; &nbsp;docker pull',3);
INSERT INTO "QuestionBank" VALUES(306856,'在Docker中，如何将一个本地镜像推送到Docker Hub？','998433','A、docker push',3);
INSERT INTO "QuestionBank" VALUES(306857,'在Docker中，如何查看一个容器的日志输出？','998437','A、docker logs',3);
INSERT INTO "QuestionBank" VALUES(306858,'在Docker中，如何向容器内部传递环境变量？','998442','B、使用命令行参数-e',3);
INSERT INTO "QuestionBank" VALUES(306859,'在Docker中，如何在已经运行的容器内部执行命令？','998446,998447','B、docker exec
C、docker attach',4);
INSERT INTO "QuestionBank" VALUES(306860,'在Docker中，如何为容器设置端口映射？','998450','B、使用命令行参数-p',3);
INSERT INTO "QuestionBank" VALUES(306861,'在Docker中，如何为容器设置卷挂载？','998453','A、使用命令行参数-v',3);
INSERT INTO "QuestionBank" VALUES(306862,'在Docker中，如何从一个容器中复制文件到本地主机？<br> &nbsp; &nbsp;<br><br>答案：A','998458','B、docker cp',3);
INSERT INTO "QuestionBank" VALUES(306863,'在Docker中，如何从本地主机复制文件到一个容器？','998461','A、docker cp',3);
INSERT INTO "QuestionBank" VALUES(306864,'在Docker中，如何获取容器的元数据(当前容器的配置/资源等信息)？','998467','C、docker inspect',3);
INSERT INTO "QuestionBank" VALUES(306865,'如果想在本地保存一个运行中的容器为新的镜像(image),则使用的命令为：','998472','D、docker commit',3);
INSERT INTO "QuestionBank" VALUES(306866,'如果想在本地保存一个运行中的容器为新的快照,则使用的命令为：','998474','B、docker export',3);
INSERT INTO "QuestionBank" VALUES(306867,'如果想在本地的镜像(image)另存为一个文件(tar),则使用的命令为：','998477','A、docker save',3);
INSERT INTO "QuestionBank" VALUES(306901,'HDFS是什么？','998525','C、C. 一种数据库管理系统',3);
INSERT INTO "QuestionBank" VALUES(306902,'HDFS最初是由哪个公司支持研发的？','998529','C、C. Yahoo!',3);
INSERT INTO "QuestionBank" VALUES(306904,'HDFS使用哪种复制策略来提高可靠性？','998536','B、B. 多副本冗余',3);
INSERT INTO "QuestionBank" VALUES(306905,'HDFS中的NameNode是什么？','998541','C、C. 管理文件系统命名空间的节点',3);
INSERT INTO "QuestionBank" VALUES(306906,'HDFS中的DataNode是什么？','998543','A、A. 存储数据块的节点',3);
INSERT INTO "QuestionBank" VALUES(306907,'在HDFS中，数据是如何被组织和管理的？','998548','B、B. 基于目录结构',3);
INSERT INTO "QuestionBank" VALUES(306908,'HDFS支持哪些操作？','998551','A、A. 创建、读取、更新和删除文件',3);
INSERT INTO "QuestionBank" VALUES(306909,'HDFS中，clients和DataNode之间通过什么协议进行通信？','998557','C、C. RPC &nbsp;',3);
INSERT INTO "QuestionBank" VALUES(306910,'HDFS中，当一个DataNode失效时会发生什么？','998560','B、B. NameNode会指示相关datanode上针对相关块进行块复制',3);
INSERT INTO "QuestionBank" VALUES(306911,'HDFS支持哪种类型的数据访问？','998564','B、B. 顺序读写',3);
INSERT INTO "QuestionBank" VALUES(306912,'HDFS中，所有的文件都被分成多个块。这些块的大小可以配置吗？','998568','B、B. 不是的',3);
INSERT INTO "QuestionBank" VALUES(306913,'在HDFS中，如果一个文件太小而无法填满一个块，会发生什么？','998573','C、C. 文件被存储在单独的块中',3);
INSERT INTO "QuestionBank" VALUES(306914,'在HDFS中，如何查找文件或目录？','998576','B、B. 通过路径名',3);
INSERT INTO "QuestionBank" VALUES(306916,'HDFS的主要用途是什么？','998583','A、A. 存储和处理大规模数据集',3);
INSERT INTO "QuestionBank" VALUES(306917,'HDFS的文件目录结构之类的信息存储在哪里？','998586','A、A. NameNode',3);
INSERT INTO "QuestionBank" VALUES(306918,'HDFS的数据存储在哪里？','998590','B、B. DataNode',3);
INSERT INTO "QuestionBank" VALUES(306919,'HDFS的副本数量可以通过哪个参数进行配置？','998592','A、A. dfs.replication',3);
INSERT INTO "QuestionBank" VALUES(306920,'在HDFS中，数据块的复制是如何实现的？','998596','B、B. 使用异步复制',3);
INSERT INTO "QuestionBank" VALUES(306921,'Hadoop的MapReduce框架是如何与HDFS集成的？','998598','A、A. MapReduce框架直接读写HDFS数据',3);
INSERT INTO "QuestionBank" VALUES(306922,'HDFS可以通过哪些协议进行访问？','998601,998603','A、A. HTTP
C、C. HFTP',4);
INSERT INTO "QuestionBank" VALUES(306923,'Hadoop的安全性是如何实现的？','998604,998605','A、A. 使用Kerberos认证
B、B. 使用SSL加密',4);
INSERT INTO "QuestionBank" VALUES(306924,'在HDFS中，如何处理数据损坏或丢失？ A','998609','C、C. 使用数据块复制',3);
INSERT INTO "QuestionBank" VALUES(306925,'HDFS支持哪些文件操作？','998610,998611,998612','A、A. 读取
B、B. 写入
C、C. 删除',4);
INSERT INTO "QuestionBank" VALUES(306928,'HDFS如何保持高可用性？','998619','A、A. 使用主备模式',3);
INSERT INTO "QuestionBank" VALUES(306929,'哪里会有定期的HDFS的元数据备份？','998625','C、C. SecondaryNameNode',3);
INSERT INTO "QuestionBank" VALUES(306931,'<p>HDFS的数据完整性是如何保证的？</p>','998629','A、<p>A. 使用哈希校验和</p>',3);
INSERT INTO "QuestionBank" VALUES(306932,'HDFS的数据访问权限是如何实现的？','998633','B、B. 使用用户和组权限',3);
INSERT INTO "QuestionBank" VALUES(306933,'HDFS的快照功能是用来做什么的？','998637','C、C. 记录历史状态',3);
INSERT INTO "QuestionBank" VALUES(306934,'HDFS NameNode 的作用是什么？','998640,998641','B、B. 存储文件的元数据
C、C. 处理客户端请求',4);
INSERT INTO "QuestionBank" VALUES(306935,'HDFS 中的一个文件可以被拆分成多少个 Block？','998645','C、C. 取决于文件大小',3);
INSERT INTO "QuestionBank" VALUES(306936,'HDFS 中的 Block 是如何复制的？','998648','B、B. 复制到同一机架内的 DataNode 上',3);
INSERT INTO "QuestionBank" VALUES(306937,'在 HDFS 中，Block 的复制会影响什么？','998652','B、B. 读写性能',3);
INSERT INTO "QuestionBank" VALUES(306938,'HDFS 支持哪些文件操作？','998655','A、A. 创建、读取、更新、删除',3);
INSERT INTO "QuestionBank" VALUES(306939,'<p>在 HDFS 中，客户端与 NameNode 和 DataNode 之间的通讯采用哪种协议？</p>','998660','B、<p>B. HTTP</p>',3);
INSERT INTO "QuestionBank" VALUES(306940,'在 HDFS 中，如果一个 DataNode 宕机，会发生什么？','998664','B、B. 文件恢复',3);
INSERT INTO "QuestionBank" VALUES(306941,'HDFS 中的 fsimage 文件是什么？','998668','B、B. NameNode 存储的元数据持久化',3);
INSERT INTO "QuestionBank" VALUES(306942,'HDFS 中的 editlog 文件是什么？','998673','C、C. 记录元数据变更记录信息',3);
INSERT INTO "QuestionBank" VALUES(306943,'HDFS中的NameNode负责哪些任务？（选择所有正确答案）','998675,998678','A、a) 管理文件系统命名空间
D、d) 协调DataNode之间的数据复制',4);
INSERT INTO "QuestionBank" VALUES(306944,'HDFS中的Secondary NameNode负责哪些任务？（选择所有正确答案）','998680,998681','B、b) 定期合并NameNode的编辑日志和内存镜像
C、c) 存储HDFS集群元数据备份',4);
INSERT INTO "QuestionBank" VALUES(306945,'HDFS中的DataNode负责哪些任务？（选择所有正确答案）','998684,998686','B、b) 存储文件的实际数据块
D、d) 维护副本数据要求的数据存储节点之间的数据复制',4);
INSERT INTO "QuestionBank" VALUES(306946,'在HDFS中，客户端在什么时候与NameNode通信？','998687,998688','A、a) 当客户端想要读取文件时
B、b) 当客户端想要写入文件时',4);
INSERT INTO "QuestionBank" VALUES(306947,'在HDFS中，默认情况下，正常的hdfs集群中副本是如何管理的？','998693','C、c) 每个数据块有三个副本',3);
INSERT INTO "QuestionBank" VALUES(306948,'<p>在HDFS中，块复制是如何工作的？</p>','998698','D、<p>d) DataNode向NameNode发送请求以创建新副本</p>',3);
INSERT INTO "QuestionBank" VALUES(306949,'在HDFS中，当一个DataNode崩溃时会发生什么？','998700','B、b) 该DataNode存储的所有数据将被复制到其他DataNode c) 该DataNode存储的所有数据将被复制到Secondary NameNode',3);
INSERT INTO "QuestionBank" VALUES(306950,'在HDFS中，当一个NameNode崩溃时会发生什么？','998705','D、d) 需要手动重新启动NameNode',3);
INSERT INTO "QuestionBank" VALUES(306951,'在HDFS中，可以使用哪些命令与文件系统交互？（选择所有正确答案）','998706,998707,998708','A、a) ls
B、b) mkdir
C、c) rm',4);
INSERT INTO "QuestionBank" VALUES(306952,'在HDFS中，如何查看文件的副本数？','998710','A、a) 使用“hadoop fs -getrep”命令',3);
INSERT INTO "QuestionBank" VALUES(306953,'在HDFS中，如何更改文件的副本数？','998714','A、a) 使用“hadoop fs -setrep”命令',3);
INSERT INTO "QuestionBank" VALUES(306954,'在HDFS中，如何查看当前连接到集群的客户端？','998718','A、a) 使用“hadoop dfsadmin -report”命令',3);
INSERT INTO "QuestionBank" VALUES(306955,'在HDFS中，如何安全地关闭集群？','998722','A、a) 在NameNode节点上执行“hadoop dfsadmin -shutdown”命令',3);
INSERT INTO "QuestionBank" VALUES(306956,'在HDFS中，如何进行备份和恢复？','998727','B、b) 使用“hadoop distcp”命令',3);
INSERT INTO "QuestionBank" VALUES(306957,'在HDFS中，如何限制用户访问某些目录？','998730','A、a) 使用ACL（访问控制列表）',3);
INSERT INTO "QuestionBank" VALUES(306958,'在HDFS中，如何限制用户对某些文件的访问？','998734','A、a) 使用ACL（访问控制列表）',3);
INSERT INTO "QuestionBank" VALUES(306959,'HDFS支持哪些数据处理工具？（选择所有正确答案）','998738,998739','A、a) Apache Pig
B、b) Apache Hive',4);
INSERT INTO "QuestionBank" VALUES(306960,'在HDFS中，如何查看文件占用的空间大小？','998742','A、a) 使用“hadoop fs -du”命令',3);
INSERT INTO "QuestionBank" VALUES(306961,'在HDFS中，如何将本地文件上传到集群中？','998745,998746','A、a) 使用“hadoop fs -put”命令
B、b) 使用“hadoop fs -get”命令',4);
INSERT INTO "QuestionBank" VALUES(308487,'<p>NoSQL通常理解为：</p>','1002835,1002833,1002834','A、<p>Not SQL</p>
C、<p>Non-SQL</p>
B、<p>Not Only SQL</p>',4);
INSERT INTO "QuestionBank" VALUES(308488,'<p>常见的NoSQL数据库类型包括：</p>','1002842,1002841,1002840,1002839,1002838','A、<p>Key-value store</p>
D、<p>Graph store</p>
C、<p>Wide-column store</p>
B、<p>Document store</p>
E、<p>In-memory store</p>',4);
INSERT INTO "QuestionBank" VALUES(308489,'<p>CAP理论中的C、A、P 对应是指：</p>','1002844,1002843,1002847','E、<p><span>partition tolerance</span></p>
B、<p><span>consistency</span></p>
A、<p><span>availability</span></p>',4);
INSERT INTO "QuestionBank" VALUES(308490,'<p>关于Redis，以下说法正确的是：</p>','1002849,1002851,1002850','C、<p>高可用性</p>
B、<p>易扩展</p>
D、<p>内存中数据存储</p>',4);
INSERT INTO "QuestionBank" VALUES(308491,'<p>Redis 主要是基于 （&nbsp; ）编程语言开发</p>','1002854','B、<p>C</p>',3);
INSERT INTO "QuestionBank" VALUES(308492,'<p>可用与 redis 服务进行交互的命令是（不考虑具体路径）：</p>','1002858','B、<p>redis-cli</p>',3);
INSERT INTO "QuestionBank" VALUES(308493,'<p>Redis 6.+ 常用的数据类型包括：</p>','1002865,1002864,1002861,1002862','D、<p>Geospatial</p>
E、<p>Hash</p>
B、<p>List</p>
A、<p>Set</p>',4);
INSERT INTO "QuestionBank" VALUES(308744,'YARN是什么？','1003600','A、A. Yet Another Resource Negotiator',3);
INSERT INTO "QuestionBank" VALUES(308745,'YARN架构中的主要节点？','1003604,1003605','A、A. Resource manager
B、B.NodeManager &nbsp;',4);
INSERT INTO "QuestionBank" VALUES(308746,'YARN的目标是什么？','1003608','A、A. 充分合理利用计算(硬件)资源',3);
INSERT INTO "QuestionBank" VALUES(308747,'YARN的资源管理器负责什么？','1003612,1003613','A、A. 接受作业提交请求
B、B. 分配资源给应用程序',4);
INSERT INTO "QuestionBank" VALUES(308748,'YARN应用程序管理器负责什么？','1003617','B、B. 协调应用程序的执行',3);
INSERT INTO "QuestionBank" VALUES(308749,'YARN支持哪些类型的应用程序？','1003623','D、D. 所有上述应用程序类型',3);
INSERT INTO "QuestionBank" VALUES(308750,'YARN如何处理多租户环境中的资源管理？','1003625','B、B. 根据需要分配资源给每个用户',3);
INSERT INTO "QuestionBank" VALUES(308751,'在YARN中，计算(数据处理)节点可以是什么类型的机器？','1003631','D、D. 所有上述类型的机器',3);
INSERT INTO "QuestionBank" VALUES(308752,'YARN支持哪些资源调度器？','1003635','D、D. 所有上述调度器',3);
INSERT INTO "QuestionBank" VALUES(308753,'MapReduce具体任务(task)由哪个YARN组件进行调度？','1003638','C、C. ApplicationMaster',3);
ANALYZE "sqlite_master";
INSERT INTO "sqlite_stat1" VALUES('QuestionBank','quiz_id','790 1');
CREATE UNIQUE INDEX "quiz_id"

ON "QuestionBank" (

  "quiz_id"

);
COMMIT;
