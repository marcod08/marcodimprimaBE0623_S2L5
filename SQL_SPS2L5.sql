
CREATE PROCEDURE ContravvenzioniPerAnno
@anno Int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT DataTrascrizioneVerbale, Importo, DecurtamentoPunti
    FROM Verbale
    WHERE YEAR(DataTrascrizioneVerbale) = @Anno
END;
GO
--questa procedura non mi sembra funzionare anche se uno snippet molto simile che ho usato nelle query funziona
CREATE PROCEDURE TotalePuntiDecurtatiPerData
    @DataScelta DATE
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
    SET NOCOUNT ON;

	-- Insert statements for procedure here
    SELECT SUM(DecurtamentoPunti) AS TotalePuntiDecurtati
    FROM Verbale
    WHERE CAST(DataTrascrizioneVerbale as Date) = @DataScelta
END;
GO

CREATE PROCEDURE EliminaVerbale
    @IdVerbale INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
    SET NOCOUNT ON;

	-- Insert statements for procedure here
    DELETE FROM Verbale 
	WHERE IDVerbale = @IdVerbale
END;
GO
