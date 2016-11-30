within VVDRlib.Bindings;
record Mediator
    "Mediator captures data required for inferring binding expression for the referenced clients using the referenced providers."
     extends Modelica.Icons.Record;

    String mType = ""
      "Reflects the type required by the referenced cleints. Optional.";

    String template = "" "A transformation that can include calls to functions that can handle unsorted arrays(e.g., add(:), max(:), toArray(:), etc.). 
    If left empty, no transformation will be applied.";

    Client clients[:] "List of clients.";
    Provider providers[:] "List of providers.";
    Preferred preferred[:] "Pairs of client and provider instance paths.";
  end Mediator;