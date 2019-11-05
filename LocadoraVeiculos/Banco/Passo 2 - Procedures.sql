USE [DbLocadoraVeiculos]
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbVendedor]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPUpd_TbVendedor]
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbVeiculoAlterarEstado]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPUpd_TbVeiculoAlterarEstado]
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbVeiculo]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPUpd_TbVeiculo]
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbPais]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPUpd_TbPais]
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbMontadoraPais]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPUpd_TbMontadoraPais]
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbMontadora]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPUpd_TbMontadora]
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbEndereco]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPUpd_TbEndereco]
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbCliente]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPUpd_TbCliente]
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbAluguelDevolverVeiculo]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPUpd_TbAluguelDevolverVeiculo]
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbAluguel]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPUpd_TbAluguel]
GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbVendedor]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPSel_TbVendedor]
GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbVeiculo]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPSel_TbVeiculo]
GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbPais]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPSel_TbPais]
GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbMontadoraPais]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPSel_TbMontadoraPais]
GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbMontadora]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPSel_TbMontadora]
GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbEndereco]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPSel_TbEndereco]
GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbCliente]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPSel_TbCliente]
GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbAluguel]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPSel_TbAluguel]
GO
/****** Object:  StoredProcedure [dbo].[SPRel_VeiculosAlugados]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPRel_VeiculosAlugados]
GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbVendedor]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPIns_TbVendedor]
GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbVeiculo]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPIns_TbVeiculo]
GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbPais]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPIns_TbPais]
GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbMontadoraPais]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPIns_TbMontadoraPais]
GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbMontadora]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPIns_TbMontadora]
GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbEndereco]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPIns_TbEndereco]
GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbCliente]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPIns_TbCliente]
GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbAluguel]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPIns_TbAluguel]
GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbVendedor]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPDel_TbVendedor]
GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbVeiculo]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPDel_TbVeiculo]
GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbPais]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPDel_TbPais]
GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbMontadoraPais]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPDel_TbMontadoraPais]
GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbMontadora]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPDel_TbMontadora]
GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbEndereco]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPDel_TbEndereco]
GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbCliente]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPDel_TbCliente]
GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbAluguel]    Script Date: 05/11/2019 09:36:10 ******/
DROP PROCEDURE [dbo].[SPDel_TbAluguel]
GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbAluguel]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SPDel_TbAluguel]
    @piId AS INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM TbAluguel WHERE iId = @piId
End

GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbCliente]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPDel_TbCliente]
    @piId AS INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM TbCliente WHERE iId = @piId
End

GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbEndereco]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPDel_TbEndereco]
    @piId AS INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM TbEndereco WHERE iId = @piId
End

GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbMontadora]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPDel_TbMontadora]
    @piId AS INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM TbMontadora WHERE iId = @piId
End

GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbMontadoraPais]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPDel_TbMontadoraPais]
    @piId AS INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM TbMontadoraPais WHERE iId = @piId
End

GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbPais]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPDel_TbPais]
    @piId AS INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM TbPais WHERE iId = @piId
End

GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbVeiculo]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPDel_TbVeiculo]
    @piId AS INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM TbVeiculo WHERE iId = @piId
End

GO
/****** Object:  StoredProcedure [dbo].[SPDel_TbVendedor]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPDel_TbVendedor]
    @piId AS INT
AS
BEGIN
	DECLARE @iIdTbUsuario AS INT = (SELECT iIdTbUsuario FROM TbVendedor WHERE iId = @piId);

    SET NOCOUNT ON;
    DELETE FROM TbVendedor WHERE iId = @piId
	DELETE FROM TbUsuario WHERE iId = @iIdTbUsuario
END
GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbAluguel]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPIns_TbAluguel]
    @piIdTbMontadora AS INT
    , @piIdTbVeiculo AS INT
    , @piIdTbCliente AS INT
    , @piQtdDiarias AS INT
    , @pdValorTotal AS DECIMAL(18, 0)
    , @piIdTbFormaPagamento AS INT
    , @pdtDataInicioAluguel AS DATE
	, @piIdTbVendedor AS INT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO TbAluguel(
        iIdTbMontadora
        , iIdTbVeiculo
        , iIdTbCliente
        , iQtdDiarias
        , dValorTotal
        , iIdTbFormaPagamento
        , dtDataInicioAluguel
        , dtDataOperacao
		, iIdTbVendedor
    )VALUES(
        @piIdTbMontadora
        , @piIdTbVeiculo
        , @piIdTbCliente
        , @piQtdDiarias
        , @pdValorTotal
        , @piIdTbFormaPagamento
        , @pdtDataInicioAluguel
        , GETDATE()
		, @piIdTbVendedor
        )
        SELECT SCOPE_IDENTITY();
End

GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbCliente]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPIns_TbCliente]
    @pvNome AS VARCHAR(50)
    , @pvCpf AS VARCHAR(20)
    , @piIdade AS TINYINT
    , @pvTelefone AS VARCHAR(20)
    , @pvEmail AS VARCHAR(50)
    , @pvCelular AS VARCHAR(20)
    , @pvSexo AS CHAR(1)
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO TbCliente(
        vNome
        , vCpf
        , iIdade
        , vTelefone
        , vEmail
        , vCelular
        , vSexo
        , dtDataCadastro
    )VALUES(
        @pvNome
        , @pvCpf
        , @piIdade
        , @pvTelefone
        , @pvEmail
        , @pvCelular
        , @pvSexo
        , GETDATE()
        )
        SELECT SCOPE_IDENTITY();
End

GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbEndereco]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPIns_TbEndereco]
    @pvLogradouro AS VARCHAR(50)
    , @piNumero AS INT
    , @pvComplemento AS VARCHAR(50)
    , @pvBairro AS VARCHAR(50)
    , @pvCidade AS VARCHAR(50)
    , @pvEstado AS CHAR(2)
    , @pvCep AS CHAR(9)
    , @pvObs AS VARCHAR(100)
    , @piIdTbCliente AS INT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO TbEndereco(
        vLogradouro
        , iNumero
        , vComplemento
        , vBairro
        , vCidade
        , vEstado
        , vCep
        , dtDataCriacao
        , vObs
        , iIdTbCliente
    )VALUES(
        @pvLogradouro
        , @piNumero
        , @pvComplemento
        , @pvBairro
        , @pvCidade
        , @pvEstado
        , @pvCep
        , GETDATE()
        , @pvObs
        , @piIdTbCliente
        )
        SELECT SCOPE_IDENTITY();
End

GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbMontadora]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPIns_TbMontadora]
    @pvNome AS VARCHAR(50)
    , @pdFaturamentoEmDolar AS DECIMAL(18, 0)
    , @pdLucroAnualEmDolar AS DECIMAL(18, 0)
    , @pvCidadeFundacao AS VARCHAR(50)
    , @pdtDataFundacao AS DATE
    , @piQtdFabricas AS INT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO TbMontadora(
        vNome
        , dFaturamentoEmDolar
        , dLucroAnualEmDolar
        , vCidadeFundacao
        , dtDataFundacao
        , iQtdFabricas
    )VALUES(
        @pvNome
        , @pdFaturamentoEmDolar
        , @pdLucroAnualEmDolar
        , @pvCidadeFundacao
        , @pdtDataFundacao
        , @piQtdFabricas
        )
        SELECT SCOPE_IDENTITY();
End

GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbMontadoraPais]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPIns_TbMontadoraPais]
    @piIdTbMontadora AS INT
    , @piIdTbPais AS INT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO TbMontadoraPais(
        iIdTbMontadora
        , iIdTbPais
    )VALUES(
        @piIdTbMontadora
        , @piIdTbPais
        )
        SELECT SCOPE_IDENTITY();
End

GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbPais]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPIns_TbPais]
    @pvNome AS VARCHAR(50)
    , @pvIdiomaPrincipal AS VARCHAR(50)
    , @piQtdHabitantes AS BIGINT
    , @piAnoFundacao AS SMALLINT
    , @pdPibEmDolar AS DECIMAL(18, 0)
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO TbPais(
        vNome
        , vIdiomaPrincipal
        , iQtdHabitantes
        , iAnoFundacao
        , dPibEmDolar
    )VALUES(
        @pvNome
        , @pvIdiomaPrincipal
        , @piQtdHabitantes
        , @piAnoFundacao
        , @pdPibEmDolar
        )
        SELECT SCOPE_IDENTITY();
End

GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbVeiculo]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPIns_TbVeiculo]
    @piIdMontadora AS INT
    , @pvModelo AS VARCHAR(50)
    , @piAnoFabricacao AS INT
    , @pvCor AS VARCHAR(20)
	, @pdValorLocacao AS DECIMAL(13,2)
	, @pvPlaca AS CHAR(8)
	, @piQuilometragem AS BIGINT
	, @piEstadoVeiculo AS INT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO TbVeiculo(
        iIdMontadora
        , vModelo
        , iAnoFabricacao
        , vCor
		, dValorLocacao
		, vPlaca
		, iQuilometragem
		, iEstadoVeiculo
    )VALUES(
        @piIdMontadora
        , @pvModelo
        , @piAnoFabricacao
        , @pvCor
		, @pdValorLocacao
		, @pvPlaca
		, @piQuilometragem
		, @piEstadoVeiculo
        )
        SELECT SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[SPIns_TbVendedor]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPIns_TbVendedor]
    @pvCpf AS VARCHAR(20)
    , @pdSalario AS DECIMAL(18, 0)
    , @piPercentualComissao AS INT
    , @pdtDataAdmissao AS DATE
    , @pdtDataDemissao AS DATE
	, @pvNome AS VARCHAR(50)
    , @pvLogin AS VARCHAR(50)
    , @pvSenha AS VARCHAR(200)
    , @pbAtivo AS BIT
AS
BEGIN
    SET NOCOUNT ON;

	INSERT INTO TbUsuario(
        vNome
        , vLogin
        , vSenha
        , bAtivo
    )VALUES(
        @pvNome
        , @pvLogin
        , @pvSenha
        , @pbAtivo
        )

    INSERT INTO TbVendedor(
        iIdTbUsuario
        , vCpf
        , dSalario
        , iPercentualComissao
        , dtDataAdmissao
        , dtDataDemissao
    )VALUES(
        (SELECT SCOPE_IDENTITY())
        , @pvCpf
        , @pdSalario
        , @piPercentualComissao
        , @pdtDataAdmissao
        , @pdtDataDemissao
        )
        SELECT SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[SPRel_VeiculosAlugados]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPRel_VeiculosAlugados]
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        TbVeiculo.vModelo														AS 'vVeiculo'
		,TbVeiculo.vPlaca
		,TbCliente.vNome														AS 'vCliente'					
		,TbCliente.vCpf
		,TbAluguel.dtDataInicioAluguel											AS 'dtDataLocacao'
		,DATEADD(DAY, TbAluguel.iQtdDiarias, TbAluguel.dtDataInicioAluguel)		AS 'dtDataEntrega'
    FROM
        TbAluguel
	INNER JOIN
		TbCliente ON TbAluguel.iIdTbCliente = TbCliente.iId
	INNER JOIN
		TbVeiculo ON TbAluguel.iIdTbVeiculo = TbVeiculo.iId
    WHERE
        dtDataDevolucao IS NULL
    ORDER BY
		TbAluguel.dtDataInicioAluguel
END
GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbAluguel]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  SPSel_TbAluguel @pEmAndamento = 0
CREATE PROCEDURE [dbo].[SPSel_TbAluguel]
    @piId AS INT = NULL
	,@pEmAndamento AS BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        iId
        , iIdTbMontadora
        , iIdTbVeiculo
        , iIdTbCliente
        , iQtdDiarias
        , dValorTotal
        , iIdTbFormaPagamento
        , dtDataInicioAluguel
        , dtDataOperacao
		, iIdTbVendedor
		, dtDataDevolucao
    FROM
        TbAluguel
    WHERE
        ( (@piId IS NULL) OR (iId = @piId) )
	AND
		( (@pEmAndamento IS NULL) 
			OR (
			(@pEmAndamento = 0 AND dtDataDevolucao IS NOT NULL)
			OR 
			(@pEmAndamento = 1 AND dtDataDevolucao IS NULL)
		) )
    ORDER BY iId
END
GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbCliente]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPSel_TbCliente]
    @piId AS INT = NULL
	,@pvNome AS VARCHAR(50) = NULL

AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        TbCliente.iId
        , vNome
        , vCpf
        , iIdade
        , vTelefone
        , vEmail
        , vCelular
        , vSexo
        , dtDataCadastro
		, vLogradouro
		, iNumero
		, vComplemento
		, vBairro
		, vCidade
		, vEstado
		, vCep
		, dtDataCriacao
		, vObs
		, iIdTbCliente
		, TbEndereco.iId	AS 'iIdEndereco'
    FROM
        TbCliente
	INNER JOIN
		TbEndereco ON TbCliente.iId = TbEndereco.iIdTbCliente 
    WHERE
		( (@piId IS NULL) OR (TbCliente.iId = @piId) )
	AND
        ( (@pvNome IS NULL) OR (vNome = @pvNome) )
    ORDER BY 
		vNome
END
GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbEndereco]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPSel_TbEndereco]
    @piId AS INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        iId
        , vLogradouro
        , iNumero
        , vComplemento
        , vBairro
        , vCidade
        , vEstado
        , vCep
        , dtDataCriacao
        , vObs
        , iIdTbCliente
    FROM
        TbEndereco
    WHERE
        ( (@piId IS NULL) OR (iId = @piId) )
    ORDER BY iId
END

GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbMontadora]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPSel_TbMontadora]
    @piId		AS INT			= NULL
	,@pvNome	AS VARCHAR(50)	= NULL
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        iId
        , vNome
        , dFaturamentoEmDolar
        , dLucroAnualEmDolar
        , vCidadeFundacao
        , dtDataFundacao
        , iQtdFabricas
    FROM
        TbMontadora
    WHERE
        ( (@piId IS NULL) OR (iId = @piId) )
	AND
		( (@pvNome IS NULL) OR (vNome = @pvNome) )
    ORDER BY iId
END

GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbMontadoraPais]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPSel_TbMontadoraPais]
    @piId AS INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        iId
        , iIdTbMontadora
        , iIdTbPais
    FROM
        TbMontadoraPais
    WHERE
        ( (@piId IS NULL) OR (iId = @piId) )
    ORDER BY iId
END

GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbPais]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPSel_TbPais]
    @piId AS INT = NULL
	,@pvNome AS VARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        iId
        , vNome
        , vIdiomaPrincipal
        , iQtdHabitantes
        , iAnoFundacao
        , dPibEmDolar
    FROM
        TbPais
    WHERE
        ( (@piId IS NULL) OR (iId = @piId) )
	AND
		( (@pvNome IS NULL) OR (vNome = @pvNome) )
    ORDER BY 
		vNome
END
GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbVeiculo]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPSel_TbVeiculo]
    @piId AS INT = NULL
	,@piIdMontadora AS INT = NULL
	,@piEstadoVeiculo AS INT = NULL
	,@pAlugados AS BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        iId
        , iIdMontadora
        , vModelo
        , iAnoFabricacao
        , vCor
		, dValorLocacao
		, vPlaca
		, iQuilometragem
		, iEstadoVeiculo
    FROM
        TbVeiculo
    WHERE
        ( (@piId IS NULL) OR (iId = @piId) )
	AND
		( (@piIdMontadora IS NULL) OR (iIdMontadora = @piIdMontadora) )
	AND
		( (@piEstadoVeiculo IS NULL) OR (iEstadoVeiculo = @piEstadoVeiculo) )
	AND
		( (@pAlugados IS NULL) 
			OR (
			(@pAlugados = 0 AND iEstadoVeiculo <> 3)
			OR 
			(@pAlugados = 1 AND iEstadoVeiculo = 3)
		) )
    ORDER BY 
		iId
END
GO
/****** Object:  StoredProcedure [dbo].[SPSel_TbVendedor]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- SPSel_TbVendedor @pvLogin = 'cicrano@gmail.com', @pvSenha = '1'
CREATE PROCEDURE [dbo].[SPSel_TbVendedor]
    @piId AS INT = NULL
	,@pvNome AS VARCHAR(50) = NULL
	,@pvLogin AS VARCHAR(50) = NULL
	,@pvSenha AS VARCHAR(200) = NULL
	,@pbAtivo AS BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        TbVendedor.iId
        , iIdTbUsuario
        , vCpf
        , dSalario
        , iPercentualComissao
        , dtDataAdmissao
        , dtDataDemissao
		, vNome
		, vLogin
		, vSenha
		, bAtivo
    FROM
        TbVendedor
	INNER JOIN
		TbUsuario ON TbVendedor.iIdTbUsuario = TbUsuario.iId
    WHERE
        ( (@piId IS NULL) OR (TbUsuario.iId = @piId) )
	AND
		( (@pvNome IS NULL) OR (vNome = @pvNome) )
	AND
		( (@pvLogin IS NULL) OR (vLogin = @pvLogin) )
	AND
		( (@pvSenha IS NULL) OR (vSenha = @pvSenha) )
	AND
		( (@pbAtivo IS NULL) OR (bAtivo = @pbAtivo) )
END
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbAluguel]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUpd_TbAluguel]
    @piId AS INT
    , @piIdTbMontadora AS INT
    , @piIdTbVeiculo AS INT
    , @piIdTbCliente AS INT
    , @piQtdDiarias AS INT
    , @pdValorTotal AS DECIMAL(18, 0)
    , @piIdTbFormaPagamento AS INT
    , @pdtDataInicioAluguel AS DATE
	, @piIdTbVendedor AS INT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE TbAluguel SET 
        iIdTbMontadora = @piIdTbMontadora
        , iIdTbVeiculo = @piIdTbVeiculo
        , iIdTbCliente = @piIdTbCliente
        , iQtdDiarias = @piQtdDiarias
        , dValorTotal = @pdValorTotal
        , iIdTbFormaPagamento = @piIdTbFormaPagamento
        , dtDataInicioAluguel = @pdtDataInicioAluguel
		, iIdTbVendedor = @piIdTbVendedor
    WHERE iId = @piId
END
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbAluguelDevolverVeiculo]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUpd_TbAluguelDevolverVeiculo]
    @piId AS INT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE 
		TbAluguel 
	SET 
        dtDataDevolucao = GETDATE()
    WHERE 
		iId = @piId
END
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbCliente]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUpd_TbCliente]
    @piId AS INT
    , @pvNome AS VARCHAR(50)
    , @pvCpf AS VARCHAR(20)
    , @piIdade AS TINYINT
    , @pvTelefone AS VARCHAR(20)
    , @pvEmail AS VARCHAR(50)
    , @pvCelular AS VARCHAR(20)
    , @pvSexo AS CHAR(1)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE TbCliente SET 
        vNome = @pvNome
        , vCpf = @pvCpf
        , iIdade = @piIdade
        , vTelefone = @pvTelefone
        , vEmail = @pvEmail
        , vCelular = @pvCelular
        , vSexo = @pvSexo
    WHERE iId = @piId
End

GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbEndereco]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUpd_TbEndereco]
    @piIdTbCliente AS INT
    , @pvLogradouro AS VARCHAR(50)
    , @piNumero AS INT
    , @pvComplemento AS VARCHAR(50)
    , @pvBairro AS VARCHAR(50)
    , @pvCidade AS VARCHAR(50)
    , @pvEstado AS CHAR(2)
    , @pvCep AS CHAR(9)
    , @pvObs AS VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE TbEndereco SET 
        vLogradouro = @pvLogradouro
        , iNumero = @piNumero
        , vComplemento = @pvComplemento
        , vBairro = @pvBairro
        , vCidade = @pvCidade
        , vEstado = @pvEstado
        , vCep = @pvCep
        , vObs = @pvObs
    WHERE 
		iIdTbCliente = @piIdTbCliente
END
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbMontadora]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUpd_TbMontadora]
    @piId AS INT
    , @pvNome AS VARCHAR(50)
    , @pdFaturamentoEmDolar AS DECIMAL(18, 0)
    , @pdLucroAnualEmDolar AS DECIMAL(18, 0)
    , @pvCidadeFundacao AS VARCHAR(50)
    , @pdtDataFundacao AS DATE
    , @piQtdFabricas AS INT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE TbMontadora SET 
        vNome = @pvNome
        , dFaturamentoEmDolar = @pdFaturamentoEmDolar
        , dLucroAnualEmDolar = @pdLucroAnualEmDolar
        , vCidadeFundacao = @pvCidadeFundacao
        , dtDataFundacao = @pdtDataFundacao
        , iQtdFabricas = @piQtdFabricas
    WHERE iId = @piId
End

GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbMontadoraPais]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUpd_TbMontadoraPais]
    @piId AS INT
    , @piIdTbMontadora AS INT
    , @piIdTbPais AS INT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE TbMontadoraPais SET 
        iIdTbMontadora = @piIdTbMontadora
        , iIdTbPais = @piIdTbPais
    WHERE iId = @piId
End

GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbPais]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUpd_TbPais]
    @piId AS INT
    , @pvNome AS VARCHAR(50)
    , @pvIdiomaPrincipal AS VARCHAR(50)
    , @piQtdHabitantes AS BIGINT
    , @piAnoFundacao AS SMALLINT
    , @pdPibEmDolar AS DECIMAL(18, 0)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE TbPais SET 
        vNome = @pvNome
        , vIdiomaPrincipal = @pvIdiomaPrincipal
        , iQtdHabitantes = @piQtdHabitantes
        , iAnoFundacao = @piAnoFundacao
        , dPibEmDolar = @pdPibEmDolar
    WHERE iId = @piId
End

GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbVeiculo]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUpd_TbVeiculo]
    @piId AS INT
    , @piIdMontadora AS INT
    , @pvModelo AS VARCHAR(50)
    , @piAnoFabricacao AS INT
    , @pvCor AS VARCHAR(20)
	, @pdValorLocacao AS DECIMAL(13,2)
	, @pvPlaca AS CHAR(8)
	, @piQuilometragem AS BIGINT
	, @piEstadoVeiculo AS INT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE 
		TbVeiculo 
	SET 
        iIdMontadora = @piIdMontadora
        , vModelo = @pvModelo
        , iAnoFabricacao = @piAnoFabricacao
        , vCor = @pvCor
		, dValorLocacao = @pdValorLocacao
		, vPlaca = @pvPlaca
		, iQuilometragem = @piQuilometragem
		, iEstadoVeiculo = @piEstadoVeiculo
    WHERE 
		iId = @piId
END
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbVeiculoAlterarEstado]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUpd_TbVeiculoAlterarEstado]
    @piId AS INT
	, @piEstadoVeiculo AS INT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE 
		TbVeiculo 
	SET 
		iEstadoVeiculo = @piEstadoVeiculo
    WHERE 
		iId = @piId
END
GO
/****** Object:  StoredProcedure [dbo].[SPUpd_TbVendedor]    Script Date: 05/11/2019 09:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUpd_TbVendedor]
    @piId AS INT
    , @pvCpf AS VARCHAR(20)
    , @pdSalario AS DECIMAL(18, 0)
    , @piPercentualComissao AS INT
    , @pdtDataAdmissao AS DATE
    , @pdtDataDemissao AS DATE
	, @pvNome AS VARCHAR(50)
    , @pvLogin AS VARCHAR(50)
    , @pvSenha AS VARCHAR(200)
    , @pbAtivo AS BIT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE TbVendedor
	 SET 
         vCpf = @pvCpf
        , dSalario = @pdSalario
        , iPercentualComissao = @piPercentualComissao
        , dtDataAdmissao = @pdtDataAdmissao
        , dtDataDemissao = @pdtDataDemissao
	FROM TbVendedor
	INNER JOIN TbUsuario ON TbVendedor.iIdTbUsuario = TbUsuario.iId
    WHERE TbUsuario.iId = @piId

	UPDATE TbUsuario SET 
        vNome = @pvNome
        , vLogin = @pvLogin
        , vSenha = @pvSenha
        , bAtivo = @pbAtivo
    WHERE iId = @piId

END
GO
