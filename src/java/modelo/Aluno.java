/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import java.util.Calendar;

/**
 *
 * @author 16110968633
 */
public class Aluno {
    private Integer codAluno,telefoneResponsavelAluno;
    private String nomeAluno,cpfAluno,matriculaAluno,nomePaiAluno,nomeMaeAluno;
    private Calendar nascimentoAluno;
    private NivelEnsino objnivelensino = new NivelEnsino();

    public Integer getCodAluno() {
        return codAluno;
    }

    public void setCodAluno(Integer codAluno) {
        this.codAluno = codAluno;
    }

    public Integer getTelefoneResponsavelAluno() {
        return telefoneResponsavelAluno;
    }

    public void setTelefoneResponsavelAluno(Integer telefoneResponsavelAluno) {
        this.telefoneResponsavelAluno = telefoneResponsavelAluno;
    }

    public String getNomeAluno() {
        return nomeAluno;
    }

    public void setNomeAluno(String nomeAluno) {
        this.nomeAluno = nomeAluno;
    }

    public String getCpfAluno() {
        return cpfAluno;
    }

    public void setCpfAluno(String cpfAluno) {
        this.cpfAluno = cpfAluno;
    }

    public String getMatriculaAluno() {
        return matriculaAluno;
    }

    public void setMatriculaAluno(String matriculaAluno) {
        this.matriculaAluno = matriculaAluno;
    }

    public String getNomePaiAluno() {
        return nomePaiAluno;
    }

    public void setNomePaiAluno(String nomePaiAluno) {
        this.nomePaiAluno = nomePaiAluno;
    }

    public String getNomeMaeAluno() {
        return nomeMaeAluno;
    }

    public void setNomeMaeAluno(String nomeMaeAluno) {
        this.nomeMaeAluno = nomeMaeAluno;
    }

    public Calendar getNascimentoAluno() {
        return nascimentoAluno;
    }

    public void setNascimentoAluno(Calendar nascimentoAluno) {
        this.nascimentoAluno = nascimentoAluno;
    }

    public NivelEnsino getObjnivelensino() {
        return objnivelensino;
    }

    public void setObjnivelensino(NivelEnsino objnivelensino) {
        this.objnivelensino = objnivelensino;
    }
            
            
            
            
}
