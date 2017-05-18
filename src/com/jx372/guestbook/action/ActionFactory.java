package com.jx372.guestbook.action;


public abstract class ActionFactory {
	public abstract Action getAction(String actionName);
}
