terraform { 
  cloud { 
    
    organization = "Agero" 

    workspaces { 
      name = "test-module" 
    } 
  } 
}