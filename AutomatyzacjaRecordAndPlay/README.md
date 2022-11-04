# Zadanie [moduł newsLetter 5]
testowanie rejestracji użytkownika aplikacji pestaShop; 
zadanie było wieloetapowe; poniżej treści kolejnych etapów zadania; 

-Zainstaluj dodatek Selenium IDE do swojej przeglądarki (Firefox / Google Chrome / MicrosoftEdge).

-Czas nagrać swój pierwszy test. Wykonując krok po kroku instrukcje powyżej, nagraj swójpierwszy test, który będzie zakładał konto na stronie sklepu internetowego.
Pamiętaj, aby ostatnim krokiem było wylogowanie się użytkownika.

-Uruchom nagrany test, klikając z paska narzędzi opcję: Run current test
Aby Twój test zakończył się poprawnie, należy zmienić jego adres e-mail, aby móc stworzyćnowego użytkownika.
Wystarczy podmienić adres e-mail w polu Value, aby nowy użytkownik został utworzony.

-Po dograniu asercji zmień ręcznie jej oczekiwaną wartość w polu Value na: Lab Test.
Zaobserwuj, co się stało z testem.

-Utwórz nowy test, nagraj rejestrację użytkownika,  
zamiast asercji dodaj tym razem sprawdzenie opcji verify -> Text,  uruchom test,
zmień ręcznie oczekiwaną wartość w kroku verify na: costam, 
ponownie uruchom test.

Czy jest jakaś różnica w wynikach testów?

[ rozwiazanie jest w ./pestaShopv1.side ]

# Zadanie [moduł newsLetter 5]
Zautomatyzujmy nasz serwis Fintech.
[...]
Nagraj test w Selenium IDE, który będzie dodawał do Twojego konta nowy rachunek (Bills).
* (dla chętnych) - postaraj się przygotować skrypt tak, aby wpisywał jak najwięcej losowychwartości.

[ rozwiazanie jest w ./fintech.side ]

[UWAGA: rozwiązanie testuje wyłącznie dodawanie nowego rachunku; w szczególności, zakłada się, że jest zalogowany/zapamiętany w przeglądarce
użytkownik]
