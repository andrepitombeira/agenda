package br.com.caelum.agenda.exception;

public class DAOException extends RuntimeException {
	
	public DAOException() {
		super();
	}

	public DAOException(String msg) {
		super(msg);
	}
	
	public DAOException(Throwable cause) {
		super(cause);
	}
 }
