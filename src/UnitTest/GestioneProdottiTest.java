package UnitTest;

import static org.junit.Assert.assertEquals;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;

import static org.junit.Assert.*;
import Beans.Prodotto;
import Database.DatabaseQuery;
@FixMethodOrder(MethodSorters.NAME_ASCENDING)

public class GestioneProdottiTest {
	
	//Variabili di istanza per un determinato prodotto
	private static final int id_prodotto = 80;
	private static final String descrizione = "Prodotto usato per il test";
	private static final int quantit�= 3;
	BigDecimal prezzo = new BigDecimal(30.00);
	private static final String tipo = "test tipo";
	private static final String condizione = "usato";
	private static final String nome = "Tazza Napoli";
	private static final String path= "test path";
	private static final String email= "andrea@bocelli.it";
	private static final int offerta= 20;
	
	private int size_prodotti= 0;
	
	//Test del metodo che permette di aggiungere un determinato prodotto
	@Test
	public void check1_AddProdotto() throws SQLException {
		Prodotto p = new Prodotto(); 
		p.setIdProdotto(id_prodotto);
		p.setDescrizione(descrizione);
		p.setQuantit�(quantit�);
		p.setPrezzo(prezzo);
		p.setTipo(tipo);
		p.setCondizione(condizione);
		p.setNome(nome);
		p.setPath(path);
		p.setIdUtente(email);
		p.setOfferta(offerta);
		DatabaseQuery.addProdotto(p, email);
		Prodotto risultato= DatabaseQuery.getProdotto(id_prodotto);
		risultato.setPrezzo(prezzo);
		p.setPrezzo(prezzo);
		assertEquals(p.toString(), risultato.toString());
	}
	
	//Test del metodo che permette di ricercare un prodotto
	@Test
	public void check2_RicercaProdotto() throws SQLException {
		ArrayList<Prodotto> prodotti = DatabaseQuery.cercaProdotti(nome);
		assertEquals(prodotti.get(0).getNome(), nome);
	}
	
	//Test che effettua il controllo del prodotto By_Id
	@Test
	public void check3_Prodotto_By_Id() throws SQLException {
		Prodotto p = DatabaseQuery.getProdotto(id_prodotto);
		assertEquals(p.getIdProdotto(), id_prodotto);
	}
	
	//Test che permette di ritornare i prodotti di un determinato utente
	@Test
	public void check4_RicercaByUtente() throws SQLException {
		ArrayList<Prodotto> prodotti= DatabaseQuery.getProdottiUtente(email);
		boolean check= true;
		for (Prodotto p: prodotti) {
			if (p.getUtente().equals(email)) {
				//Corretto
			}else {
				check= false;
			}
		}
		assertEquals(true, check);
	}
	
	//Test che controlla il get di tutti i prodotti resenti all'interno del DB
	@Test
	public void check5_getProdotti() throws SQLException {
		ArrayList<Prodotto> prodotti = DatabaseQuery.getProdotti();
		int precedente = prodotti.size();
		assertEquals(prodotti.size(), 4);
	}
	
	//Test del metodo che permette di eliminare un prodotto
	@Test
	public void check6_DeleteProdotto() throws SQLException {
		DatabaseQuery.delProdotto(id_prodotto);
		System.out.println("Identificativo del prodotto di ritorno: " + id_prodotto);
		Prodotto p= DatabaseQuery.getProdotto(id_prodotto);
		System.out.println(p.toString());
		assertEquals(p, null);
	}
}