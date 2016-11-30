within VVDRlib.Bindings;
record Client
    "Client is a model or component that requires a modifier (i.e. a binding)"
     extends Modelica.Icons.Record;

     String modelID "Qualified name for the client model.";
     String component = "" "Name for a component inside the client model.";
     String template = "" "A transformation that can be applied to the generated binding expression for this client. 
                         If left empty, no transformation will be applied.";
     Boolean isMandatory = false
      "Defines if the client must to be bound or if a binding is optional.";
      end Client;