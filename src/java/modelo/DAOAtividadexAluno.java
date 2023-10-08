
package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class DAOAtividadexAluno {
    ConverteData objConverte1 = new ConverteData();
    DAOAtivComple objAtivComple1 = new DAOAtivComple();
    DAOAluno objAluno2 = new DAOAluno();

    
    String mensagem = "";
    public String inserir(AtividadexAluno objAtividadexAluno){
        String sql = "insert into atividadexaluno(codAtivComple, codAluno) values(?,?)";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, objAtividadexAluno.getObjAtivComple().getCodAtivComple());
            pst.setInt(2, objAtividadexAluno.getObjAluno().getCodAluno());
            if(pst.executeUpdate()>0){
                mensagem = "AtividadexAluno cadastrado com sucesso";
            }else{
                mensagem = "AtividadexAluno não cadastrado";
                
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no incluir do DAOAluno"+ex.getMessage()+"\nComando SQL="+sql;
            System.out.println("Erro de SQL no incluir do DAOAluno"+ex.getMessage()+"\nComando SQL="+sql);
        }
        return mensagem;
    }
//      public String alterar(AtividadexAluno objAtividadexAluno){
//        String sql = "update atividadexaluno set codAtivComple=?, codAluno=? where codAtividadeXaluno=?";
//        try{
//            PreparedStatement pst = Conexao.getPreparedStatement(sql);
//            pst.setInt(1, objAtividadexAluno.getObjAtivComple().getCodAtivComple());
//            pst.setInt(2, objAtividadexAluno.getObjAluno().getCodAluno());
//            pst.setInt(3, objAtividadexAluno.getCodAtividadeXaluno());
//            if(pst.executeUpdate()>0){
//                mensagem = "AtividadexAluno alterado com sucesso";
//            }else{
//                mensagem = "AtividadexAluno não alterado";
//            }
//            pst.close(); //fecha a conexao
//        }catch(SQLException ex){
//            mensagem = "Erro de SQL no alterar do DAOAluno"+ex.getMessage()+"\nComando SQL="+sql;
//        }
//        return mensagem;
//    }
      public String excluir(AtividadexAluno objAtividadexAluno){
        String sql = "delete from atividadexaluno where codAtividadeXaluno=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, objAtividadexAluno.getCodAtividadeXaluno());
            if(pst.executeUpdate()>0){
                mensagem = "AtividadexAluno excluido com sucesso";
            }else{
                mensagem = "AtividadexAluno não excluido";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no excluir do DAOAluno"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
    public List<AtividadexAluno> listarAtividadexAluno(){
        String sql = "select * from atividadexaluno";
        List<AtividadexAluno> listaAtividadexAluno = new ArrayList<>();
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                AtividadexAluno objAtividadexAluno = new AtividadexAluno();
                objAtividadexAluno.setCodAtividadeXaluno(rs.getInt("codAtividadeXaluno"));
                objAtividadexAluno.setObjAtivComple(objAtivComple1.localizar(rs.getInt("codAtivComple")));
                objAtividadexAluno.setObjAluno(objAluno2.localizar(rs.getInt("codAluno")));

                listaAtividadexAluno.add(objAtividadexAluno);
        }
        }   catch(SQLException ex){
            System.out.println("Erro no listarAtividadeXAluno do DAOAAtividadexAluno"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return listaAtividadexAluno;
    }
    
        public AtividadexAluno localizar(Integer id){
                String sql = "select * from atividadexaluno where codAtividadeXaluno=?";
                AtividadexAluno objAtividadexAluno = new AtividadexAluno();
                try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                objAtividadexAluno.setCodAtividadeXaluno(rs.getInt("codAtividadeXaluno"));
                objAtividadexAluno.setObjAtivComple(objAtivComple1.localizar(rs.getInt("codAtivComple")));
                objAtividadexAluno.setObjAluno(objAluno2.localizar(rs.getInt("codAluno")));
                return objAtividadexAluno;
        }
        }   catch(SQLException ex){
            System.out.println("Erro de SQL no localizar do DAOAtividadexAluno"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return null;

        
    }
    }
