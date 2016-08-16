/*
 * generated by Xtext
 */
package org.wsn.sennet.xtext.generator

import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IFileSystemAccess
import org.eclipse.xtext.generator.IGenerator

/**
 * Generates code from your model files on save.
 * 
 * This class delegates to concrete generators.
 * 
 * see http://www.eclipse.org/Xtext/documentation.html#TutorialCodeGeneration
 */
class DSLGenerator implements IGenerator {
  
  /**
   * List of delegate generators
   */
  val generators = #[
    new MakefileGenerator,
    new HeaderGenerator,
    new AppCGenerator,
    new CGenerator
  ]
	
	override void doGenerate(Resource resource, IFileSystemAccess fsa) {
	  generators.forEach[doGenerate(resource, fsa)]
	}
}
