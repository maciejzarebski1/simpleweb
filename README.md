# Jak uruchomić

Wystarczy pobrać Dockerfile oraz plik .private-key, umieścić w jednym katalogu, po czym w tym katalogu wywołać komendy

`docker build --ssh default=./.private-key -t lab2.v1 .`

a następnie

`docker run -p 5000:8080 lab2.v1`

Wówczas aplikacja powinna wystartować i powinno być możliwe wysłanie żądania GET pod adres localhost:5000.

Informacja dot. bezpieczeństwa: Klucz zamieszczony w repozytorium to tzw. "Deploy key" - jest przypisany wyłącznie do tego repozytorium, służy do dostępu do niego, i nie może być użyty do uwierzytelnienia w żadnym innym scenariuszu.