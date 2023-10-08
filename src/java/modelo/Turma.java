
package modelo;

public class Turma {
    private Integer codTurma, numeroSala, quantAlunos, quantMaxAlunos;
    private String mestredeSala;
    private Turno objTurno = new Turno();
    private Setor objSetor = new Setor();

    public Integer getCodTurma() {
        return codTurma;
    }

    public void setCodTurma(Integer codTurma) {
        this.codTurma = codTurma;
    }

    public Integer getNumeroSala() {
        return numeroSala;
    }

    public void setNumeroSala(Integer numeroSala) {
        this.numeroSala = numeroSala;
    }

    public Integer getQuantAlunos() {
        return quantAlunos;
    }

    public void setQuantAlunos(Integer quantAlunos) {
        this.quantAlunos = quantAlunos;
    }

    public Integer getQuantMaxAlunos() {
        return quantMaxAlunos;
    }

    public void setQuantMaxAlunos(Integer quantMaxAlunos) {
        this.quantMaxAlunos = quantMaxAlunos;
    }

    public String getMestredeSala() {
        return mestredeSala;
    }

    public void setMestredeSala(String mestredeSala) {
        this.mestredeSala = mestredeSala;
    }

    public Turno getObjTurno() {
        return objTurno;
    }

    public void setObjTurno(Turno objTurno) {
        this.objTurno = objTurno;
    }

    public Setor getObjSetor() {
        return objSetor;
    }

    public void setObjSetor(Setor objSetor) {
        this.objSetor = objSetor;
    }

    
    
    
    
}
