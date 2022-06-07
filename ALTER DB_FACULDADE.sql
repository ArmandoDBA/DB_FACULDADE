ALTER TABLE departamento
CHANGE nome_departamento nome_departamento INT (4) NOT NULL;

ALTER TABLE telefone_aluno
CHANGE fk_RA fk_RA INT(4) NOT NULL,
CHANGE fk_cod_telefone fk_cod_telefone INT(4) NOT NULL;

ALTER TABLE endereco
CHANGE nome_rua nome_rua CHAR (50) NOT NULL,
CHANGE numero_rua numer_rua INT(4) NOT NULL,
CHANGE complemento complemento CHAR (20) NOT NULL,
CHANGE CEP CEP CHAR(8) NOT NULL;

ALTER TABLE aluno
CHANGE sobrenome sobrenome_aluno CHAR(20);

ALTER TABLE disciplina
CHANGE carga_horaria carga_horaria INTEGER(4) NOT NULL,
CHANGE num_alunos num_alunos INTEGER(4) NOT NULL;

ALTER TABLE curso_disciplina
CHANGE fk_cod_curso fk_cod_curso INT (4) NOT NULL,
CHANGE fk_cod_disciplina fk_cod_disciplina INT (4) NOT NULL;

ALTER TABLE professor
CHANGE nome nome_professor CHAR(20) NOT NULL,
CHANGE sobrenome sobrenome_professor CHAR(50) NOT NULL;

ALTER TABLE historico
CHANGE fk_RA fk_RA INTEGER(4) NOT NULL;

ALTER TABLE disciplina_historico
CHANGE fk_cod_disciplina fk_cod_disciplina INTEGER(4) NOT NULL,
CHANGE fk_cod_historico fk_cod_historico INTEGER(4) NOT NULL;

ALTER TABLE professor_disciplina
CHANGE fk_cod_disciplina fk_cod_disciplina INTEGER(4) NOT NULL,
CHANGE fk_cod_professor fk_cod_professor INTEGER(4) NOT NULL;