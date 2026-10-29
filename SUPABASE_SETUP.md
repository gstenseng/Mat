# Innlogging for Gizzys Shopper

Appen bruker samme Supabase-prosjekt og e-postbaserte innlogging som oppussingsappen, men en **egen tabell** for handlelistene.

## Aktivering (engangsoppsett)

1. Åpne Supabase-prosjektet som brukes av oppussingsappen.
2. Åpne **SQL Editor** og kjør innholdet i `supabase/mat_user_lists.sql`.
3. Gå til **Authentication → URL Configuration** og legg inn `https://gstenseng.github.io/Mat/` under Redirect URLs. Behold eksisterende oppussingsadresser.
4. Sørg for at e-postinnlogging (OTP / magic link) er aktivert under **Authentication → Providers → Email**.
5. Åpne Gizzys Shopper → **Mine lister**, skriv inn e-postadresse og trykk **Send innloggingslenke**.

Lagring fungerer fortsatt lokalt uten innlogging. Første innlogging henter skydata, dersom de finnes. Ved konflikt blir du bedt om å velge mellom skylister og lokale lister. **Eksporter JSON-sikkerhetskopi før første synkronisering.**

Denne versjonen lagrer listeinnhold i skyen, men har ikke sanntidsoppdatering mellom flere åpne enheter. Oppdater eller logg inn igjen for å hente data på nytt.

Row Level Security sikrer at en innlogget bruker kun kan lese eller endre sine egne lister. Bruk bare publiserbar Supabase-nøkkel i frontend, aldri service-role-nøkkel.
