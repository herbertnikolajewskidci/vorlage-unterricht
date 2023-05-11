# Request

Wir beschäftigen uns nun in ExpressJS mit den grundlegenden Konzepten für Anfragen. Wir werden uns auf das Anfrage-Objekt (`req`) konzentrieren und lernen, wie wir JSON-Anfragen empfangen können. Außerdem werden wir das REST-Konzept erweitern und uns darauf konzentrieren, wie wir Daten mit der HTTP POST-Methode erstellen können.

## Das Anfrage-Objekt: `req`

In ExpressJS repräsentiert das Anfrage-Objekt (`req`) den HTTP-Request, der vom Client an den Server gesendet wird. Es enthält Informationen über die Anfrage, wie z.B. den Anfrage-URL, die Header-Informationen und die Anfrageparameter.

Um auf das Anfrage-Objekt zuzugreifen, können wir eine Callback-Funktion mit den Parametern `req` und `res` in unserem ExpressJS-Endpunkt definieren. Hier ist ein Beispiel:

```javascript
app.get("/example", function (req, res) {
    // Hier können wir auf das Anfrage-Objekt zugreifen (req)
});
```

Im obigen Beispiel können wir auf das `req`-Objekt zugreifen, um Informationen über die Anfrage abzurufen.

## Empfangen von JSON-Anfragen: `app.post(<path>, <controller>)`, `req.body`

Um JSON-Anfragen in ExpressJS zu empfangen, können wir den Endpunkt mit der `app.post()`-Methode definieren. Hier ist ein Beispiel:

```javascript
app.post("/api/data", function (req, res) {
    // Hier empfangen wir die JSON-Anfrage
});
```

Im obigen Beispiel wird der Endpunkt `/api/data` definiert und die Callback-Funktion wird aufgerufen, wenn eine POST-Anfrage an diesen Endpunkt gesendet wird.

Um auf den Inhalt der JSON-Anfrage zuzugreifen, verwenden wir das `req.body`-Objekt. Das `req.body`-Objekt enthält die analysierten Daten des Anfragekörpers. Beachte, dass du den Körperparser (Body Parser) in deiner ExpressJS-Anwendung installieren musst, um auf das `req.body`-Objekt zugreifen zu können.

Hier ist ein Beispiel, wie du auf die empfangenen Daten einer JSON-Anfrage zugreifen kannst:

```javascript
app.post("/api/data", function (req, res) {
    const jsonData = req.body; // Zugriff auf die empfangenen Daten

    // Verarbeite die Daten oder führe andere Operationen durch

    res.send("Daten erfolgreich empfangen");
});
```

Im obigen Beispiel greifen wir auf das `req.body`-Objekt zu und speichern die empfangenen Daten in der Variablen `jsonData`. Du kannst dann die empfangenen Daten verwenden, um sie zu verarbeiten oder andere Operationen durchzuführen.

## REST II: POST ist für das Erstellen von Daten

Das REST-Konzept definiert verschiedene Methoden, die auf Ressourcen angewendet werden können. Eine der wichtigsten Methoden ist `POST`, die normalerweise verwendet wird, um neue Daten zu erstellen.

In ExpressJS können wir die `app.post()`-Methode verwenden, um einen Endpunkt zu definieren, der POST-Anfragen akzeptiert und neue Daten erstellt. Hier ist ein Beispiel:

```javascript
app.post("/api/data", function (req, res) {
    // Hier kannst du den Code zum Erstellen der Daten implementieren

    res.send("Daten erfolgreich erstellt");
});
```

Im obigen Beispiel definieren wir den Endpunkt `/api/data` mit der `app.post()`-Methode. Die Callback-Funktion wird aufgerufen, wenn eine POST-Anfrage an diesen Endpunkt gesendet wird.

Innerhalb der Callback-Funktion kannst du den Code zum Erstellen der Daten implementieren. Das kann das Speichern der Daten in einer Datenbank, das Aktualisieren eines Datensatzes oder andere Datenverarbeitungsoperationen sein.

Nachdem die Daten erfolgreich erstellt wurden, kannst du die `res.send()`-Methode verwenden, um eine Antwort an den Client zu senden. In diesem Beispiel senden wir die Nachricht "Daten erfolgreich erstellt" als Antwort.
