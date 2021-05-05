1. select * from artikel;

2. select a_bez, a_vk, (a_bestand - a_minbestand) as a_bestand_ueber_min from artikel order by 3 desc;

3. select * from artikel where a_art = 'monitor';

4. select * from artikel where a_art = 'monitor' and a_vk > 150;

5. select a_art, min(a_vk) as mindestpreis, max(a_vk) as maximalpreis, avg(a_vk) as durchschnittspreis from artikel group by a_art;

6. select a_art, min(a_vk) as mindestpreis, max(a_vk) as maximalpreis, avg(a_vk) as durchschnittspreis from artikel group by a_art having durchschnittspreis > 100;

7. select avg(a_vk) as durchschnittspreis_komplett from artikel;

8. select * from artikel where a_vk > (select avg(a_vk) from artikel) order by a_vk desc;

9. select a_art, count(a_nr) from artikel group by a_art;

11. select * from kunden as k inner join bestellungen as b on k.k_nr = b.k_nr and b_erledigt = False;

12. select * from kunden as k left join bestellungen as b on k.k_nr = b.k_nr order by k.k_name;

13. select distinct * from artikel as a inner join bestelldetails as bd  on bd.a_nr = a.a_nr and a.a_art = 'Laserdrucker';

14. select distinct k_name, a_nr, b_menge, b_erledigt from kunden as k inner join bestellungen as b on b.k_nr = k.k_nr and b.b_erledigt = 0 inner join bestelldetails as bd on bd.b_nr = b.b_nr;

15. select * from kunden as k inner join bestellungen as b on k.k_nr = b.k_nr inner join bestelldetails as bd on b.b_nr = bd.b_nr inner join artikel as a on a.a_nr = bd.a_nr where a.a_art = 'CD-ROM' and a.a_vk > 80;

16. select distinct k_name, k_plz, k_ort, a.a_art, a.a_vk from kunden inner join bestellungen as b on b.k_nr = kunden.k_nr inner join bestelldetails as bd on bd.b_nr = b.b_nr inner join artikel as a on a.a_nr = bd.a_nr where kunden.k_plz between 80000 and 89999; 

17. select distinct a.a_bez, a.a_nr from bestellungen as b inner join bestelldetails as bd on bd.b_nr = b.b_nr inner join artikel as a  on bd.a_nr = a.a_nr where a.a_bez like 'M%';


-------------------------------
select k.* from kunden k inner join bestellungen as b on k.k_nr = b.k_nr inner join bestelldetails as bd on b.b_nr = bd.b_nr inner join artikel as a on bd.a_nr = a.a_nr where a.a_art = 'CD-ROM' and a.a_vk > 80 order by k.k_name;
