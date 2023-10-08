/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;


public class AtividadexAluno {
    
    Integer codAtividadeXaluno;
    private AtivComple objAtivComple = new AtivComple();
    private Aluno objAluno = new Aluno();

    public Integer getCodAtividadeXaluno() {
        return codAtividadeXaluno;
    }

    public void setCodAtividadeXaluno(Integer codAtividadeXaluno) {
        this.codAtividadeXaluno = codAtividadeXaluno;
    }

    public AtivComple getObjAtivComple() {
        return objAtivComple;
    }

    public void setObjAtivComple(AtivComple objAtivComple) {
        this.objAtivComple = objAtivComple;
    }

    public Aluno getObjAluno() {
        return objAluno;
    }

    public void setObjAluno(Aluno objAluno) {
        this.objAluno = objAluno;
    }

      
}
