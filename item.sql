SET NAMES UTF8;
DROP DATABASE IF EXISTS phone;
CREATE DATABASE phone CHARSET = UTF8;
USE phone;
-- DROP TABLE IF EXISTS floor_article;
CREATE TABLE floor_seiper(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  filenam VARCHAR (50) UNIQUE
);
INSERT INTO floor_seiper
VALUES(1, '18_youflower_m.jpg');
INSERT INTO floor_seiper (fid, filenam)
VALUES(2, '20_zhongqiu_banner_m.jpg');
INSERT INTO floor_seiper (fid, filenam)
VALUES(3, '19_birthday_banner_m.jpg');
INSERT INTO floor_seiper (fid, filenam)
VALUES(4, '17_banner_tc_m.jpg');

CREATE TABLE floor_text (
    tid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(10) NOT NULL
);
INSERT INTO floor_text (tid, title)
VALUES(1, '认证龙头企业');
INSERT INTO floor_text (tid, title)
VALUES(2, '15年品牌');
INSERT INTO floor_text (tid, title)
VALUES(3, '3小时送达');
CREATE TABLE floor_procate(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR (50) NOT NULL,
    title VARCHAR (5) NOT NULL UNIQUE
  );
INSERT INTO floor_procate (pid, img, title) VALUE(1, 'm_home_category_flower.png', '鲜花');
INSERT INTO floor_procate (pid, img, title) VALUE(2, 'm_home_category_ppf.png', '永生花');
INSERT INTO floor_procate (pid, img, title) VALUE(3, 'm_home_category_cake.png', '蛋糕');
INSERT INTO floor_procate (pid, img, title) VALUE(4, 'm_home_category_gift.png', '礼品');
INSERT INTO floor_procate (pid, img, title) VALUE(5, 'm_home_category_group2.png', '企业团购');

CREATE TABLE floor_selectd(
  id INT PRIMARY KEY auto_increment,
  imgpath VARCHAR(50) NOT NULL,
  title VARCHAR(10),
  flotype INT
);
INSERT INTO floor_selectd(id,imgpath,title,flotype) 
VALUES(1,'m_home_use_lover.png','送恋人',1);
INSERT INTO floor_selectd(id,imgpath,title,flotype) 
VALUES(2,'m_home_use_elder.png','送长辈',1);
INSERT INTO floor_selectd(id,imgpath,title,flotype) 
VALUES(3,'m_home_use_friends.png','送朋友',1);
INSERT INTO floor_selectd(id,imgpath,title,flotype) 
VALUES(4,'m_home_use_birthday2.png','生日祝福',2);
INSERT INTO floor_selectd(id,imgpath,title,flotype) 
VALUES(5,'m_home_use_profess2.png','表白求婚',2);
INSERT INTO floor_selectd(id,imgpath,title,flotype) 
VALUES(6,'m_home_use_business2.png','开业商务',2);
INSERT INTO floor_selectd(id,imgpath,title,flotype) 
VALUES(7,'m_home_use_anniversary2.png','周年纪念',2);
INSERT INTO floor_selectd(id,imgpath,title,flotype) 
VALUES(8,'m_home_ranklist2.png','热销榜',3);
INSERT INTO floor_selectd(id,imgpath,title,flotype) 
VALUES(9,'m_home_special2.png','特价好区',3);
INSERT INTO floor_selectd(id,imgpath,title,flotype) 
VALUES(10,'xinpinlaixi.jpg','新品来袭',4);
INSERT INTO floor_selectd(id,imgpath,title,flotype) 
VALUES(11,'pinweizhixuan.jpg','品味之选',4);
INSERT INTO floor_selectd(id,imgpath,title,flotype) 
VALUES(12,'shejishizhenxuan.jpg','设计师臻选',4);


CREATE TABLE floor_details(
  did INT PRIMARY KEY auto_increment,
  pathname VARCHAR(50) NOT NULL,
  title VARCHAR(10) UNIQUE,
  intro VARCHAR(60) NOT NULL,
  badge VARCHAR(10) UNIQUE,
  subhead VARCHAR(50),
  price INT,
  discount INT,
  soldout FLOAT 
);

INSERT INTO floor_details
VALUES(1,'9010966.jpg_220x240.jpg','一往情深','精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎','年销售冠军','经典爆款，年销售冠军！',315,249,12.8);
INSERT INTO floor_details
VALUES(2,'9010966.jpg_220x240.jpg','你是唯一','精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎','11枝热销款','经典爆款，年销售冠军！',315,249,12.8);
INSERT INTO floor_details
VALUES(3,'9010966.jpg_220x240.jpg','不变的承诺','精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎','经典99枝','经典爆款，年销售冠军！',315,249,12.8);
INSERT INTO floor_details
VALUES(4,'9010966.jpg_220x240.jpg','Best for You','精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎','11枝粉色系列','经典爆款，年销售冠军！',315,249,12.8);
INSERT INTO floor_details
VALUES(5,'9010966.jpg_220x240.jpg','韩式系列/亲爱的你','精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎','全新韩式系列','经典爆款，年销售冠军！',315,249,12.8);
INSERT INTO floor_details
VALUES(6,'9010966.jpg_220x240.jpg','忘情巴黎','精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎','畅销爆款','经典爆款，年销售冠军！',315,249,12.8);
