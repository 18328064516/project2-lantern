SET NAMES UTF8;
DROP DATABASE IF EXISTS lantern;
CREATE DATABASE lantern CHARSET=UTF8;
USE lantern;

--全线产品页面

/****兰亭全线产品页面轮播广告商品****/
CREATE TABLE lantern_qxcp_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64)
);

/****兰亭全线产品页面科研实力****/
CREATE TABLE lantern_qxcp_scientific(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  pro VARCHAR(128)
);

/****兰亭全线产品页面轮播广告商品****/
INSERT INTO lantern_qxcp_carousel VALUES
(NULL, 'http://localhost:3303/img/banner/b1.jpg','轮播广告商品1'),
(NULL, 'http://localhost:3303/img/banner/b2.jpg','轮播广告商品2');

/****兰亭全线产品页面科研实力****/
-- INSERT INTO lantern_qxcp_scientific VALUES
-- (NULL, '广东省名牌产品 国家高新技术企业 “FDA”认证 广东省化妆品不良反应监测哨点','1993年成立 已有26年护肤品市场经验 护肤领域的核心科技, 拥有三大发明专利, 核心产品系列：“螺旋藻 产品线”03年诞生至今已 经过6次升级换代','兰亭时刻紧跟最新的 肌肤护理科技，并与诸多大学研究团队的优秀科学家紧密合作。在全球各地广布研究生产实验室，以几十年如一日的匠心打磨每一份产品，务求研发更加理想的护肤品。在兰亭，只有经过长期研发测试，
-- ，并且确保安全有效的产品才能投放市场','国际化实验室 兰亭引进专业化设备 从原料的实验分析 到产品配方的调配实验分析 都以国际实验室标准执行','标准化生产流程 国家药监认证的20000多平方 GMP10万级净化生产车间，清一 色的日本美贺生产设备 全现代化自动生产灌装线以及专业 RO反渗水处理系统 采用高规格的冷链，先进的灭菌工 艺全程生产中料液通过内外全抛光 316L不锈钢管传输，确保全生产 罐装过程 无人为接触、无菌、无 任何污染作业 运用HACCP标准建立来料验收、 灭菌、灯检三个关键控制点');
INSERT INTO lantern_qxcp_scientific VALUES
(NULL, '广东省名牌产品 国家高新技术企业 “FDA”认证 广东省化妆品不良反应监测哨点');
INSERT INTO lantern_qxcp_scientific VALUES
(NULL, '1993年成立 已有26年护肤品市场经验 护肤领域的核心科技, 拥有三大发明专利, 核心产品系列：“螺旋藻 产品线”03年诞生至今已 经过6次升级换代');
INSERT INTO lantern_qxcp_scientific VALUES
(NULL, '兰亭时刻紧跟最新的 肌肤护理科技，并与诸多大学研究团队的优秀科学家紧密合作。在全球各地广布研究生产实验室，以几十年如一日的匠心打磨每一份产品，务求研发更加理想的护肤品。在兰亭，只有经过长期研发测试，只有经过长期研发测试，并且确保安全有效的产品才能投放市场');
INSERT INTO lantern_qxcp_scientific VALUES
(NULL, '国际化实验室 兰亭引进专业化设备 从原料的实验分析 到产品配方的调配实验分析 都以国际实验室标准执行');
INSERT INTO lantern_qxcp_scientific VALUES
(NULL, '标准化生产流程 国家药监认证的20000多平方 GMP10万级净化生产车间，清一 色的日本美贺生产设备 全现代化自动生产灌装线以及专业 RO反渗水处理系统 采用高规格的冷链，先进的灭菌工 艺全程生产中料液通过内外全抛光 316L不锈钢管传输，确保全生产 罐装过程 无人为接触、无菌、无 任何污染作业 运用HACCP标准建立来料验收、 灭菌、灯检三个关键控制点');



--全线产品-->商品列表

/**护肤品**/
CREATE TABLE lantern_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  price DECIMAL(10,2),        #价格
  effect VARCHAR(64),         #功效、内含
  volume VARCHAR(64),         #容量
  ximg  VARCHAR(128)       #商品图片
);

/**护肤品图片**/
CREATE TABLE lantern_laptop_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,              #护肤品编号
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128)            #大图片路径
);

/****兰亭全线产品页面商品****/
CREATE TABLE lantern_qxcp_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  pic VARCHAR(128),
  href VARCHAR(128)
);

/**护肤品列表**/
INSERT INTO lantern_laptop VALUES
(NULL,1,'藻白金美白亮肤套装',518,'白皙矿物水、白皙精华露、水美白精纯露、净白水肌能洁面乳共4件套','无','http://localhost:3303/img/san/zyb/z01.png'),
(NULL,1,'藻白金美白臻萃盈润面膜',168,'汲取古老的螺旋藻精华帮助肌肤美白、补水，为肌肤找回水润细腻的体验，畅想不一样的水润白皙。晶润触感、质地丰润的美白臻萃。盈润面膜在美白的同时释放出大量水分，层层滋润肌肤，为肌肤注入水润力量。','120g','http://localhost:3303/img/san/zyb/z02.png'),
(NULL,1,'水美白精纯露',189,'提亮肤色，使肌肤精致透白，螺旋藻精华能改善肌肤脆弱的保湿屏障，并减轻外在环境的侵害，改善肌肤问题，令肌肤变得滋润光滑。','45g','http://localhost:3303/img/san/zyb/z03.png'),
(NULL,1,'藻白金白皙精华露',179,'富含天然螺旋藻精华成分；兼具护肤霜、隔离霜、粉底液及修饰霜的功能；润色、修饰、保养，一瓶搞定；质地轻薄水润，细腻丝滑，持久不脱妆。富含螺旋藻精华，滋润美肌、供养；改善肌肤干燥、晦暗等，帮助肌肤回复弹性与活力，使肌肤呈现健康润滑、白皙柔滑质感。','100ml','http://localhost:3303/img/san/zyb/z03.png'),
(NULL,1,'藻白金白皙矿物水',179,'富含螺旋藻维他矿物群Spiru-Vita，素有肌肤“生命之水”的美誉，SPA动态补水修护配方，导入式养分渗透技术，多种螺旋藻精华注入肌肤内层；提升恢复能力，改善肌肤光泽与质感，提高肌肤抵抗自由基的能力；持续使用，可长久保持无瑕剔透质感，肌肤由内而外焕发柔嫩、水润年轻态。','128ml','http://localhost:3303/img/san/zyb/z04.png'),
(NULL,1,'藻白金养白水肌能保湿霜',169,'水肌能主动补水型，富含螺旋藻精华成分（勃那特螺旋藻提取物），迅速为缺水肌肤补充足够的水分和营养，同时改善肌肤暗黄状态、美白肤色，使肌肤清新水嫩、净透白皙。','50ml','http://localhost:3303/img/san/zyb/z05.png'),
(NULL,1,'藻白金净白水肌能洁面乳',89,'水肌能清洁型，富含充足的螺旋藻精华，充分深入毛孔带走肌肤油腻污垢，令肌肤白皙润泽，并保持肌肤滋润不紧绷，令洗颜后的肌肤光滑柔','100ml','http://localhost:3303/img/san/zyb/z06.png'),

(NULL,2,'精护臻颜寡肽冻干粉',198,'精华液：多肽营养成分深入滋养肌底，锁水保湿，让肌肤丰盈水润；显亮肤色，醒肤焕颜展现动人水光肌。冻干粉：紧致肌肤、收紧毛孔，减少肌肤的氧化、延迟老化，平滑肌肤皱纹，令肌肤细腻柔嫩，塑现肌肤焕彩活力。','50mg*4+25ml*4','http://localhost:3303/img/san/jhxl/j01.png'),
(NULL,2,'复颜臻纯寡肽精华安瓶',98,'微晶结构传导结合多种植萃精华，沁入肌底密集稳健修护，舒缓肌肤；并强韧肌肤表层；自然保湿补水充盈肌肤，展现水润饱满嫩滑；改善肤质，平滑岁月之纹，让肌肤紧致平滑、年轻弹润，焕发肌肤光彩。','2ml*7','http://localhost:3303/img/san/jhxl/j02.png'),
(NULL,2,'细胞精华迷你套装',168,'细胞精华原液 2.5g  细胞精华冻龄霜 1.8g  细胞精华童颜乳 1.8g  细胞原液幼颜精华水 1.8g  细胞精华青春眼霜 1.8g','无','http://localhost:3303/img/san/jhxl/j03.jpg'),
(NULL,2,'细胞精华原液套装礼盒',1668,'细胞精华原液 12*2.5  细胞精华驻颜冻膜 12*8  细胞精华冻龄霜 3*1.8  细胞精华童颜乳 3*1.8  细胞原液幼颜精华水 3*1.8  细胞精华青春眼霜 3*1.8','无','http://localhost:3303/img/san/jhxl/j04.png'),
(NULL,2,'细胞精华冻龄套装礼盒 五件套',1460,'细胞生物酶洁颜乳*1  细胞精华冻龄霜*1  细胞精华童颜乳*1  细胞原液幼颜精华水*1  细胞精华青春眼霜*1','无','http://localhost:3303/img/san/jhxl/j05.jpg'),
(NULL,2,'细胞精华驻颜冻膜',348,'均衡地为肌肤补充养分和水分，触发肌肤自动调节和修护机制，并有效锁住水分，令肌肤提拉紧致，调理肌肤，改善肌肤质感，增强肌肤肌底活力，更具有保湿润泽、亮肤提色的效果。','6*8','http://localhost:3303/img/san/jhxl/j06.png'),
(NULL,2,'细胞精华原液',468,'修复肌肤，为肌肤补充胶原蛋白和弹力蛋白，改善肌肤弹性，增加肌肤光泽，显现平滑透亮肤质；强健肌肤屏障功能，增强肌肤肌底活力，使肌肤水润、嫩滑富有弹性，温和低敏不刺激。','6*2.5ml','http://localhost:3303/img/san/jhxl/j07.png'),
(NULL,2,'细胞精华逆龄眼霜',468,'富含丰富的细胞提取物、奥氏海藻提取物、水解胶原蛋白的营养肌肤的成分，配方温和，吸收性良好。','30g','http://localhost:3303/img/san/jhxl/j08.png'),
(NULL,2,'细胞精华童颜乳',368,'提升肌肤保水度，补水锁水；强健肌肤自我保护屏障，增强肌肤肌底活力，使肌肤更显健康；有效滋养肌肤，防止皮肤粗糙；添加多种天然提取物，温和低敏不刺激。','50g','http://localhost:3303/img/san/jhxl/j09.png'),
(NULL,2,'细胞精华冻龄霜',368,'长效保湿，形成保湿屏障；较佳的锁水度，让肌肤得到湿润感，低敏天然，不含防腐剂，添加多种天然提取物。温和低敏不刺激，让肌肤无负担。','30g','http://localhost:3303/img/san/jhxl/j10.png'),
(NULL,2,'细胞原液幼颜精华水',368,'提升肌肤保水度，补水锁水；强健肌肤自我保护屏障，增强肌肤肌底活力，使肌肤更显健康；有效滋养肌肤，防止皮肤粗糙；添加多种天然提取物，温和低敏不刺激。','50g','http://localhost:3303/img/san/jhxl/j11.png'),
(NULL,2,'细胞生物酶洁颜乳',238,'分解毛孔内残余皮脂及脏污，温和去角质，直击黯沉区块，调节肌肤色泽，洗净污垢，保养成分直达肌底。添加保湿成分，洗后不紧绷。','80g','http://localhost:3303/img/san/jhxl/j12.png'),

(NULL,3,'螺旋藻美白保湿套装',268,'清爽美白洗面奶  润白新活补水霜  润白补水养颜露  清润透白紧肤水  嫩白弹性精华液','无','http://localhost:3303/img/san/jhb/h1.png'),
(NULL,3,'水感透白BB霜',78,'富含天然螺旋藻精华成分；兼具护肤霜、隔离霜、粉底液及修饰霜的功能；润色、修饰、保养，一瓶搞定；质地轻薄水润，细腻丝滑，持久不脱妆。','45g','http://localhost:3303/img/san/jhb/h2.png'),
(NULL,3,'嫩白弹性精华液',98,'科学配比，清爽质地，营养精华能渗透至肌肤内层，修护肌肤，使其焕发光彩，淡化细纹、提亮肤色，缔造净白剔透肌肤。','45g','http://localhost:3303/img/san/jhb/h3.png'),
(NULL,3,'净白锁水面膜',65,'清洁和净化堆积在肌肤表层的老化物，清透毛孔，提亮肌肤光泽，匀净肤色，打开肌肤吸收水分通道，带来强大的补水与后续营养的吸收，缔造通透、细腻的娇嫩美肌。','25*5','http://localhost:3303/img/san/jhb/h4.png'),
(NULL,3,'清透润白紧肤水',76,'为肌肤补充水分和养分，滋润肌肤，增加肌肤的弹性和紧实感；减缓影响皮肤暗黄的各种因素，提升皮肤滋润度，令肌肤润泽、水嫩、柔滑。','128ml','http://localhost:3303/img/san/jhb/h5.png'),
(NULL,3,'润白补水养颜露',88,'为缺水肌肤补充足够的水分和营养，提高肌肤储水和锁水能力，保持渗透平衡，具有保湿、滋润、嫩肤的特点','100ml','http://localhost:3303/img/san/jhb/h6.png'),
(NULL,3,'润白新活补水霜',78,'滋润营养肌肤，增强肌肤保湿度，并能直接为皮肤补充足够的水分。尤其在秋冬季节，能在皮肤表面形成薄层湿润锁水膜，令肌肤清新润泽，水嫩清新。','50g','http://localhost:3303/img/san/jhb/h7.png'),
(NULL,3,'清爽美白洗面奶',48,'清除皮肤表面及毛孔灰尘、残妆和油脂等不洁物，为皮肤提供充足的养分，具有保湿和清洁皮肤的双重作用，使皮肤清爽、柔润，显现丝一般的光滑。','100ml','http://localhost:3303/img/san/jhb/h8.png');

/**护肤品图片**/
INSERT INTO lantern_laptop_pic VALUES
(NULL, 1, 'http://localhost:3303/img/product/sm/47/11632220.png','http://localhost:3303/img/product/md/47/11632220.png','http://localhost:3303/img/product/lg/47/11632220.png'),
(NULL, 1, 'http://localhost:3303/img/product/sm/47/11632230.png','http://localhost:3303/img/product/md/47/11632230.png','http://localhost:3303/img/product/lg/47/11632230.png'),
(NULL, 2, 'http://localhost:3303/img/product/sm/48/7151124.png','http://localhost:3303/img/product/md/48/7151124.png','http://localhost:3303/img/product/lg/48/7151124.png'),
(NULL, 2, 'http://localhost:3303/img/product/sm/48/7151125.png','http://localhost:3303/img/product/md/48/7151125.png','http://localhost:3303/img/product/lg/48/7151125.png'),
(NULL, 3, 'http://localhost:3303/img/product/sm/49/5066915.png','http://localhost:3303/img/product/md/5066915.png','http://localhost:3303/img/product/lg/49/5066915.png'),
(NULL, 3, 'http://localhost:3303/img/product/sm/49/5066917.png','http://localhost:3303/img/product/md/49/5066917.png','http://localhost:3303/img/product/lg/49/5066917.png');

/****兰亭全线产品页面商品****/
INSERT INTO lantern_qxcp_product VALUES
(NULL, '水美白精纯露', 'http://localhost:3303/img/zaobaijin/z1.png','product_details.html?lid=1'),
(NULL, '臻萃盈润面膜', 'http://localhost:3303/img/zaobaijin/z2.jpg','product_details.html?lid=2'),
(NULL, '水肌能洁面乳', 'http://localhost:3303/img/zaobaijin/z3.png','product_details.html?lid=3'),
(NULL, '水肌能保湿霜', 'http://localhost:3303/img/zaobaijin/z4.png','product_details.html?lid=4'),
(NULL, '美白亮肤套装', 'http://localhost:3303/img/zaobaijin/z5.png','product_details.html?lid=5'),
(NULL, '细胞精华童颜乳', 'http://localhost:3303/img/xibaojinhua/x1.png','product_details.html?lid=6'),
(NULL, '细胞精华驻颜冻膜', 'http://localhost:3303/img/xibaojinhua/x2.png','product_details.html?lid=7'),
(NULL, '细胞精华原液', 'http://localhost:3303/img/xibaojinhua/x3.png','product_details.html?lid=8'),
(NULL, '生物酶洁颜乳', 'http://localhost:3303/img/xibaojinhua/x4.png','product_details.html?lid=9');


-- 全线产品-三大类
CREATE TABLE lantern_qxcpleibie(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  fam_id INT,               #类别编号
  sname VARCHAR(64)       #类别名称 
);

-- 全线产品-三大类
INSERT INTO lantern_qxcpleibie VALUES
(NULL, 1,'藻白金专业版'),
(NULL, 2,'细胞精华系列'),
(NULL, 3,'藻白金精华版');


-- 全线产品-三大类下所有的商品列表
CREATE TABLE lantern_qxcpsan(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  sanid INT,                 #类别编号
  sname VARCHAR(128),        #商品名称
  simg  VARCHAR(128),       #商品图片
  sprice DECIMAL(10,2)       #价格   
);

INSERT INTO lantern_qxcpsan VALUES
(NULL,1 ,'藻白金美白亮肤套装', 'http://localhost:3303/img/san/zyb/z01.png',518),
(NULL,1 ,'藻白金美白臻萃盈润面膜', 'http://localhost:3303/img/san/zyb/z02.png',168),
(NULL,1,'藻白金白皙精华露', 'http://localhost:3303/img/san/zyb/z03.png',189),
(NULL,1,'藻白金白皙矿物水', 'http://localhost:3303/img/san/zyb/z04.png',179),
(NULL,1,'藻白金白皙矿物水', 'http://localhost:3303/img/san/zyb/z05.png',179),
(NULL,1,'藻白金养白水肌能保湿霜', 'http://localhost:3303/img/san/zyb/z06.png',169),
(NULL,1,'藻白金净白水肌能洁面乳', 'http://localhost:3303/img/san/zyb/z07.png',89),

(NULL,2,'精护臻颜寡肽冻干粉', 'http://localhost:3303/img/san/jhxl/j01.png',198),
(NULL,2,'复颜臻纯寡肽精华安瓶', 'http://localhost:3303/img/san/jhxl/j02.png',98),
(NULL,2,'细胞精华迷你套装', 'http://localhost:3303/img/san/jhxl/j03.jpg',168),
(NULL,2,'细胞精华原液套装礼盒', 'http://localhost:3303/img/san/jhxl/j04.png',1668),
(NULL,2,'细胞精华冻龄套装礼盒 五件套', 'http://localhost:3303/img/san/jhxl/j05.jpg',1460),
(NULL,2,'细胞精华驻颜冻膜', 'http://localhost:3303/img/san/jhxl/j06.png',348),
(NULL,2,'细胞精华原液', 'http://localhost:3303/img/san/jhxl/j07.png',468),
(NULL,2,'细胞精华逆龄眼霜','http://localhost:3303/img/san/jhxl/j08.png',468),
(NULL,2,'细胞精华童颜乳', 'http://localhost:3303/img/san/jhxl/j09.png',368),
(NULL,2,'细胞精华冻龄霜', 'http://localhost:3303/img/san/jhxl/j10.png',368),
(NULL,2,'细胞原液幼颜精华水', 'http://localhost:3303/img/san/jhxl/j11.png',368),
(NULL,2, '细胞生物酶洁颜乳','http://localhost:3303/img/san/jhxl/j12.png',238),

(NULL,3,'螺旋藻美白保湿套装', 'http://localhost:3303/img/san/jhb/h1.png',268),
(NULL,3,'水感透白BB霜', 'http://localhost:3303/img/san/jhb/h2.png',78),
(NULL,3,'嫩白弹性精华液', 'http://localhost:3303/img/san/jhb/h3.png',98),
(NULL,3,'净白锁水面膜', 'http://localhost:3303/img/san/jhb/h4.png',65),
(NULL,3,'清透润白紧肤水', 'http://localhost:3303/img/san/jhb/h5.png',76),
(NULL,3,'润白补水养颜露', 'http://localhost:3303/img/san/jhb/h6.png',88),
(NULL,3,'润白新活补水霜', 'http://localhost:3303/img/san/jhb/h7.png',78),
(NULL,3, '清爽美白洗面奶', 'http://localhost:3303/img/san/jhb/h8.png',48);


CREATE TABLE lantern_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  usname VARCHAR(30),     #用户名
  passwd VARCHAR(32)      #用户密码  
);

INSERT INTO lantern_login VALUES
(1,'Richard','abc123abc'),
(2,'Johnny','abc123abc'),
(3,'Martin','abc123abc'),
(4,'Christina','abc123abc'),
(5,'Margaret','abc123abc'),
(6,'Barbara','abc123abc'),
(7,'Diana','abc123abc'),
(8,'Melody','abc123abc'),
(9,'Debbie','abc123abc'),
(10,'Scott','abc123abc'),
(11,'Shelly','abc123abc'),
(12,'Bob','abc123abc'),
(13,'Amanda','abc123abc'),
(14,'George','abc123abc'),
(15,'Benjamin','abc123abc');