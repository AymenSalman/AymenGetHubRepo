/*
* generated by Xtext
*/
package org.wsn.sennet.xtext;

import org.eclipse.xtext.junit4.IInjectorProvider;

import com.google.inject.Injector;

public class DSLUiInjectorProvider implements IInjectorProvider {
	
	public Injector getInjector() {
		return org.wsn.sennet.xtext.ui.internal.DSLActivator.getInstance().getInjector("org.wsn.sennet.xtext.DSL");
	}
	
}