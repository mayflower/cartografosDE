---
title: Level 2 - Betrieb
description: Die Cloud Native Foundation ist etabliert und Sie gehen in die Produktion über.
---

## <i class="fas fa-users"></i> People 

### Personen Überblick

Jeder Einzelne investiert aktiv in Ausbildung und Qualifikation. Dies hat dazu geführt, dass kleine Gruppen von KMU und Fachleuten entstanden sind. DevOps hat mit der Einbeziehung von Ingenieuren mit Cloud-Kenntnissen und Entwicklergruppen begonnen, die Plattformkenntnisse anbieten. Auch die Bemühungen um Cloud Native werden von Mitgliedern der Führungsebene getragen.

### Organisatorischer Wandel

Organisatorische Veränderungen finden statt. Sie werden Projektteams definieren, agile Projektgruppen bilden und schnelle Feedback-/Testschleifen einrichten.

### Teams und Dezentralisierung

Wir beginnen mit der Formalisierung zentraler Dienste und Zuständigkeiten, einschließlich der Konsolidierung von Werkzeugen sowie der Aussonderung oder Verdrängung von nicht cloudbasierten Werkzeugen.

### Sicherheit

Ihr Team muss sich darauf konzentrieren, wer für die Sicherheit des Kubernetes-Clusters verantwortlich ist und wie sie verwaltet werden soll. Dazu muss das Sicherheitsteam einbezogen werden.

### Agilität der Entwickler

Das Team ist mit technisch anspruchsvollen Problemen vertraut und weiß, wie Cloud Native helfen kann. Es gibt eine organisatorische Verpflichtung zur Dezentralisierung und zum automatisierten Testen von Builds, mit automatischer Bereitstellung in einigen Umgebungen.

### Fortbildung von Entwicklern

Ihr breiteres Entwicklungsteam ist in der Lage, die Grundlagen von Kubernetes zu bedienen, einschließlich:
- Verbinden eines Benutzers mit der Kubernetes-API
- Sich mit Kubectl-Befehlen vertraut machen
- Verstehen, wie man Ressourcen auflistet und anzeigt
- Ausführen grundlegender Aktionen (mechanische Aktionen mit begrenztem Verständnis der Funktionsweise)

### CNCF-Zertifizierungen

Organisationen sollten die CKA- und CKAD-Prüfungen für die Stufen 2 und 3 in Betracht ziehen.

#### Certified Kubernetes Administrator (CKA)

Dieses Programm gewährleistet, dass CKAs die Fähigkeiten, das Wissen und die Kompetenz besitzen, um die Aufgaben eines Kubernetes-Administrators zu erfüllen.

#### Certified Kubernetes Application Developer (CKAD)

Diese Prüfung bescheinigt, dass Benutzer Cloud-native Anwendungen für Kubernetes entwerfen, erstellen, konfigurieren und bereitstellen können.

## <i class="fas fa-cogs"></i> Process

### Prozess-Übersicht

Sie werden sich auf die Produktionsförderung von Basisanwendungen konzentrieren. Dazu gehört, dass Sie mit Git und CI vertraut sind. Außerdem führen Sie strukturierte Build- und Deployment-Prozesse ein, die die Qualitäten eines Cloud- und Container-nativen CI/CD-Systems aufweisen.

### CI/CD

Für Ihre Anwendung werden Sie strukturierte Build- und Deployment-Prozesse einrichten, die die Qualitäten eines cloud- und container-nativen CI/CD-Systems aufweisen.

### Änderungskontrolle

Hier entwickeln Sie ein grundlegendes Verständnis des Arbeitsablaufs, von der Versionsverwaltung (scm) bis zur Bereitstellung und haben Zugang zu Merge/Tag Commits in scm, um Deployments zu starten.

### Sicherheit

Integrieren Sie Sicherheit in Ihren CI-Prozess, einschließlich Container-Scanning und Konfigurations-Scanning.

### Audit und Logs

Nehmen Sie sich Zeit für die Definition der Log-Aggregation.


## <i class="fas fa-edit"></i> Policy

### Überblick über die Richtlinien

Wenn sich Ihre Dienste der Produktion nähern, haben Sie erste Richtlinien als Standard vereinbart, die meist auch dokumentiert sind.

### Erstellung von Richtlinien

Definieren Sie erste Ressourcenmetriken und beginnen Sie mit der Datenerfassung.

### Compliance

Erstprüfung, die manuell oder durch einfache Skripte durchgeführt wird.

## <i class="fas fa-server"></i> Technology

### Technologie-Übersicht

Dies ist Ihr erster Schritt in die Produktion. Sie haben hart gearbeitet, um Ihre Grundlagen in Stufe 1 zu schaffen, und jetzt gehen Sie in die Produktion über. Vielleicht haben Sie mit etwas relativ Kleinem und Einfachem begonnen, aber dieser Sprung in die Produktion hat Sie sicherlich dazu gezwungen, einige wichtige Schritte zu unternehmen. Wahrscheinlich mussten Sie Monitoring und Überwachung in Ihre Workloads einbauen. Sie haben wichtige Überwachungs-Tools eingeführt und begonnen, Ihre Cluster auf Standardmetriken wie RAM, CPU usw. zu untersuchen. Auch wenn Sie mit der Evaluierung der Nachverfolgung von Anwendungen beginnen, sollten Sie sich nicht zu viele Gedanken darüber machen, wenn Sie damit begonnen haben, Kernmetriken zu sammeln. Ihr Hauptaugenmerk liegt darauf, eine Anwendung in Produktion zu bringen und über ausreichende Plattformressourcen, Überwachungsfunktionen und Betriebskapazitäten zu verfügen, um sie innerhalb Ihres Unternehmens zu nutzen.

### Infrastruktur

Da Ihr Ziel die Produktion ist, haben Sie Kubernetes-Cluster für die Produktion mit dem Schwerpunkt auf Zuverlässigkeit und Sicherheit aufgebaut.

### Container and Runtime Management

Sie arbeiten jetzt in der Produktion. Sie werden mit Werkzeugen experimentieren, um die Grundlagen in der Produktion zu erweitern, um bei Sicherheit, Richtlinien-Management, Workload-Fehlkonfigurationen, Ressourcen-Anforderungen und -Limitierungen zu helfen. Die wichtigsten Sicherheitspraktiken für die Container-Hygiene werden integriert.

### Anwendungsmuster und Refactoring

Sie sind in Produktion und haben Ihre ersten APIs offengelegt. Ziehen Sie die Entwicklung eines "microservices first"-Frameworks in Betracht, insbesondere wenn Ihre erste Wahl immer ein microservices-Ansatz ist. Wenn dies nicht der Fall ist, ziehen Sie Anwendungen in Betracht, die für Lift and Shift geeignet sind, oder migrieren Sie die Anwendung erst später.

### Anwendungsfreigabe und Betrieb

Für Ihre ersten Schritte in die Produktion werden Sie CI- oder Release-Tools, kubectl und kustomize verwenden, um möglicherweise Ihre ersten kleineren Anwendungen zu deployen. Jetzt ist es wirklich wichtig, dass Sie grundlegende Fähigkeiten in der Kubernetes-Konfiguration entwickeln.

### Sicherheit und Policy

Stellen Sie sicher, dass Ihre Entwicklungs- und Betriebsgruppen sich an gute Praktiken für Container, Geheimnisse und Sicherheit halten. Da Sie in der Produktion tätig sind, sollten Sie sicherstellen, dass Sie auch die Verschlüsselung sowie die Authentifizierung und Autorisierung im Griff haben.

### Testen und Erkennen von Fehlern

Jetzt, wo Sie in der Produktion sind, werden Sie mit Werkzeugen experimentieren, die Ihnen bei der Sicherheit, Richtlinienverwaltung, Fehlkonfigurationen der Arbeitslast, Ressourcenanforderungen, Grenzen und Beobachtbarkeit in Ihrer Staging- oder Entwicklungsumgebung helfen.

## <i class="fas fa-building"></i> Wirtschaftliche Ergebnisse

Cloud Native ist nun etabliert und Ihre Technologen gehen in die Produktion über. Während das technische Ergebnis von Stufe 2 eine voll funktionsfähige Anwendung oder Gruppe von Anwendungen ist, die auf Cloud Native-Tools und -Praktiken migriert wurden, sind die Geschäftsergebnisse die Fähigkeit, die Vorteile der Migrationen zu bewerten. Dies ist auch die Stufe, die die meisten Kunden/Unternehmen erreichen und auf der sie stehen bleiben. Hier zeigt ein Cloud Native Reifegradmodell seinen wahren Wert.

Anhand der in Stufe 1 festgelegten KPIs messen Sie den Erfolg und teilen ihn den Stakeholdern mit.

In der Betriebsphase konzentrieren Sie sich auf den Übergang zur Produktion. Sie werden Standards für die Technologie festgelegt haben, Ihre Mitarbeiter werden sie bedienen und Richtlinien und Verfahren einführen. Ihr Geschäftsergebnis wird sich um die Produktionsmigration drehen. Die Geschäftsleitung Ihres Unternehmens wird verstehen wollen, welche Anwendungen verschoben werden und warum. Sie müssen in der Lage sein, Ihren Geschäftsführern die Pläne klar zu vermitteln. Bei der Arbeit der Teams in Stufe 2 werden sich auch wiederholbare Muster herausbilden. Diese werden auf Ihre Geschäftsergebnisse angewandt, so dass die Vorteile, die Sie bei einer migrierten Anwendung sehen, ohne großen Aufwand auf eine andere Anwendung übertragen werden können. Diese Muster werden dazu beitragen, die Abläufe in Ihren Entwicklungs-, Sicherheits- und Betriebsteams zu optimieren.

Zu Ihren KPIs kann auch Ihre Kapitalrendite (ROI) gehören, aber Sie sollten sich darüber im Klaren sein, dass Ihre ROI in Stufe 2 niedriger sein wird als in Stufe 5. Das liegt daran, dass Sie viel in den Erwerb von Werkzeugen, den Aufbau des richtigen Teams und der richtigen Fähigkeiten investieren, während Sie in Stufe 5 optimieren.
