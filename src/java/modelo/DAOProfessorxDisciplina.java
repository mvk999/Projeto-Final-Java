package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.ProfessorXDisciplina;


public class DAOProfessorxDisciplina {
    DAOProf objProf1 = new DAOProf();
    DAODisciplina objDisciplina2 = new DAODisciplina();

    
    String mensagem = "";
    public String inserir(ProfessorXDisciplina objProfessorXDisciplina){
        String sql = "insert into professorxdisciplina(codProfessor, codDisciplina) values(?,?)";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, objProfessorXDisciplina.getObjProf().getCodProf());
            pst.setInt(2, objProfessorXDisciplina.getObjDisciplina().getCodDisciplina());
            if(pst.executeUpdate()>0){
                mensagem = "ProfessorxDisciplina cadastrado com sucesso";
            }else{
                mensagem = "ProfessorxDisciplina não cadastrado";
                
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no incluir do DAOProfessorxDisciplina"+ex.getMessage()+"\nComando SQL="+sql;
            System.out.println("Erro de SQL no incluir do DAOProfessorxDisciplina"+ex.getMessage()+"\nComando SQL="+sql);
        }
        return mensagem;
    }
//      public String alterar(ProfessorXDisciplina objProfessorXDisciplina){
//        String sql = "update professorxdisciplina set codProfessor=?, codDisciplina=? where codProfessorXdisciplina=?";
//        try{
//            PreparedStatement pst = Conexao.getPreparedStatement(sql);
//            pst.setInt(1, objProfessorXDisciplina.getObjProf().getCodProf());
//            pst.setInt(2, objProfessorXDisciplina.getObjDisciplina().getCodDisciplina());
//            pst.setInt(3, objProfessorXDisciplina.getCodProfessorXdisciplina());
//            if(pst.executeUpdate()>0){
//                mensagem = "ProfessorxDisciplina alterado com sucesso";
//            }else{
//                mensagem = "ProfessorxDisciplina não alterado";
//            }
//            pst.close(); //fecha a conexao
//        }catch(SQLException ex){
//            mensagem = "Erro de SQL no alterar do DAOProfessorxDisciplina"+ex.getMessage()+"\nComando SQL="+sql;
//        }
//        return mensagem;
//    }
      public String excluir(ProfessorXDisciplina objProfessorXDisciplina){
        String sql = "delete from professorxdisciplina where codProfessorXdisciplina=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, objProfessorXDisciplina.getCodProfessorXdisciplina());
            if(pst.executeUpdate()>0){
                mensagem = "ProfessorxDisciplina excluido com sucesso";
            }else{
                mensagem = "ProfessorxDisciplina não excluido";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no excluir do DAOProfessorxDisciplina"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
    public List<ProfessorXDisciplina> listarProfessorXDisciplina(){
        String sql = "select * from professorxdisciplina";
        List<ProfessorXDisciplina> listaProfessorXDisciplina = new ArrayList<>();
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                ProfessorXDisciplina objProfessorxDisciplina = new ProfessorXDisciplina();
                objProfessorxDisciplina.setCodProfessorXdisciplina(rs.getInt("codProfessorXdisciplina"));
                objProfessorxDisciplina.setObjProf(objProf1.localizar(rs.getInt("codProfessor")));
                objProfessorxDisciplina.setObjDisciplina(objDisciplina2.localizar(rs.getInt("codDisciplina")));

                listaProfessorXDisciplina.add(objProfessorxDisciplina);
        }
        }   catch(SQLException ex){
            System.out.println("Erro no listarAtividadeXDisciplina do DAOAProfessorxDisciplina"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return listaProfessorXDisciplina;
    }
    
        public ProfessorXDisciplina localizar(Integer id){
                String sql = "select * from professorxdisciplina where codAtividadeXaluno=?";
                ProfessorXDisciplina objProfessorXDisciplina = new ProfessorXDisciplina();
                try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                objProfessorXDisciplina.setCodProfessorXdisciplina(rs.getInt("codProfessorXdisciplina"));
                objProfessorXDisciplina.setObjProf(objProf1.localizar(rs.getInt("codProfessor")));
                objProfessorXDisciplina.setObjDisciplina(objDisciplina2.localizar(rs.getInt("codDisciplina")));
                return objProfessorXDisciplina;
        }
        }   catch(SQLException ex){
            System.out.println("Erro de SQL no localizar do DAOProfessorxDisciplina"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return null;

        
    }
    }