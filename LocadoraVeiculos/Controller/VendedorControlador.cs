using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Model;
using LocadoraVeiculos.DAO;

namespace Controller
{
    public class VendedorControlador
    {
        private VendedorDAO aTbVendedorDAO;

        public VendedorControlador()
        {
            this.aTbVendedorDAO = new VendedorDAO();
        }

        private VendedorEntidade fnMontarObjeto(SqlDataReader pSqlDataReader)
        {
            VendedorEntidade vVendedorEntidade = new VendedorEntidade();

            vVendedorEntidade.iId = Convert.ToInt32((!object.ReferenceEquals(pSqlDataReader["iId"], DBNull.Value)) ? pSqlDataReader["iId"] : 0);

            vVendedorEntidade.vCpf = Convert.ToString((!object.ReferenceEquals(pSqlDataReader["vCpf"], DBNull.Value)) ? pSqlDataReader["vCpf"] : string.Empty);

            vVendedorEntidade.dSalario = Convert.ToDecimal((!object.ReferenceEquals(pSqlDataReader["dSalario"], DBNull.Value)) ? pSqlDataReader["dSalario"] : 0);

            vVendedorEntidade.iPercentualComissao = Convert.ToInt32((!object.ReferenceEquals(pSqlDataReader["iPercentualComissao"], DBNull.Value)) ? pSqlDataReader["iPercentualComissao"] : 0);

            vVendedorEntidade.dtDataAdmissao = Convert.ToDateTime((!object.ReferenceEquals(pSqlDataReader["dtDataAdmissao"], DBNull.Value)) ? pSqlDataReader["dtDataAdmissao"] : DateTime.MinValue);

            vVendedorEntidade.dtDataDemissao = Convert.ToDateTime((!object.ReferenceEquals(pSqlDataReader["dtDataDemissao"], DBNull.Value)) ? pSqlDataReader["dtDataDemissao"] : DateTime.MinValue);

            return vVendedorEntidade;
        }

        public List<VendedorEntidade> Consultar(VendedorEntidade pVendedorEntidade)
        {
            List<VendedorEntidade> vListVendedorEntidade = new List<VendedorEntidade>();
            try
            {
                SqlDataReader vSqlDataReader = this.aTbVendedorDAO.Consultar(pVendedorEntidade);
                while (vSqlDataReader.Read())
                {
                    vListVendedorEntidade.Add(this.fnMontarObjeto(vSqlDataReader));
                }
            }
            catch (Exception ex)
            {
                throw new Exception("consultar o(s) registro(s)");
            }
            finally
            {
                Conexao.CloseConnection();
            }

            return vListVendedorEntidade;
        }

        public VendedorEntidade Incluir(VendedorEntidade pVendedorEntidade)
        {
            try
            {
                pVendedorEntidade.iId = 0;
                pVendedorEntidade.iId = this.aTbVendedorDAO.Incluir(pVendedorEntidade);
                return pVendedorEntidade;
            }
            catch (Exception ex)
            {
                throw new Exception("incluir o registro");
            }
            finally
            {
                Conexao.CloseConnection();
            }
        }

        public void Alterar(VendedorEntidade pVendedorEntidade)
        {
            try
            {
                this.aTbVendedorDAO.Alterar(pVendedorEntidade);
            }
            catch (Exception ex)
            {
                throw new Exception("alterar o registro");
            }
            finally
            {
                Conexao.CloseConnection();
            }
        }

        public void Excluir(VendedorEntidade pVendedorEntidade)
        {
            try
            {
                this.aTbVendedorDAO.Excluir(pVendedorEntidade);
            }
            catch (Exception ex)
            {
                throw new Exception("excluir o registro");
            }
            finally
            {
                Conexao.CloseConnection();
            }
        }
    }
}