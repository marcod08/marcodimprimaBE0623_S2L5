select Count(*) as TotaliVerbali
from Verbale

select a.nome, a.cognome, Count(*) as TotaleVerbaliPerAnagrafe
from Anagrafica a
join verbale v on
a.IdVerbale = v.IdVerbale
group by a.nome, a.Cognome

select t.descrizione, count(*) as TotaleVerbaliPerViolazione
from TipoViolazione t
join verbale v on
t.IdViolazione = v.IdViolazione
group by t.Descrizione

SELECT a.nome, a.cognome, Sum(v.DecurtamentoPunti) as TotalePuntiDecurtatiPerAnagrafe
FROM Anagrafica a
JOIN Verbale v on
a.idverbale = v.IdVerbale
GROUP BY a.nome, a.cognome;

select a.Cognome, a.Nome, v.IndirizzoViolazione, v.DataTrascrizioneVerbale, v.Importo, v.DecurtamentoPunti
from Anagrafica a
join verbale v on
a.IdVerbale = v.IdVerbale
where Città='palermo'

SELECT a.Cognome, a.Nome, v.IndirizzoViolazione, v.DataTrascrizioneVerbale, v.Importo, v.DecurtamentoPunti
from Anagrafica a
JOIN Verbale v on
a.idVerbale = v.idverbale
where v.DataTrascrizioneVerbale BETWEEN '2021-01-01' AND '2022-01-01'

select a.cognome, a.nome, v.Importo as TotaleImporto
from anagrafica a
join verbale v on
a.IdVerbale = v.IdVerbale

select nome, cognome, Indirizzo, cap, codFisc
from anagrafica
where Città='Palermo'

declare @DataScelta date = '2022-08-13'

select DataTrascrizioneVerbale, Importo, DecurtamentoPunti
from Verbale
where CAST(DataTrascrizioneVerbale as Date) = @DataScelta

select NominativoAgente, count(*) as ConteggioViolazioni
from Verbale
group by NominativoAgente

select a.cognome, a.nome, a.indirizzo, v.dataTrascrizioneVerbale, v.importo, v.decurtamentoPunti
from Anagrafica a
join verbale v on
a.idverbale = v.IdVerbale
where v.DecurtamentoPunti >5

select a.nome, a.cognome, a.indirizzo, v.dataTrascrizioneVerbale, v.importo, v.decurtamentoPunti
from anagrafica a
join verbale v on 
a.idverbale = v.idverbale
where v.importo > 400


