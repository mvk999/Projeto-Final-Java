package modelo;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAOSetor {
    
    String mensagem = "";
    ConverteData objConverteData = new ConverteData();
    //    DAOSetor objDAOSetor = new DAOSetor();
    
    public String inserir(Setor objSetor){
        String sql = "insert into setor (nomeSetor,descSetor,numeroSalaSetor) values(?,?,?)";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            //pst.setInt(1, objSetor.getCodSetor());
            pst.setString(1, objSetor.getNomeSetor());
            pst.setString(2, objSetor.getDescSetor());
            pst.setString(3, objSetor.getNumeroSalaSetor());
            if(pst.executeUpdate()>0){
                    mensagem = "Setor cadastrado!";
            }else{
                mensagem= "Setor não cadastrado!";
            }
            pst.close(); // fecha a conexão com o banco de dados
        }catch(SQLException ex){
           mensagem = "Erro de SQL no inserir do DAOSetor"+ex.getMessage()+"\n Comando sql="+sql;
        }
        return mensagem;
    }
    
    public String alterar(Setor objSetor){
        String sql = "update setor set nomeSetor=?,descSetor=?,numeroSalaSetor=? where codSetor=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objSetor.getNomeSetor());
            pst.setString(2, objSetor.getDescSetor());
            pst.setString(3, objSetor.getNumeroSalaSetor());
            pst.setInt(4, objSetor.getCodSetor());
            if(pst.executeUpdate()>0){
                mensagem = "Setor alterado!";
            }else{
                mensagem= "Setor não alterado!";
            }
            pst.close(); // fecha a conexão com o banco de dados
        }catch(SQLException ex){
           mensagem = "Erro de SQL no alterar do DAOSetor"+ex.getMessage()+"\n Comando sql="+sql;
        }
        return mensagem;
    }
    
    public String excluir(Setor objSetor){
        String sql = "delete from setor where codSetor=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, objSetor.getCodSetor());
            if(pst.executeUpdate()>0){
                mensagem = "Setor excluido!";
            }else{
                mensagem= "Setor não excluido!";
            }
            pst.close(); // fecha a conexão com o banco de dados
        }catch(SQLException ex){
           mensagem = "Erro de SQL no excluir do DAOSetor"+ex.getMessage()+"\n Comando sql="+sql;
        }
        return mensagem;
    }
    
    public List<Setor> listarSetor(){
        String sql = "select * from setor";
        List<Setor> listaSetor = new ArrayList<>();
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Setor objSetor = new Setor();
                objSetor.setCodSetor(rs.getInt("codSetor"));
                objSetor.setNomeSetor(rs.getString("nomeSetor"));
                objSetor.setDescSetor(rs.getString("descSetor"));
                objSetor.setNumeroSalaSetor(rs.getString("numeroSalaSetor"));
                listaSetor.add(objSetor);
            }
        }catch(SQLException ex){
            System.out.println("Erro no listarSetor do DAOSetor");
            
        }
        return listaSetor;
    }
    
    public Setor localizar(Integer id){
                String sql = "select * from setor where codSetor=?";
                Setor objSetor = new Setor();
                try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                objSetor.setCodSetor(rs.getInt("codSetor"));
                objSetor.setNomeSetor(rs.getString("nomeSetor"));
                objSetor.setDescSetor(rs.getString("descSetor"));
                objSetor.setNumeroSalaSetor(rs.getString("numeroSalaSetor"));
                return objSetor;
        }
        }   catch(SQLException ex){
            System.out.println("Erro de SQL no localizar"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return null;

        
    }
}
