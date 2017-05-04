within VVDRlib.Verification;

model Requirement
   Modelica.Blocks.Interfaces.IntegerOutput status(start = ReqStatus.NOT_APPLICABLE, fixed = true) annotation(Placement(visible = true, transformation(origin = {110, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanOutput hasBeenVerified annotation(Placement(visible = true, transformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));  
  Modelica.Blocks.Interfaces.BooleanOutput hasBeenViolated annotation(Placement(visible = true, transformation(origin = {110, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
initial equation
  hasBeenVerified = if status == 1 or status == -1 then true else false;
  hasBeenViolated = if status == -1 then true else false;
equation
  when (status == ReqStatus.VIOLATED) then 
    hasBeenViolated = true;
  end when;
  
  when (change(status)) then 
    hasBeenVerified = true; 
  end when;
  annotation(
    Diagram(graphics = {Text(origin = {62, 60}, lineColor = {32, 0, 254}, fillColor = {60, 34, 225}, extent = {{-24, 34}, {24, -34}}, textString = "R", fontName = "Helvetica")}),
    Icon(coordinateSystem(initialScale = 0.1), graphics = {Line(origin = {-3.01, 2.38}, points = {{-82.9851, 1.62171}, {-16.9851, -82.3783}, {83.0149, 81.6217}}, color = {72, 211, 88}, thickness = 1.75)}));
end Requirement;