Сценарii Добре_декодер_прапор;
Змiннi:
  прапор1, прапор2, прапор3, прапор4 : рядок;
  результат_прапор : рядок;
  позицiя : цiле число;
 
  Функцiя перевертати_рядок(гарний_рядок : рядок) : рядок;
  Змiннi:
     часовий_рядок : рядок;
     i, рядок_довжина : цiле число;
     ц : ієрогліф;
  Почати
    часовий_рядок := гарний_рядок;
    рядок_довжина := Довжина(часовий_рядок) + 1;
    Заради i := 1 до рядок_довжина дiлити 2 зробити
    Почати
      ц := часовий_рядок[i];
      часовий_рядок[i] := часовий_рядок[рядок_довжина - i];
      часовий_рядок[рядок_довжина - i] := ц;
    Кiнец;
    перевертати_рядок := часовий_рядок;
  Кiнец;
 
Почати
  прапор1 := 'АРОКАРП';
  прапор2 := 'ФАРГОНИЛЕЦ';
  прапор3 := 'ЗА-ХОП-ХЛОПЯ';
  прапор4 := 'ЖРУЖЕОБЛОМОВ';
 
  позицiя := Положення('-',прапор3);
  В той час як позицiя <> 0 зробити
  Почати
    Видаляти(прапор3, позицiя, 1);
    позицiя := Положення('-',прапор3);
  Кiнец;
 
  прапор1[4] := 'П';    
  позицiя := Положення('ОБЛОМ',прапор4);
  Видаляти(прапор4, позицiя - 1, Довжина('ОВ') + 1 + Довжина('ОБЛОМ'));
  Вписувати('БА',прапор4,Довжина(прапор4)+1);
  прапор4[1] := 'Д';
 
  позицiя := Положення('ХОПХЛОП',прапор3);
  Видаляти(прапор3, позицiя + 3, 4);
  Вписувати('ЛЕНН',прапор3,Довжина(прапор3));
 
  прапор2 := перевертати_рядок(прапор2);
  Видаляти(прапор2, 3, Довжина(прапор2)-2);
 
  результат_прапор := прапор3 + '_' + перевертати_рядок(прапор1) + '_' + прапор2 + '_' + прапор4;
  Написати_лiнiя(результат_прапор);
Kiнец;
