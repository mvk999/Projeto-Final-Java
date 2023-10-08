package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAOAluno {


    ConverteData objConverte = new ConverteData();
    DAONivelEnsino objnivelensino = new DAONivelEnsino();

    
    String mensagem = "";
    public String inserir(Aluno objAluno){
        String sql = "insert into aluno(nomeAluno, cpfAluno, matriculaAluno, nascimentoAluno, nomePaiAluno, nomeMaeAluno, telefoneResponsavelAluno,nivelEnsinoAluno) values(?,?,?,?,?,?,?,?)";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objAluno.getNomeAluno());
            pst.setString(2, objAluno.getCpfAluno());
            pst.setString(3, objAluno.getMatriculaAluno());
            pst.setDate(4, objConverte.converteBanco(objAluno.getNascimentoAluno()));
            pst.setString(5, objAluno.getNomePaiAluno());
            pst.setString(6, objAluno.getNomeMaeAluno());
            pst.setInt(7, objAluno.getTelefoneResponsavelAluno());
            pst.setInt(8, objAluno.getObjnivelensino().getCodNivelEnsino());
            if(pst.executeUpdate()>0){
                mensagem = "Aluno cadastrado com sucesso";
            }else{
                mensagem = "Aluno não cadastrado";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no incluir do DAOAluno"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
      public String alterar(Aluno objAluno){
        String sql = "update aluno set nomeAluno=?, cpfAluno=?, matriculaAluno=?, nascimentoAluno=?, nomePaiAluno=?, nomeMaeAluno=?, telefoneResponsavelAluno=?,nivelEnsinoAluno=?   where codAluno=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objAluno.getNomeAluno());
            pst.setString(2, objAluno.getCpfAluno());
            pst.setString(3, objAluno.getMatriculaAluno());
            pst.setDate(4, objConverte.converteBanco(objAluno.getNascimentoAluno()));
            pst.setString(5, objAluno.getNomePaiAluno());
            pst.setString(6, objAluno.getNomeMaeAluno());
            pst.setInt(7, objAluno.getTelefoneResponsavelAluno());
            pst.setInt(8, objAluno.getObjnivelensino().getCodNivelEnsino());
            pst.setInt(9, objAluno.getCodAluno());
            if(pst.executeUpdate()>0){
                mensagem = "Aluno alterado com sucesso";
            }else{
                mensagem = "Aluno não alterado";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no alterar do DAOAluno"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
      public String excluir(Aluno objAluno){
        String sql = "delete from aluno where codAluno=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, objAluno.getCodAluno());
            if(pst.executeUpdate()>0){
                mensagem = "Aluno excluido com sucesso";
            }else{
                mensagem = "Aluno não excluido";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no excluir do DAOAluno"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
    public List<Aluno> listarAluno(){
        String sql = "select * from aluno";
        List<Aluno> listaAluno = new ArrayList<>();
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Aluno objAluno = new Aluno();
                objAluno.setCodAluno(rs.getInt("codAluno"));
                objAluno.setNomeAluno(rs.getString("nomeAluno"));
                objAluno.setCpfAluno(rs.getString("cpfAluno"));
                objAluno.setMatriculaAluno(rs.getString("matriculaAluno"));
                objAluno.setNascimentoAluno(objConverte.converteCalendario(rs.getDate("nascimentoAluno")));
                objAluno.setNomePaiAluno(rs.getString("nomePaiAluno"));
                objAluno.setNomeMaeAluno(rs.getString("nomeMaeAluno"));
                objAluno.setTelefoneResponsavelAluno(rs.getInt("telefoneResponsavelAluno"));
                objAluno.setObjnivelensino(objnivelensino.localizar(rs.getInt("nivelEnsinoAluno")));

                listaAluno.add(objAluno);
        }
        }   catch(SQLException ex){
            System.out.println("Erro no listarAluno do DAOALuno"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return listaAluno;
    }
    
        public Aluno localizar(Integer id){
                String sql = "select * from aluno where codAluno=?";
                Aluno objAluno = new Aluno();
                try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                objAluno.setCodAluno(rs.getInt("codAluno"));
                objAluno.setNomeAluno(rs.getString("nomeAluno"));
                objAluno.setCpfAluno(rs.getString("cpfAluno"));
                objAluno.setMatriculaAluno(rs.getString("matriculaAluno"));
                objAluno.setNascimentoAluno(objConverte.converteCalendario(rs.getDate("nascimentoAluno")));
                objAluno.setNomePaiAluno(rs.getString("nomePaiAluno"));
                objAluno.setNomeMaeAluno(rs.getString("nomeMaeAluno"));
                objAluno.setTelefoneResponsavelAluno(rs.getInt("telefoneResponsavelAluno"));
                objAluno.setObjnivelensino(objnivelensino.localizar(rs.getInt("nivelEnsinoAluno")));
                return objAluno;
        }
        }   catch(SQLException ex){
            System.out.println("Erro de SQL no localizar do DAOAluno"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return null;

        
    }
    }

