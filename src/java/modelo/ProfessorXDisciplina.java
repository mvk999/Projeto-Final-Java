/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

public class ProfessorXDisciplina {
    Integer codProfessorXdisciplina;
    private Prof objProf = new Prof();
    private Disciplina objDisciplina = new Disciplina();

    public Integer getCodProfessorXdisciplina() {
        return codProfessorXdisciplina;
    }

    public void setCodProfessorXdisciplina(Integer codProfessorXdisciplina) {
        this.codProfessorXdisciplina = codProfessorXdisciplina;
    }

    public Prof getObjProf() {
        return objProf;
    }

    public void setObjProf(Prof objProf) {
        this.objProf = objProf;
    }

    public Disciplina getObjDisciplina() {
        return objDisciplina;
    }

    public void setObjDisciplina(Disciplina objDisciplina) {
        this.objDisciplina = objDisciplina;
    }


    
    
    
}
