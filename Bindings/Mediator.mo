within VVDRlib.Bindings;
record Mediator
    "Mediator captures data required for inferring binding expression for the referenced clients using the referenced providers."
  

    String mType = ""
      "Reflects the type required by the referenced cleints. Optional.";

    String template = "" "A transformation that can include calls to functions that can handle unsorted arrays(e.g., add(:), max(:), toArray(:), etc.). 
    If left empty, no transformation will be applied.";

    Client clients[:] "List of clients.";
    Provider providers[:] "List of providers.";
    Preferred preferred[:] "Pairs of client and provider instance paths.";
  annotation(
    Icon(graphics = {Ellipse(origin = {0, 1}, lineColor = {82, 235, 205}, fillColor = {82, 235, 205}, fillPattern = FillPattern.Sphere, extent = {{-50, 47}, {50, -47}}, endAngle = 360), Rectangle(origin = {-90, 4}, lineColor = {147, 203, 16}, fillColor = {38, 152, 17}, fillPattern = FillPattern.Solid, extent = {{-12, 84}, {12, -84}}), Rectangle(origin = {88, 2}, lineColor = {147, 203, 16}, fillColor = {38, 152, 17}, fillPattern = FillPattern.Solid, extent = {{-12, 84}, {12, -84}}), Text(extent = {{-24, 24}, {24, -24}}, textString = "M")}));
  end Mediator;