
package modelo;

import java.util.Calendar;

public class Ocorrencia {
    private Integer codOcorrencia;
    private String descOcorrencia;
    private Calendar dataOcorrencia;
    private Aluno objAluno = new Aluno();
    private Turma objTurma = new Turma();

    public Integer getCodOcorrencia() {
        return codOcorrencia;
    }

    public void setCodOcorrencia(Integer codOcorrencia) {
        this.codOcorrencia = codOcorrencia;
    }

    public String getDescOcorrencia() {
        return descOcorrencia;
    }

    public void setDescOcorrencia(String descOcorrencia) {
        this.descOcorrencia = descOcorrencia;
    }

    public Calendar getDataOcorrencia() {
        return dataOcorrencia;
    }

    public void setDataOcorrencia(Calendar dataOcorrencia) {
        this.dataOcorrencia = dataOcorrencia;
    }

    public Aluno getObjAluno() {
        return objAluno;
    }

    public void setObjAluno(Aluno objAluno) {
        this.objAluno = objAluno;
    }

    public Turma getObjTurma() {
        return objTurma;
    }

    public void setObjTurma(Turma objTurma) {
        this.objTurma = objTurma;
    }
    
    
    
}
