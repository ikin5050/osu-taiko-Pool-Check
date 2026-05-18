**osu!taiko Pool Check

This database contains (almost) all maps pooled in an osu!taiko tournament. The dataset is based on the [o!TR public datasets](https://data.otr.stagec.net/), but because that doesn't actually say what slot a map was used in, I have replaced a bunch of tournaments and added specific slot names. This has only happened for about 80/200 tourneys. If you see a map with slot 'NM50', that just means it was a no-mod pick. Deducing freemod picks was tricky, and I don't think I did it right so they maybe a bit iffy.

Thanks to the (osu! Tournament Rating project)[https://otr.stagec.net/] for open-sourcing their dataset. It made it significantly faster to complete as I kinda lost hope after doing 80 pools manually. This project is not affiliated with, endorsed by, or officially represents the o!TR project.

The vision is that people can/will use this to check whether specific maps have been pooled before (filter by map_id) or as a more general record for taiko tournament history.

*If you think there are tournaments missing, add an issue on github and I'll try add them. 

To view and query the database:

* Add [SQLite viewer](https://marketplace.visualstudio.com/items?itemName=qwtel.sqlite-viewer) extension to VSCode (you can then just open the .db file in VSCode) <- personal favorite
* Use a [webviewer](https://sqliteviewer.app/)
* Add [datasette](https://pypi.org/project/datasette/) to your python environment and run ``datasette database.db``. It will open on localhost and can be accessed through a web browser.
* [DB Browser for SQLite](https://sqlitebrowser.org/) if you like the look of a spreadsheet.

When using datasette or DB Browser, you will need to query using SQL. There are some GPT-generated example queries included in ``example queries.sql``.

<details>
<summary>Included tournaments</summary>
3 Digit Taiko World Cup 2020
3 Digit Taiko World Cup 2021
3 Mousquetaires Tournoi Taiko
4 Digit Taiko World Cup 2023
A Las Piñas 2022
Advanced Global Taiko Showdown 2019
Advanced Global Taiko Showdown 2020
Advanced Global Taiko Showdown 2021
Advanced Global Taiko Showdown 2022
Advanced Global Taiko Showdown 2023
Advanced Global Taiko Showdown 2025
Asian Taiko Showdown 2018
Asian-Oceanian Taiko Showdown 2019
Ausu!taiko Tournament 2019
Ausu!taiko Tournament 2020
Ausu!taiko Tournament 2021
Ausu!taiko Tournament 2022
Ausu!taiko Tournament 2023
Aus_Taiko Cup 2025
Beginner Global Taiko Showdown 2020
Beginners Taiko Tournament 2022
Beginners Taiko Tournament 2023
Beginners Taiko Tournament 2024
Beginners Taiko Tournament 4
Beginners Taiko Tournament 5
Beginners Taiko Tournament 6
Beginner_s Taiko Tournament Season 7
Beginner_s Taiko Tournament Season 8
Beginner_s Taiko Tournament Season 9
Blaze Killing Taiko Frontier _1
Cavoe's osu! event Global Taiko Showdown 2023
Cavoe's osu! event Global Taiko Showdown 2025
Chinese Taiko Showdown 2025
Chinese Taiko Showdown
CIS Beginners Taiko Event 2021
CIS Middle Taiko Event 2022
Community Taiko Tournament
Continental Global Taiko Showdown 2019 4v4
Continental Global Taiko Showdown 2019 regional
Continental Global Taiko Showdown 2021 4v4
Continental Global Taiko Showdown 2021 Asia
Continental Global Taiko Showdown 2021 Europe
Continental Global Taiko Showdown 2021 North America
Continental Global Taiko Showdown 2021 Oceania Southeast Asia
Continental Global Taiko Showdown 2021 South America
Cozy Cup
DeltaMax_s Taiko Oni Overlord
Ender_s Nightly Deathmatch _2
Ender_s Nightly Deathmatch _4
Ender_s Nightly Deathmatch
European Taiko Tournament 2018
European Taiko Tournament 2021
Expert Global Taiko Showdown 2020
Expert Global Taiko Showdown 2021
Expert Global Taiko Showdown 2022
Expert Global Taiko Showdown 2025
Feed the Pet Tournament
Free Mod Radio
French Taiko Grand Prix
Global Taiko Malaysian Showdown 2023
Indonesian Taiko Beginner Showdown
Indonesian Taiko Showdown 1
Indonesian Taiko Showdown 2
Intermediate Global Taiko Showdown 2018
Intermediate Global Taiko Showdown 2019
Intermediate Global Taiko Showdown 2020
Intermediate Global Taiko Showdown 2021
Intermediate Global Taiko Showdown 2022
Intermediate Global Taiko Showdown 2023
Intermediate Global Taiko Showdown 2025
just _an_ open rank team taiko tourney
Katacheh Global Taiko Showdown 2019
Kiai Cup 1st Edition
Korean Rising Taiko Tournament _2
Last Man Standing 1
Last Man Standing 2
Last Man Standing 3
Last Man Standing 4
LordEnder Global Taiko Showdown 2021
Midway Taiko Cup 2
Nanahira Taiko Cup 2
Nanahira Taiko Cup
Newbie Taiko Journey 1
Newbie Taiko Journey 2
Newbie Taiko Journey 3
Nightmare Taiko Frontier _1
North & South American Taiko Tournament 2019
North & South American Taiko Tournament 2024
North & South American Taiko Tournament 2025
North & South American Taiko Tournament New Year Edition
North American Taiko Tournament 2018
NZ Taiko Tournament 2022
NZ Taiko Tournament 2025
NZ_Aus Taiko HD Tournament 2023
Old Map Fantasy Taiko Spinoff Higher
Old Map Fantasy Taiko Spinoff Lower
Onitou Taiko Cup 1
Onitou Taiko Cup 2
osu! Multi Mode French Fiesta _1 _osu_taiko_
osu! Philippines Nationals 2022 - osu_taiko
osu! Philippines Nationals 2023 - osu_taiko
osu!taiko French Tournament 2022
osu!taiko French Tournament 2023
osu!taiko French Tournament 2024
osu!taiko French Tournament 2025
osu!taiko Intermediate Loved Tournament
osu!taiko Japanese Nonagon Tournament 2
osu!taiko Japanese Nonagon Tournament 3
osu!taiko Japanese Nonagon Tournament 4
osu!taiko Japanese Nonagon Tournament
osu!taiko Malaysian Tournament 2022
osu_taiko Suiji 2025
osu_taiko World Cup 2016
osu_taiko World Cup 2017
osu_taiko World Cup 2018
osu_taiko World Cup 2019
osu_taiko World Cup 2020
osu_taiko World Cup 2021
osu_taiko World Cup 2022
osu_taiko World Cup 2023
osu_taiko World Cup 2024
osu_taiko World Cup 2025
osu_taiko 北斗CUP
Play-Osu_RU Taiko Open CIS Tournament 2026
Project Prism 2024
Random Global Taiko Showdown 2021
Random Global Taiko Showdown 2022
Random Global Taiko Showdown 2023
Random Global Taiko Showdown 2024
Random Global Taiko Showdown 2025
Random Global Taiko Showdown 2026
Renaissance Cup
Rising Global Taiko Showdown 2021
Rising Global Taiko Showdown 2022
Rising Global Taiko Showdown 2025
Saturday Night Taikoway
Single Mod Tournament - HD Edition
Sola_s Gimmick Clash
Southeast Asia Taiko Championship 2
SouthEast Asia Taiko Championship
Southeast Asia Taiko Rising Stars
Squad Global Taiko Showdown 2021
Squad Global Taiko Showdown 2023
Squad Global Taiko Showdown 2025
Taiko 2v2 Convert Tourney v2
Taiko 2v2 Convert Tourney v3
Taiko 2v2 Converted Maps Tourney
Taiko All Rounder Tournament 2
Taiko All Rounder Tournament 3
Taiko All Rounder Tournament 4
Taiko All Rounder Tournament 5
Taiko Collegiate League 2022
Taiko Collegiate League 2024
Taiko Colosseum Autumn 2021
Taiko Colosseum Autumn 2022
Taiko Colosseum Spring 2021
Taiko Colosseum Spring 2022
Taiko Colosseum Spring 2023
Taiko Colosseum Summer 2021
Taiko Colosseum Summer 2022
Taiko Colosseum Summer 2023
Taiko Colosseum Winter 2021
Taiko Colosseum Winter 2022
Taiko Colosseum Winter 2023
Taiko Colosseum Winter 2024
Taiko Convert Tournament v4
Taiko Convert Tournament v5
Taiko Convert Tournament v6
Taiko French Tournament 2019 _Higher Bracket_
Taiko French Tournament 2019 _Lower Bracket_
Taiko French Tournament 2020 _Higher Bracket_
Taiko French Tournament 2020 _Lower Bracket_
Taiko French Tournament 2021
Taiko Italian Tournament Series _2
Taiko LMS_ Shift Cup 2
Taiko Mod Tournament - 1st Edition
TAIKO MYSTERIOUS MAPS TOURNAMENT 2
Taiko Mysterious Maps Tournament
Taiko Nightmare Tournament
Taiko Open CIS Tournament 2025
Taiko Suiji Cup 2020
Taiko Suiji Cup 2021
Taiko Suiji Cup 2023 Summer
Taiko Suiji Cup 2023
Taiko Suiji Cup Winter 2020
Taiko Suiji Cup
Taiko Team Festival
Taiko_ Draft Masters
Torneo Bien Gaucho 2019
Torneo Bien Gaucho 2020
Torneo Bien Gaucho 2021
Torneo Bien Gaucho 2022
Torneo Taiko México 2021
Torneo Taiko México 2022
Torneo Taiko México 2023
Torneo Taiko México 2024
Torneo Taiko México
Touche and Myuka_s Taiko Cup
Vaf_s Autumn Fiesta
Vietnam osu!taiko Tournament 2
Vietnam osu_taiko Tournament 3
Vietnam osu_taiko Tournament 4
Vietnam osu_taiko Tournament 5
_gts Taiko All Rounder Tournament
</details>

<details>
  <summary>o!TR terms of use</summary>
  osu! Tournament Rating (o!TR) Dataset Terms of Use

  By accessing or using this dataset, you agree to the following terms.
  
  Requirements
  
  1. Attribution
  Any permitted use of this dataset must include clear and visible credit to the osu! Tournament Rating project, with a link to this URL: https://otr.stagec.net/
  
  2. No Impersonation
  You may not use this dataset in any way that implies affiliation with, endorsement by, or official representation of o!TR without explicit written permission.
  
  3. Redistribution
  You may re-host, republish, or redistribute this dataset exactly as-is, provided a copy of these terms are included with the copies and all checksums are included and unmodified.
</details>
