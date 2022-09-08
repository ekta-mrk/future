public class CardPayment extends Payment{
    integer cardNumber;
    string cardHolderName;
    public CardPayment(integer cardNumber, string cardHolder, integer Amount){
        super(Amount);
        this.cardNumber = cardNumber;
        this.cardHolderName = cardHolderName;
		this.Name = 'Ekta';
    }
    
    }
}




/*CashPayment CP =new CashPayment(6000);
CP.cashPaymentDetails();
system.debug('====================');
CardPayment mp = new CardPayment(659825, 'Ekta', 2500);
mp.cardPaymentDetails();*/