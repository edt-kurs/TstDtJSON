﻿
&НаСервере
Функция ТестДатаВСтрокуJSON (Д, ФорматДаты, ВариантЗаписиДаты)
	
	возврат Строка (ФорматДаты) + " " + Строка (ВариантЗаписиДаты) + " " + ЗаписатьДатуJSON(Д, ФорматДаты, ВариантЗаписиДаты);
	
КонецФункции
	
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	Д = ТекущаяДата();
	Результат.ДобавитьСтроку(ТестДатаВСтрокуJSON(Д, ФорматДатыJSON.ISO, ВариантЗаписиДатыJSON.УниверсальнаяДата));
	Результат.ДобавитьСтроку(ТестДатаВСтрокуJSON(Д, ФорматДатыJSON.JavaScript, ВариантЗаписиДатыJSON.УниверсальнаяДата));
	Результат.ДобавитьСтроку(ТестДатаВСтрокуJSON(Д, ФорматДатыJSON.Microsoft, ВариантЗаписиДатыJSON.УниверсальнаяДата));
	Результат.ДобавитьСтроку(ТестДатаВСтрокуJSON(Д, ФорматДатыJSON.ISO, ВариантЗаписиДатыJSON.ЛокальнаяДата));
	Результат.ДобавитьСтроку(ТестДатаВСтрокуJSON(Д, ФорматДатыJSON.ISO, ВариантЗаписиДатыJSON.ЛокальнаяДатаСоСмещением));
КонецПроцедуры
