package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 14582851622
 */
public class DAONivelEnsino {

    String mensagem="";
    
    public String inserir(NivelEnsino objNivelEnsino){
        String sql = "insert into nivelensino(niveldeEnsino) values(?)";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objNivelEnsino.getNiveldeEnsino());
            if(pst.executeUpdate()>0){
                mensagem = "Nivel de Ensino cadastrado com sucesso";
            }else{
                mensagem = "Nivel de Ensino não cadastrado";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no incluir do DAONivelEnsino"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
      public String alterar(NivelEnsino objNivelEnsino){
        String sql = "update nivelensino set niveldeEnsino=? where codNivelEnsino=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objNivelEnsino.getNiveldeEnsino());
            pst.setInt(2, objNivelEnsino.getCodNivelEnsino());
            if(pst.executeUpdate()>0){
                mensagem = "Nivel de Ensino alterado com sucesso";
            }else{
                mensagem = "Nivel de Ensino não alterado";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no alterar do DAONivelEnsino"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
      public String excluir(NivelEnsino objNivelEnsino){
        String sql = "delete from nivelensino where codNivelEnsino=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, objNivelEnsino.getCodNivelEnsino());
            if(pst.executeUpdate()>0){
                mensagem = "Nivel de Ensino excluido com sucesso";
            }else{
                mensagem = "Nivel de Ensino não excluido";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no excluir do DAONivelEnsino"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
    
    public List<NivelEnsino> listarNivelEnsino(){
        String sql = "select * from nivelensino";
        List<NivelEnsino> listaNivelEnsino = new ArrayList<>();
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                NivelEnsino objNivelEnsino = new NivelEnsino();
                objNivelEnsino.setCodNivelEnsino(rs.getInt("codNivelEnsino"));
                objNivelEnsino.setNiveldeEnsino(rs.getString("niveldeEnsino"));
                listaNivelEnsino.add(objNivelEnsino);
        }
        }   catch(SQLException ex){
            System.out.println("Erro no listarNivelEnsino do DAONivelEnsino"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return listaNivelEnsino;
    }
    
    public NivelEnsino localizar(Integer id){
                String sql = "select * from nivelensino where codNivelEnsino=?";
                NivelEnsino objNivelEnsino = new NivelEnsino();
                try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                objNivelEnsino.setCodNivelEnsino(rs.getInt("codNivelEnsino"));
                objNivelEnsino.setNiveldeEnsino(rs.getString("niveldeEnsino"));
                return objNivelEnsino;
        }
        }   catch(SQLException ex){
            System.out.println("Erro de SQL no localizar"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return null;

        
    }
    
    }