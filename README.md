# mat. – handleliste

Mobilvennlig handleliste laget av Gisle Stenseng, basert på ideen fra [oppussing](https://github.com/gstenseng/oppussing).

## Funksjoner
- Flere handlelister, antall, avkrysning, pris og estimert sum.
- Best-effort produktsøk hos Oda med direkte lenke og manuell reserve.
- Del handleliste via mobilens delefunksjon.
- Lokal lagring (localStorage), JSON-import og eksport.

## Publisering
Aktiver GitHub Pages under **Settings → Pages → Deploy from a branch → main / (root)**.
Appadresse: https://gstenseng.github.io/Mat/

## Begrensninger
Oda-oppslaget bruker et uoffisielt endepunkt og kan bli blokkert av CORS eller endringer hos Oda. Det er ingen kobling til Oda-konto eller handlekurv. Prisene må kontrolleres før bestilling. Handlelister synkroniseres ikke mellom enheter uten en fremtidig backend.
