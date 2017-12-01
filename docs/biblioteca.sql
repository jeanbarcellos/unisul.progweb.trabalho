
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
INSERT INTO "public"."curso" VALUES ('7', 'Letras');
INSERT INTO "public"."curso" VALUES ('8', 'Matemática');
INSERT INTO "public"."curso" VALUES ('9', 'Análise e Desenvolvimento de Sistemas');

