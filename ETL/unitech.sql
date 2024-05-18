CREATE TABLE professor (
    id_professor BIGINT PRIMARY KEY,
    series_lecionadas VARCHAR(2),
    nome VARCHAR(64)
);

CREATE TABLE disciplina (
    id_disciplina BIGINT PRIMARY KEY,
    nome VARCHAR(64)
);

CREATE TABLE leciona (
    id_professor BIGINT,
    id_disciplina BIGINT,
    PRIMARY KEY (id_professor, id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES professor(id_professor),
    FOREIGN KEY (id_disciplina) REFERENCES disciplina(id_disciplina)
);

CREATE TABLE turma (
    id_turma BIGINT PRIMARY KEY,
    nome_turma VARCHAR(16),
    serie INT,
    id_professor BIGINT,
    FOREIGN KEY (id_professor) REFERENCES professor(id_professor)
);

CREATE TABLE aluno (
    id_aluno BIGINT PRIMARY KEY,
    sexo VARCHAR(16),
    idade INT,
    serie INT,
    id_turma BIGINT,
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

CREATE TABLE cursa (
    id_turma BIGINT,
    id_disciplina BIGINT,
    PRIMARY KEY (id_turma, id_disciplina),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma),
    FOREIGN KEY (id_disciplina) REFERENCES disciplina(id_disciplina)
);

CREATE TABLE questao (
    id_questao BIGINT PRIMARY KEY,
    materia VARCHAR(64),
    data_questao_gerada DATE,
    data_resposta_exibida DATE,
    resposta_correta VARCHAR(128),
    quantidade_tentativas INT,
    nivel_dificuldade VARCHAR(16),
    id_disciplina BIGINT,
    FOREIGN KEY (id_disciplina) REFERENCES disciplina(id_disciplina)
);

CREATE TABLE responde (
    id_aluno BIGINT,
    id_questao BIGINT,
    resposta_aluno VARCHAR(128),
    resultado VARCHAR(128),
    PRIMARY KEY (id_aluno, id_questao),
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_questao) REFERENCES questao(id_questao)
);

CREATE TABLE possui (
    id_aluno BIGINT,
    id_professor BIGINT,
    PRIMARY KEY (id_aluno, id_professor),
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_professor) REFERENCES professor(id_professor)
);
