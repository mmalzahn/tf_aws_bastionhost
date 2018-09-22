
# Terraform Module für das Erzeugen eines Bastionhosts

## Funktion & Anwendung

erstellung eines Bastionhosts in einem Subnetz. Dieser kann als Security Gateway in interne Netzwerke dienen.

## Einbinden in ein Projekt

---

```HCL
module "<modulname>" {
  source = "github.com/mmalzahn/tf_module_getbaseinfrastruktur.git"
  key_name = "<keyname>"
  key_path = "<path for keyfiles>"
}
```

### Inputs

---

|Inputname|Type|Beschreibung|
|---|---|---|
|**input1:** |[string]| ein ganz toller Input|

---
---

### Outputs

---

|Outputname|Type|Beschreibung|
|---|---|---|
|**output1**|[string]|irgendwas muss auch wieder raus|

## To Do

---

- [ ] Task1
- [ ] Task2

## Known Problems

---
