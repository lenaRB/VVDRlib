within VVDRlib.Bindings;
  record Provider
    "Provider specifies how to access data required for clients that are linked to the mediator this provider is used for."
     extends Modelica.Icons.Record;

     String modelID "Qualified name for the provider model.";
     String component = "" "Name for a component inside the provider model.";

     String template = "" "Code snippet with placeholders used for generating part of binding expression. 
                         If left empty, no transformation will be applied.";
  end Provider;