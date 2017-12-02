/*
Navicat PGSQL Data Transfer

Source Server         : pgsql-localhost
Source Server Version : 90504
Source Host           : localhost:5432
Source Database       : unisul_progweb_trabalho
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90504
File Encoding         : 65001

Date: 2017-12-02 15:08:23
*/


-- ----------------------------
-- Sequence structure for "public"."acomodacao_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."acomodacao_id_seq";
CREATE SEQUENCE "public"."acomodacao_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 26
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."reserva_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."reserva_id_seq";
CREATE SEQUENCE "public"."reserva_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."usuario_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."usuario_id_seq";
CREATE SEQUENCE "public"."usuario_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;

-- ----------------------------
-- Table structure for "public"."acomodacao"
-- ----------------------------
DROP TABLE "public"."acomodacao";
CREATE TABLE "public"."acomodacao" (
"id" int4 DEFAULT nextval('acomodacao_id_seq'::regclass) NOT NULL,
"titulo" varchar(250),
"endereco" varchar(250),
"cep" varchar(10),
"bairro" varchar(50),
"uf" varchar(2),
"descricao" text,
"numero_pessoas" int4,
"data_inicio" date,
"data_fim" date,
"id_cliente" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of acomodacao
-- ----------------------------
INSERT INTO "public"."acomodacao" VALUES ('1', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '1');
INSERT INTO "public"."acomodacao" VALUES ('2', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '2');
INSERT INTO "public"."acomodacao" VALUES ('3', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '1');
INSERT INTO "public"."acomodacao" VALUES ('4', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '2');
INSERT INTO "public"."acomodacao" VALUES ('5', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '1');
INSERT INTO "public"."acomodacao" VALUES ('6', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '2');
INSERT INTO "public"."acomodacao" VALUES ('7', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '1');
INSERT INTO "public"."acomodacao" VALUES ('8', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '2');
INSERT INTO "public"."acomodacao" VALUES ('9', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '1');
INSERT INTO "public"."acomodacao" VALUES ('10', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '2');
INSERT INTO "public"."acomodacao" VALUES ('11', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '1');
INSERT INTO "public"."acomodacao" VALUES ('12', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '2');
INSERT INTO "public"."acomodacao" VALUES ('13', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '1');
INSERT INTO "public"."acomodacao" VALUES ('14', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '2');
INSERT INTO "public"."acomodacao" VALUES ('15', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '1');
INSERT INTO "public"."acomodacao" VALUES ('16', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '2');
INSERT INTO "public"."acomodacao" VALUES ('17', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '1');
INSERT INTO "public"."acomodacao" VALUES ('18', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '2');
INSERT INTO "public"."acomodacao" VALUES ('19', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '1');
INSERT INTO "public"."acomodacao" VALUES ('20', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '2');
INSERT INTO "public"."acomodacao" VALUES ('21', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '1');
INSERT INTO "public"."acomodacao" VALUES ('22', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '2');
INSERT INTO "public"."acomodacao" VALUES ('23', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '1');
INSERT INTO "public"."acomodacao" VALUES ('24', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '2');
INSERT INTO "public"."acomodacao" VALUES ('25', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '1');
INSERT INTO "public"."acomodacao" VALUES ('26', 'Proin Gravida Nibhvel Lorem Quis Bind Proin Gravida Nibhvel', 'R. Antônio Dib Mussi, 366 - Centro, Florianópolis - SC', '88015-110', 'Centro', 'SC', '<p>
Nulla sollicitudin justo sodales massa laoreet sollicitudin. Aliquam ac nunc a nibh condimentum molestie. Nulla dapibus lorem id ipsum gravida, vitae vulputate lectus dapibus. Donec sed tincidunt nulla. Aliquam in magna sit amet orci mollis euismod quis eu tellus. Fusce rutrum fringilla ipsum. Curabitur ac neque aliquet, vestibulum leo eget, ullamcorper velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</p>
<p>
Nullam ac viverra ex. Nulla vitae nulla lorem. Mauris eget augue ante. Etiam nec dui purus. Sed suscipit, lacus a efficitur blandit, risus risus egestas enim, et ullamcorper tellus ante a eros. Phasellus ullamcorper, nunc quis egestas malesuada, est arcu ullamcorper ex, ac sollicitudin diam massa et massa. Morbi vehicula, metus nec tempus convallis, lacus velit mattis risus, ut rhoncus erat eros ut lorem. Nullam maximus ligula nibh, in feugiat arcu porta at.
</p>', '3', '2017-12-01', '2017-12-03', '2');

-- ----------------------------
-- Table structure for "public"."curso"
-- ----------------------------
DROP TABLE "public"."curso";
CREATE TABLE "public"."curso" (
"id" int4 NOT NULL,
"nome" varchar(96)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of curso
-- ----------------------------
INSERT INTO "public"."curso" VALUES ('1', 'Sistemas de Informação');
INSERT INTO "public"."curso" VALUES ('2', 'Ciência da Computação');
INSERT INTO "public"."curso" VALUES ('3', 'Arquitetura e Urbanismo');
INSERT INTO "public"."curso" VALUES ('4', 'Educação Física');
INSERT INTO "public"."curso" VALUES ('5', 'Design de Moda');
INSERT INTO "public"."curso" VALUES ('6', 'Matemática');
INSERT INTO "public"."curso" VALUES ('7', 'Letras Português');
INSERT INTO "public"."curso" VALUES ('8', 'Matemática Editado');
INSERT INTO "public"."curso" VALUES ('9', 'Análise e Desenvolvimento de Sistemas');

-- ----------------------------
-- Table structure for "public"."reserva"
-- ----------------------------
DROP TABLE "public"."reserva";
CREATE TABLE "public"."reserva" (
"id" int4 DEFAULT nextval('reserva_id_seq'::regclass) NOT NULL,
"data_inicio" date,
"data_fim" date,
"situacao" varchar(1),
"id_usuario" int4,
"id_acomodacao" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of reserva
-- ----------------------------
INSERT INTO "public"."reserva" VALUES ('1', '2017-12-02', '2017-12-03', 'A', '5', '1');
INSERT INTO "public"."reserva" VALUES ('2', '2017-12-02', '2017-12-03', 'A', '2', '2');

-- ----------------------------
-- Table structure for "public"."usuario"
-- ----------------------------
DROP TABLE "public"."usuario";
CREATE TABLE "public"."usuario" (
"id" int4 DEFAULT nextval('usuario_id_seq'::regclass) NOT NULL,
"nome" varchar(100),
"email" varchar(100),
"senha" varchar(100),
"telefone" varchar(100)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO "public"."usuario" VALUES ('1', 'Usuário do site', 'usuario@localhost.com', '123456', '(48) 99999-9999');
INSERT INTO "public"."usuario" VALUES ('2', 'Usuário do site 2', 'usuario@localchost.com', '12346', '(48) 99999-9999');
INSERT INTO "public"."usuario" VALUES ('3', 'Usuário do site 3', 'usuario@localchost.com', '12346', '(48) 99999-9999');
INSERT INTO "public"."usuario" VALUES ('4', 'Usuário do site 4', 'usuario@localchost.com', '12346', '(48) 99999-9999');
INSERT INTO "public"."usuario" VALUES ('5', 'Usuário do site 5', 'usuario@localchost.com', '12346', '(48) 99999-9999');
INSERT INTO "public"."usuario" VALUES ('6', 'Victor', null, null, null);
INSERT INTO "public"."usuario" VALUES ('7', 'Victor', 'teste@teste.com', '123456', '(48) 99999-9999');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."acomodacao_id_seq" OWNED BY "acomodacao"."id";
ALTER SEQUENCE "public"."reserva_id_seq" OWNED BY "reserva"."id";
ALTER SEQUENCE "public"."usuario_id_seq" OWNED BY "usuario"."id";

-- ----------------------------
-- Primary Key structure for table "public"."acomodacao"
-- ----------------------------
ALTER TABLE "public"."acomodacao" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table "public"."reserva"
-- ----------------------------
ALTER TABLE "public"."reserva" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table "public"."usuario"
-- ----------------------------
ALTER TABLE "public"."usuario" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Key structure for table "public"."acomodacao"
-- ----------------------------
ALTER TABLE "public"."acomodacao" ADD FOREIGN KEY ("id_cliente") REFERENCES "public"."usuario" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."reserva"
-- ----------------------------
ALTER TABLE "public"."reserva" ADD FOREIGN KEY ("id_usuario") REFERENCES "public"."usuario" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."reserva" ADD FOREIGN KEY ("id_acomodacao") REFERENCES "public"."acomodacao" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
