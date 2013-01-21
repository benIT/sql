create or replace procedure proc_test_xmb is
--zone de declaration des variables  (ne pas mettre declare)
t_count integer :=0 ;
begin
SELECT COUNT(*)  INTO t_count FROM user_tables WHERE table_name = 'TEST';

--dbms_output.put_line('debug : '|| t_count) ; 
IF t_count = 0 THEN
    EXECUTE IMMEDIATE 'create table TEST (id number, url varchar(1000) NOT NULL)';
END IF;

EXECUTE IMMEDIATE 'insert into TEST values (1, ''a'')';

end proc_test_xmb ;





--------------------------------------------------------------------------------------------------------------

create or replace procedure proc_test_xmb is

--zone de declaration des variables  (ne pas mettre declare)
cursor c_doc is  SELECT doc_numdos FROM document where doc_numdos like 'FOOBAR%';
v_numdos document.doc_numdos%TYPE ;  
compteur integer :=0 ;


--main : instructions
begin

--ouverture du curseur
open c_doc ;
loop
  --associe les colonnes de la ligne parcourue par le curseur dans les variables précédemment déclarées
    Fetch c_doc into v_numdos ;
  compteur := compteur +1  ;
  dbms_output.put_line('numéro : '|| compteur) ; 
  dbms_output.put_line('numdos : '||v_numdos) ; 

  
  Exit when c_doc%NOTFOUND;
end loop;
 
close c_doc ; 
--fermeture du curseur

--fin de procédure ;
end proc_test_xmb ;
