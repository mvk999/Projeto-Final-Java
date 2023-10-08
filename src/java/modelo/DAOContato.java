
package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class DAOContato {
    String mensagem = "";
    
    public String inserir(Contato objContato){
        String sql = "insert into contato (nome,email,mensagem) values(?,?,?)";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            //pst.setInt(1, objSetor.getCodSetor());
            pst.setString(1, objContato.getNome());
            pst.setString(2, objContato.getEmail());
            pst.setString(3, objContato.getMensagem());
            if(pst.executeUpdate()>0){
                    mensagem = "Mensagem Enviada! Em breve entraremos em contato.";
            }else{
                mensagem= "Mensagem não enviada!";
            }
            pst.close(); // fecha a conexão com o banco de dados
        }catch(SQLException ex){
           mensagem = "Erro de SQL no inserir do DAOContato"+ex.getMessage()+"\n Comando sql="+sql;
        }
        return mensagem;
    }
}