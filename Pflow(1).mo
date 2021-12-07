package Pflow
  import SI = Modelica.SIunits;

  model Reserve "Phosphate rock reserve"
    parameter Units.MT reserve0 = 100 "Initial reserve";
    Units.MT reserve;
    Pflow.Connectors.pcon pcon_out1 annotation(
      Placement(visible = true, transformation(origin = {2, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  initial equation
    reserve = reserve0;
  equation
    pcon_out1.p = 1;
    der(reserve) = pcon_out1.Qp "reserve drops due to removed P";
    annotation(
      Icon(graphics = {Polygon(origin = {0, 12}, fillColor = {233, 185, 110}, fillPattern = FillPattern.Solid, points = {{-16, -66}, {34, -52}, {54, -28}, {74, 14}, {58, 22}, {14, 50}, {-10, 52}, {-34, 40}, {-54, 38}, {-62, 16}, {-74, -8}, {-64, -30}, {-64, -46}, {-16, -66}}), Text(origin = {-3, 11}, extent = {{-55, 41}, {51, -43}}, textString = "Rock
Reserve
%reserve0 MT")}, coordinateSystem(initialScale = 0.1)));
  end Reserve;





  model Mine "Phosphate rock mine"
    Units.MTs Qp_out "P flow";
    Connectors.pcon pcon1 annotation(
      Placement(visible = true, transformation(origin = {0, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Connectors.pcon pcon_out1 annotation(
      Placement(visible = true, transformation(origin = {0, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    pcon1.p = pcon_out1.p;
    pcon1.Qp + pcon_out1.Qp = 0;
    Qp_out = pcon_out1.Qp;
    annotation(
      Icon(graphics = {Polygon(origin = {7, 29}, fillColor = {252, 233, 79}, fillPattern = FillPattern.Solid, points = {{-37, -37}, {81, -7}, {91, 15}, {-27, 15}, {-37, 25}, {-91, 25}, {-87, 15}, {-37, 15}, {-37, -37}}), Rectangle(origin = {-61, 26}, fillPattern = FillPattern.Solid, extent = {{-13, 12}, {25, -10}}), Ellipse(origin = {-58, -13}, fillPattern = FillPattern.Solid, extent = {{-32, 24}, {24, -32}}, endAngle = 360), Ellipse(origin = {-48, -31}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-32, 32}, {4, -4}}, endAngle = 360), Ellipse(origin = {66, -15}, fillPattern = FillPattern.Solid, extent = {{-32, 24}, {24, -32}}, endAngle = 360), Ellipse(origin = {76, -33}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-32, 32}, {4, -4}}, endAngle = 360), Text(origin = {7, 21}, extent = {{-43, 17}, {43, -17}}, textString = "Mine")}));
  end Mine;

  model Fertilizer "Phosphate fertilizer"
    Units.MTs Qp_out "P flow";
    Connectors.pcon pcon1 annotation(
      Placement(visible = true, transformation(origin = {0, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Connectors.pcon pcon_out1 annotation(
      Placement(visible = true, transformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    pcon1.p = pcon_out1.p;
    pcon1.Qp + pcon_out1.Qp = 0;
    Qp_out = pcon_out1.Qp;
    annotation(
      Icon(graphics = {Ellipse(origin = {-63, -65}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-47, -57}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-31, -65}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-63, -47}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-47, -39}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-31, -47}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-63, -29}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-47, -21}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-31, -29}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-63, 25}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-63, 7}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-47, 33}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-47, 15}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-47, -3}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-63, -11}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-31, 25}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-31, 7}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-31, -11}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-15, -3}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-15, 15}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-15, 33}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-15, -21}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-15, -39}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {1, -11}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {1, 7}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {1, 25}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {1, -29}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {1, -47}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {-15, -57}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {1, -65}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {17, 33}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {17, 15}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {17, -3}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {17, -21}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {33, 25}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {33, 7}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {33, -11}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {33, -29}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {17, -39}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {33, -47}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {17, -57}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {33, -65}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {49, 33}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {65, 25}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {49, 15}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {65, 7}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {65, -11}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {49, -3}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {65, -29}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {49, -21}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {49, -39}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {65, -47}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {49, -57}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Ellipse(origin = {65, -65}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.Sphere, extent = {{-9, 9}, {9, -9}}, endAngle = 360), Line(origin = {1, -7}, points = {{-79, 87}, {-79, -69}, {79, -69}, {79, 87}}), Text(origin = {2, 64}, extent = {{-72, 16}, {72, -16}}, textString = "Fertilizer")}));
  end Fertilizer;

  model Feed "Feed additives"
    Connectors.pcon pcon1 annotation(
      Placement(visible = true, transformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Connectors.pcon pcon_out1 annotation(
      Placement(visible = true, transformation(origin = {0, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    pcon1.p = pcon_out1.p;
    pcon1.Qp + pcon_out1.Qp = 0;
    annotation(
      Icon(graphics = {Text(origin = {0, 56}, extent = {{-96, 20}, {100, -20}}, textString = "Feed Additives"), Polygon(origin = {0, -23}, fillColor = {237, 212, 0}, fillPattern = FillPattern.Solid, points = {{-66, 35}, {0, -45}, {60, 29}, {-10, 67}, {-66, 35}}), Line(origin = {0.4, -19.05}, points = {{-80, 48.6127}, {0, -49.3873}, {80, 48.6127}}, thickness = 1)}, coordinateSystem(initialScale = 0.1)));
  end Feed;

  model Soil "soils"
    parameter Units.MTs Qp_leaching = 5 "P flow for leaching";
    parameter Units.MTs Qp_stock = 0 "P flow into stock";
    Pflow.Connectors.pcon pcon1 annotation(
      Placement(visible = true, transformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {40, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Connectors.pcon pcon_out1 annotation(
      Placement(visible = true, transformation(origin = {0, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Connectors.pcon pcon_leaching annotation(
      Placement(visible = true, transformation(origin = {80, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-68, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Connectors.pcon pcon_excr_in annotation(
      Placement(visible = true, transformation(origin = {-72, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-72, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    pcon1.p = pcon_out1.p;
    pcon1.Qp + pcon_excr_in.Qp + pcon_out1.Qp + Qp_leaching = Qp_stock;
    pcon1.p = pcon_leaching.p;
    pcon_leaching.Qp = - Qp_leaching;
    annotation(
      Icon(graphics = {Polygon(origin = {2, -38}, rotation = 180, lineColor = {143, 89, 2}, fillColor = {233, 185, 110}, fillPattern = FillPattern.Cross, points = {{-76, -28}, {-48, 18}, {-22, 42}, {44, -4}, {68, -16}, {76, -28}, {-76, -28}}), Polygon(origin = {0, -3}, lineColor = {78, 154, 6}, fillColor = {138, 226, 52}, fillPattern = FillPattern.CrossDiag, points = {{-74, -7}, {76, -7}, {74, -1}, {72, -5}, {64, 7}, {54, -3}, {46, 3}, {46, -3}, {32, -1}, {24, -5}, {20, 1}, {20, 7}, {16, -1}, {2, 5}, {-4, -5}, {-10, -1}, {-18, 5}, {-22, -3}, {-28, 9}, {-38, 1}, {-32, -3}, {-50, 3}, {-52, 9}, {-58, 1}, {-70, 7}, {-76, 3}, {-74, -7}}), Text(origin = {-1, 53}, extent = {{-79, 21}, {83, -51}}, textString = "Soil
%name"), Text(origin = {-68, -58}, extent = {{-24, 18}, {40, -14}}, textString = "Leach"), Text(origin = {-75, 82}, extent = {{-17, 12}, {33, -14}}, textString = "Excr")}, coordinateSystem(initialScale = 0.1)));
  end Soil;





  model Harvest
    Connectors.pcon pcon1 annotation(
      Placement(visible = true, transformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Connectors.pcon pcon_out1 annotation(
      Placement(visible = true, transformation(origin = {0, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    pcon1.p = pcon_out1.p;
    pcon1.Qp + pcon_out1.Qp = 0;
    annotation(
      Icon(graphics = {Ellipse(origin = {-20, -46}, fillPattern = FillPattern.Solid, extent = {{-20, 20}, {20, -20}}, endAngle = 360), Ellipse(origin = {-20, -46}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-12, 12}, {12, -12}}, endAngle = 360), Ellipse(origin = {60, -46}, fillPattern = FillPattern.Solid, extent = {{-20, 20}, {20, -20}}, endAngle = 360), Ellipse(origin = {60, -46}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-12, 12}, {12, -12}}, endAngle = 360), Polygon(origin = {-1, -20}, fillColor = {78, 154, 6}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{37, -26}, {9, -26}, {-1, -4}, {-31, 4}, {-57, -26}, {-79, -22}, {-57, -16}, {-37, 10}, {-69, 42}, {95, 42}, {89, 6}, {47, -4}, {37, -26}}), Polygon(origin = {-80, -40}, points = {{-10, -8}, {0, -16}, {10, -8}, {10, 6}, {0, 14}, {-10, 6}, {-10, -8}}), Line(origin = {-80, -41}, points = {{-10, -7}, {10, 7}}), Line(origin = {-80, -42}, points = {{-10, 8}, {10, -6}}), Line(origin = {-80, -41}, points = {{0, -15}, {0, 15}}), Text(origin = {4, 52}, extent = {{-90, 22}, {90, -22}}, textString = "Harvest")}, coordinateSystem(initialScale = 0.1)));
  end Harvest;

  model Residue
    Pflow.Connectors.pcon pcon1 annotation(
      Placement(visible = true, transformation(origin = {0, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Connectors.pcon pcon_out1 annotation(
      Placement(visible = true, transformation(origin = {0, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    pcon1.p = pcon_out1.p;
    pcon1.Qp + pcon_out1.Qp = 0;
    annotation(
      Diagram,
      Icon(graphics = {Text(origin = {2, 52}, extent = {{-82, 20}, {78, -20}}, textString = "Residue"), Ellipse(origin = {9, -4}, lineColor = {193, 125, 17}, fillColor = {237, 212, 0}, fillPattern = FillPattern.Solid, extent = {{-39, 36}, {41, -44}}, endAngle = 360), Ellipse(origin = {5, -8}, lineColor = {193, 125, 17}, fillColor = {237, 212, 0}, fillPattern = FillPattern.Solid, extent = {{-39, 36}, {41, -44}}, endAngle = 360), Ellipse(origin = {1, -12}, lineColor = {193, 125, 17}, fillColor = {237, 212, 0}, fillPattern = FillPattern.Solid, extent = {{-39, 36}, {41, -44}}, endAngle = 360), Ellipse(origin = {-3, -16}, lineColor = {193, 125, 17}, fillColor = {237, 212, 0}, fillPattern = FillPattern.Solid, extent = {{-39, 36}, {41, -44}}, endAngle = 360), Ellipse(origin = {-7, -20}, lineColor = {193, 125, 17}, fillColor = {237, 212, 0}, fillPattern = FillPattern.Solid, extent = {{-39, 36}, {41, -44}}, endAngle = 360), Ellipse(origin = {-11, -24}, lineColor = {193, 125, 17}, fillColor = {237, 212, 0}, fillPattern = FillPattern.Solid, extent = {{-39, 36}, {41, -44}}, endAngle = 360)}, coordinateSystem(initialScale = 0.1)));
  end Residue;


  model SurfaceWater
    Connectors.pcon pcon1 annotation(
      Placement(visible = true, transformation(origin = {2, 84}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {2, 84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    annotation(
      Icon(graphics = {Polygon(origin = {2, -42}, fillColor = {114, 159, 207}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-76, -22}, {-48, -40}, {-6, -28}, {30, -38}, {56, -6}, {80, -4}, {86, 24}, {64, 32}, {10, 32}, {-20, 40}, {-44, 30}, {-70, 30}, {-80, 16}, {-80, 16}, {-86, 2}, {-76, -22}}), Text(origin = {1, 42}, extent = {{-81, 32}, {85, -44}}, textString = "Surface
Water")}, coordinateSystem(initialScale = 0.1)));
  end SurfaceWater;

  model Human
    parameter Units.Inhabitants population = 6.1 "inhabitants";
    parameter Units.P_per_person P_per_person = (10.0 + 2.0) / 6.1 "P requirement";
    parameter Units.Percent meat_prop = 2.0 / (10.0 + 2.0) * 100 "proportion of meat";
    parameter Units.Percent waste_prop = 1.0 / (10.0 + 2.0) * 100 "proportion of meat";
    Units.MTs Qp_pop "P flow";
    Pflow.Connectors.pcon pcon_meat_in annotation(
      Placement(visible = true, transformation(origin = {-42, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-40, 88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Connectors.pcon pcon_veg_in annotation(
      Placement(visible = true, transformation(origin = {40, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {40, 88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Connectors.pcon pcon_waste_out annotation(
      Placement(visible = true, transformation(origin = {80, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {76, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Connectors.pcon pcon_excr_out annotation(
      Placement(visible = true, transformation(origin = {68, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {62, -78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    Qp_pop = population * P_per_person;
    pcon_veg_in.Qp + pcon_meat_in.Qp + pcon_waste_out.Qp = Qp_pop;
    pcon_meat_in.Qp = meat_prop / 100.0 * Qp_pop;
    pcon_waste_out.p = 1;
    pcon_waste_out.Qp = - waste_prop / 100.0 * Qp_pop;
    pcon_excr_out.p = 1;
    pcon_excr_out.Qp + pcon_waste_out.Qp + Qp_pop = 0;
    annotation(
      Icon(graphics = {Line(origin = {4.08418, -62.6458}, points = {{-35.9967, -16.6942}, {-3.9967, 23.3058}, {26.0033, -16.6942}}), Line(origin = {2.99622, 23.4146}, points = {{-42.9962, -5.2595}, {-2.99622, -27.2595}, {37.0038, -5.2595}}), Line(origin = {77.6541, -5.99995}, points = {{-78, -34}, {-78, 10}}), Ellipse(origin = {0, 18}, extent = {{-16, 16}, {16, -14}}, endAngle = 360), Line(origin = {1.83499, 6.66004}, points = {{-51, -10}, {47, -10}}), Line(origin = {1.0757, -71.5007}, points = {{-8.9882, -20.5192}, {-0.98822, 31.4808}, {7.0118, -20.5192}}), Text(origin = {-1, 48}, extent = {{-71, 16}, {71, -16}}, textString = "Human"), Text(origin = {40, 65}, extent = {{-28, 9}, {28, -9}}, textString = "Veg"), Text(origin = {-40, 67}, extent = {{-24, 9}, {24, -9}}, textString = "Meat"), Text(origin = {76, 17}, extent = {{-20, 9}, {20, -9}}, textString = "Waste"), Text(origin = {62, -59}, extent = {{-32, 9}, {32, -9}}, textString = "Excr")}, coordinateSystem(initialScale = 0.1)));
  end Human;











  model Livestock
    Units.MTs Qp_out "P flow";
    // -31
    parameter Units.Percent res_prop = 7.0 / (22.0 + 7.0 + 2.0) * 100 "proportion of residue";
    parameter Units.Percent add_prop = 2.0 / (22.0 + 7.0 + 2.0) * 100 "proportion of additive";
    parameter Units.Percent excrete_prop = (22.0 + 7.0 + 2.0 - 2.0) / (22.0 + 7.0 + 2.0) "Excretion proportion";
    Pflow.Connectors.pcon pcon_grass annotation(
      Placement(visible = true, transformation(origin = {-42, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Connectors.pcon pcon_residue annotation(
      Placement(visible = true, transformation(origin = {40, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {62, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Connectors.pcon pcon_additive annotation(
      Placement(visible = true, transformation(origin = {-62, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-62, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Connectors.pcon pcon_excretion annotation(
      Placement(visible = true, transformation(origin = {-80, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-74, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Connectors.pcon pcon_food_out annotation(
      Placement(visible = true, transformation(origin = {0, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    pcon_grass.Qp + pcon_residue.Qp + pcon_additive.Qp = Qp_out;
    pcon_residue.Qp = res_prop / 100.0 * Qp_out;
    pcon_additive.Qp = add_prop / 100.0 * Qp_out;
    pcon_excretion.p = 1;
    pcon_excretion.Qp = - Qp_out * excrete_prop;
    pcon_food_out.p = 1;
    pcon_food_out.Qp + pcon_excretion.Qp + Qp_out = 0;
    annotation(
      Icon(graphics = {Line(origin = {-49.1849, -45.5518}, points = {{-20, -29.5257}, {0, 30.4743}, {20, -29.5257}}), Line(origin = {50.5765, -45.1542}, points = {{-20, -29.5257}, {0, 30.4743}, {20, -29.5257}}), Line(origin = {61.8894, 14.1052}, points = {{-19.0743, -1.18273}, {-1.07426, -5.18273}, {18.9257, 4.81727}}), Line(origin = {16.7271, -7.27934}, points = {{-65.912, -7.79819}, {34.088, -7.79819}, {44.088, 16.2018}, {66.088, -15.7982}, {34.088, -7.79819}}), Text(origin = {-14, 38}, extent = {{-66, 18}, {94, -18}}, textString = "Livestock"), Text(origin = {8, 65}, extent = {{-34, 13}, {20, -15}}, textString = "Grass"), Text(origin = {62, 64}, extent = {{-18, 12}, {22, -12}}, textString = "Res"), Text(origin = {-62, 67}, extent = {{-22, 9}, {20, -15}}, textString = "Add"), Text(origin = {-76, -1}, extent = {{-16, 7}, {20, -11}}, textString = "Excr"), Text(origin = {3, -63}, extent = {{-23, 11}, {19, -9}}, textString = "Food")}, coordinateSystem(initialScale = 0.1)));
  end Livestock;









  model Exctretion
    parameter Units.Percent grass_prop = 23.0 / (23.0 + 6.0) * 100 "proportion to excretion";
    parameter String label_grass = "Grass";
    parameter String label_arable = "Arable";
    Pflow.Connectors.pcon pcon1 annotation(
      Placement(visible = true, transformation(origin = {80, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Connectors.pcon pcon_arable annotation(
      Placement(visible = true, transformation(origin = {-52, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {52, -84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Connectors.pcon pcon_grass annotation(
      Placement(visible = true, transformation(origin = {-56, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-50, -84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    pcon1.Qp + pcon_arable.Qp + pcon_grass.Qp = 0;
    pcon_arable.p = pcon1.p;
    pcon_grass.p = pcon1.p;
    pcon_grass.Qp = -grass_prop / 100.0 * pcon1.Qp;
    annotation(
      Icon(graphics = {Polygon(origin = {-12, -22}, lineColor = {46, 52, 54}, fillColor = {143, 89, 2}, pattern = LinePattern.None, fillPattern = FillPattern.CrossDiag, points = {{32, -28}, {66, -14}, {62, 0}, {74, 16}, {74, 46}, {60, 48}, {32, 66}, {-10, 58}, {-26, 72}, {-46, 16}, {-38, -18}, {-4, -28}, {32, -28}}), Text(origin = {-1, 77}, extent = {{-85, 23}, {87, -33}}, textString = "Excretion
%name"), Text(origin = {68, -63}, extent = {{-62, 19}, {22, -15}}, textString = "%label_arable"), Text(origin = {-33, -73}, extent = {{-63, 29}, {29, -5}}, textString = "%label_grass")}, coordinateSystem(initialScale = 0.1)));
  end Exctretion;







  model Waste
    Pflow.Connectors.pcon pcon1 annotation(
      Placement(visible = true, transformation(origin = {-2, 82}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    annotation(
      Icon(graphics = {Text(origin = {0, 51}, extent = {{-68, 23}, {70, -35}}, textString = "Waste
%name"), Ellipse(origin = {0, 10}, extent = {{-56, 8}, {56, -8}}, endAngle = 360), Ellipse(origin = {2, -84}, extent = {{-40, 6}, {36, -8}}, endAngle = 360), Line(origin = {49, -37}, points = {{-11, -49}, {7, 47}}), Line(origin = {-47, -38}, points = {{9, -48}, {-9, 48}})}, coordinateSystem(initialScale = 0.1)));
  end Waste;

  model Detergent
    parameter Units.MTs use = 1 "P flow to detergent";
    Pflow.Connectors.pcon pcon1 annotation(
      Placement(visible = true, transformation(origin = {-60, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Connectors.pcon pcon_out annotation(
      Placement(visible = true, transformation(origin = {0, -86}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -86}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    pcon1.Qp = use;
    pcon1.Qp + pcon_out.Qp = 0;
    pcon1.p = pcon_out.p;
    annotation(
      Icon(graphics = {Polygon(origin = {5, -3}, lineColor = {78, 154, 6}, fillColor = {138, 226, 52}, fillPattern = FillPattern.VerticalCylinder, points = {{-31, -69}, {27, -69}, {47, -27}, {41, -1}, {25, 19}, {7, 25}, {7, 51}, {-31, 51}, {-31, 29}, {-43, 19}, {-47, -7}, {-47, -37}, {-41, -53}, {-31, -69}}), Rectangle(origin = {-7, 38}, lineColor = {46, 52, 54}, fillColor = {186, 189, 182}, fillPattern = FillPattern.VerticalCylinder, extent = {{-21, 10}, {21, -10}}), Polygon(origin = {30, -33}, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{0, -23}, {12, 1}, {6, 25}, {-4, 37}, {-18, 45}, {0, -23}}), Text(origin = {1, 62}, extent = {{-69, 16}, {71, -14}}, textString = "Detergent")}, coordinateSystem(initialScale = 0.1)));
  end Detergent;



  model Sewage
    Pflow.Connectors.pcon pcon_human_in annotation(
      Placement(visible = true, transformation(origin = {-80, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-78, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Connectors.pcon pcon_detergent_in annotation(
      Placement(visible = true, transformation(origin = {-70, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-80, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Connectors.pcon pcon_out annotation(
      Placement(visible = true, transformation(origin = {74, -86}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {74, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    pcon_human_in.Qp + pcon_detergent_in.Qp + pcon_out.Qp = 0;
    pcon_out.p = 1;
    annotation(
      Icon(graphics = {Text(origin = {-39, -30}, extent = {{-25, 10}, {33, -16}}, textString = "Human"), Text(origin = {-43, 39}, extent = {{-25, 13}, {73, -11}}, textString = "Detergent"), Rectangle(origin = {-33, 7}, fillColor = {186, 189, 182}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-51, 11}, {53, -17}}), Ellipse(origin = {20, 4}, fillColor = {186, 189, 182}, fillPattern = FillPattern.Solid, extent = {{-8, 14}, {8, -14}}, endAngle = 360), Polygon(origin = {52, -27}, lineColor = {233, 185, 110}, fillColor = {193, 125, 17}, fillPattern = FillPattern.Forward, points = {{-30, 43}, {-34, 43}, {-38, 35}, {-36, 23}, {-32, 17}, {-22, 9}, {-4, -11}, {-2, -25}, {2, -43}, {20, -35}, {32, -41}, {38, -31}, {30, -7}, {26, 7}, {8, 23}, {2, 33}, {-16, 39}, {-24, 43}, {-30, 43}}), Text(origin = {-1, 82}, extent = {{-53, 16}, {57, -22}}, textString = "Sewage")}, coordinateSystem(initialScale = 0.1)));
  end Sewage;

  model Treatment "Sewage treatment"
    parameter Units.Percent sludge = 1.0 / 4.0 * 100 "proportion to sludge";
    Connectors.pcon pcon1 annotation(
      Placement(visible = true, transformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Connectors.pcon pcon_out_surface annotation(
      Placement(visible = true, transformation(origin = {62, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {62, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Connectors.pcon pcon_out_sludge annotation(
      Placement(visible = true, transformation(origin = {-68, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-68, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    pcon1.p = pcon_out_surface.p;
    pcon1.p = pcon_out_sludge.p;
    pcon_out_sludge.Qp = - sludge / 100 * pcon1.Qp;
    pcon_out_sludge.Qp + pcon_out_surface.Qp + pcon1.Qp = 0.0;
    annotation(
      Icon(graphics = {Ellipse(origin = {2, -32}, lineColor = {143, 89, 2}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, extent = {{-82, 20}, {78, -20}}, endAngle = 360), Rectangle(origin = {-1, -18}, lineColor = {143, 89, 2}, fillColor = {233, 185, 110}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, extent = {{-79, 18}, {81, -14}}), Ellipse(origin = {2, 0}, fillColor = {114, 159, 207}, fillPattern = FillPattern.Solid, extent = {{-82, 20}, {78, -20}}, endAngle = 360), Line(origin = {33.04, 20.9565}, points = {{-33.0432, -16.0432}, {-33.0432, -6.04321}, {24.9568, 1.9568}}, thickness = 1), Text(origin = {61, -63}, extent = {{-23, 9}, {23, -9}}, textString = "Surface"), Text(origin = {0, 50}, extent = {{-90, 18}, {90, -18}}, textString = "Treatment"), Text(origin = {-72, -62}, extent = {{-16, 8}, {22, -10}}, textString = "Sludge")}, coordinateSystem(initialScale = 0.1)));
  end Treatment;


model Sludge "Sink for sludge"
    Connectors.pcon pcon1 annotation(
      Placement(visible = true, transformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    annotation(
      Icon(graphics = {Text(origin = {5, 51}, extent = {{-75, 19}, {75, -27}}, textString = "Sludge"), Ellipse(origin = {3, -61}, fillColor = {143, 89, 2}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, extent = {{-71, 17}, {71, -17}}, endAngle = 360), Polygon(origin = {4, -27}, fillColor = {143, 89, 2}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, points = {{-70, -31}, {68, -31}, {-4, 53}, {-70, -31}})}, coordinateSystem(initialScale = 0.1)));

end Sludge;

model Industrial
  parameter Units.MTs use = 3 "P flow";
  Connectors.pcon pcon1 annotation(
      Placement(visible = true, transformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

equation
  pcon1.Qp = use;
annotation(
      Icon(graphics = {Rectangle(origin = {-31, -32}, lineColor = {136, 138, 133}, pattern = LinePattern.None, fillPattern = FillPattern.VerticalCylinder, extent = {{-9, -48}, {3, 48}}), Polygon(origin = {13, -49}, lineColor = {136, 138, 133}, fillColor = {206, 92, 0}, fillPattern = FillPattern.Cross, points = {{-35, -31}, {35, -31}, {35, 31}, {-35, 3}, {-35, -31}}), Text(origin = {2, 45}, extent = {{-80, 19}, {80, -19}}, textString = "Industrial")}));end Industrial;


model Loss
  parameter Units.MTs use = 2 "P flow";
  Connectors.pcon pcon1 annotation(
      Placement(visible = true, transformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

equation
  pcon1.Qp = use;
annotation(
      Icon(graphics = {Text(origin = {-1, 30}, extent = {{-81, 30}, {81, -10}}, textString = "Loss"), Rectangle(origin = {0, -23}, fillColor = {239, 41, 41}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-6, 37}, {6, -17}}), Polygon(origin = {20, -60}, fillColor = {239, 41, 41}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-40, 20}, {0, 20}, { -20, -2}, {-40, 20}})}));end Loss;





  package Connectors
    extends Modelica.Icons.InterfacesPackage;

    connector pcon
      SI.Pressure p;
      flow Units.MTs Qp "P flow";
      annotation(
        Icon(graphics = {Ellipse(origin = {0, -1}, extent = {{-100, 99}, {100, -99}}, endAngle = 360), Ellipse(origin = {0, -1}, extent = {{-60, 59}, {60, -59}}, endAngle = 360)}, coordinateSystem(initialScale = 0.1)));
    end pcon;
  end Connectors;

  package Units
    extends Modelica.Icons.Package;
    type MT = Real(final quantity = "PMass", final unit = "MT") "1e12 kg";
    type MTs = Real(final quantity = "PMassFlowRate", final unit = "MT/year") "1e12 kg";
    type Percent = Real(final quantity = "Percent", final unit = "%");
    type Inhabitants = Real(final quantity = "Inhabitants", final unit = "billion");
    type P_per_person = Real(final quantity = "P_per_person", final unit = "MT/billion");
  end Units;

  model Example
    extends Modelica.Icons.Example;
    Pflow.Reserve reserve1 annotation(
      Placement(visible = true, transformation(origin = {-14, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Feed feed1 annotation(
      Placement(visible = true, transformation(origin = {-44, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Fertilizer fertilizer1 annotation(
      Placement(visible = true, transformation(origin = {0, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Soil Arable(Qp_stock = 15) annotation(
      Placement(visible = true, transformation(origin = {18, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Harvest harvest1 annotation(
      Placement(visible = true, transformation(origin = {40, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Human human1 annotation(
      Placement(visible = true, transformation(origin = {-2, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.SurfaceWater surfaceWater1 annotation(
      Placement(visible = true, transformation(origin = {2, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Soil Grass(Qp_leaching = 2, Qp_stock = -1) annotation(
      Placement(visible = true, transformation(origin = {-20, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.SurfaceWater surfaceWater2 annotation(
      Placement(visible = true, transformation(origin = {-30, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Livestock livestock1 annotation(
      Placement(visible = true, transformation(origin = {-26, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Waste Food annotation(
      Placement(visible = true, transformation(origin = {68, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Detergent detergent1 annotation(
      Placement(visible = true, transformation(origin = {38, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.Sewage sewage1 annotation(
      Placement(visible = true, transformation(origin = {84, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Pflow.SurfaceWater surfaceWater3 annotation(
      Placement(visible = true, transformation(origin = {90, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Treatment treatment1 annotation(
      Placement(visible = true, transformation(origin = {86, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Pflow.Sludge sludge1 annotation(
      Placement(visible = true, transformation(origin = {68, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Pflow.Industrial industrial1 annotation(
      Placement(visible = true, transformation(origin = {68, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Residue residue1 annotation(
      Placement(visible = true, transformation(origin = {22, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Pflow.Loss loss1 annotation(
      Placement(visible = true, transformation(origin = {-82, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Mine mine1 annotation(
      Placement(visible = true, transformation(origin = {-14, 72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Pflow.Waste NonSewage annotation(
      Placement(visible = true, transformation(origin = {14, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Exctretion ExcLive annotation(
      Placement(visible = true, transformation(origin = {-70, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Exctretion ExcrHuman(grass_prop = 7.0 / (7 + 4) * 100,label_arable = "Sewage", label_grass = "NonSew")  annotation(
      Placement(visible = true, transformation(origin = {40, -74}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(ExcrHuman.pcon_arable, sewage1.pcon_human_in) annotation(
      Line(points = {{46, -82}, {46, -82}, {46, -88}, {56, -88}, {56, -66}, {64, -66}, {64, -46}, {76, -46}, {76, -46}}));
    connect(ExcrHuman.pcon_grass, NonSewage.pcon1) annotation(
      Line(points = {{34, -82}, {24, -82}, {24, -74}, {14, -74}, {14, -80}, {14, -80}}));
    connect(ExcrHuman.pcon1, human1.pcon_excr_out) annotation(
      Line(points = {{48, -74}, {50, -74}, {50, -54}, {18, -54}, {18, -68}, {4, -68}, {4, -68}}));
    connect(ExcLive.pcon_arable, Arable.pcon_excr_in) annotation(
      Line(points = {{-64, -74}, {-60, -74}, {-60, -82}, {-52, -82}, {-52, 14}, {10, 14}, {10, 14}}));
    connect(ExcLive.pcon_grass, Grass.pcon_excr_in) annotation(
      Line(points = {{-76, -74}, {-90, -74}, {-90, 34}, {-26, 34}, {-26, 32}, {-28, 32}}));
    connect(livestock1.pcon_excretion, ExcLive.pcon1) annotation(
      Line(points = {{-34, -68}, {-62, -68}, {-62, -66}, {-62, -66}}));
    connect(fertilizer1.pcon_out1, Arable.pcon1) annotation(
      Line(points = {{0, 39}, {18, 39}, {18, 16}}));
    connect(Arable.pcon_leaching, surfaceWater1.pcon1) annotation(
      Line(points = {{11, 0}, {2.2, 0}, {2.2, -12}}));
    connect(Arable.pcon_out1, harvest1.pcon1) annotation(
      Line(points = {{18, 0}, {40, 0}, {40, -16}}));
    connect(Arable.pcon_out1, residue1.pcon1) annotation(
      Line(points = {{18, 0}, {22, 0}, {22, -16}}));
    connect(Grass.pcon_leaching, surfaceWater2.pcon1) annotation(
      Line(points = {{-26.8, 16}, {-26.3, 16}, {-26.3, 2}, {-30, 2}}));
    connect(human1.pcon_meat_in, livestock1.pcon_food_out) annotation(
      Line(points = {{-6, -52}, {-12, -52}, {-12, -78}, {-26, -78}, {-26, -74}, {-26, -74}, {-26, -74}}));
    connect(harvest1.pcon_out1, human1.pcon_veg_in) annotation(
      Line(points = {{40, -32}, {40, -45.5}, {2, -45.5}, {2, -53}}));
    connect(human1.pcon_waste_out, Food.pcon1) annotation(
      Line(points = {{6, -60}, {53.6, -60}, {53.6, -14}, {68, -14}}));
    connect(mine1.pcon_out1, feed1.pcon1) annotation(
      Line(points = {{-14, 68}, {-14, 64}, {-44, 64}, {-44, 56}}));
    connect(feed1.pcon_out1, livestock1.pcon_additive) annotation(
      Line(points = {{-44, 40}, {-44, -34.2}, {-32, -34.2}, {-32, -59}}));
    connect(mine1.pcon_out1, industrial1.pcon1) annotation(
      Line(points = {{-14, 68}, {-14, 68}, {-14, 64}, {68, 64}, {68, 56}, {68, 56}}));
    connect(mine1.pcon_out1, detergent1.pcon1) annotation(
      Line(points = {{-14, 68}, {-14, 68}, {-14, 64}, {38, 64}, {38, 56}, {38, 56}}));
    connect(mine1.pcon_out1, loss1.pcon1) annotation(
      Line(points = {{-14, 68}, {-14, 68}, {-14, 64}, {-82, 64}, {-82, 56}, {-82, 56}}));
    connect(mine1.pcon_out1, fertilizer1.pcon1) annotation(
      Line(points = {{-14, 68}, {-14, 68}, {-14, 64}, {0, 64}, {0, 58}, {0, 58}}));
    connect(reserve1.pcon_out1, mine1.pcon1) annotation(
      Line(points = {{-14, 86}, {-14, 86}, {-14, 76}, {-14, 76}}));
    connect(Grass.pcon1, fertilizer1.pcon_out1) annotation(
      Line(points = {{-20, 34}, {-8, 34}, {-8, 39}, {0, 39}}));
    connect(livestock1.pcon_residue, residue1.pcon_out1) annotation(
      Line(points = {{-20, -60}, {-18, -60}, {-18, -32}, {22, -32}, {22, -32}}));
    connect(Grass.pcon_out1, livestock1.pcon_grass) annotation(
      Line(points = {{-20, 18}, {-20, -20.5}, {-26, -20.5}, {-26, -59}}));
    connect(treatment1.pcon_out_sludge, sludge1.pcon1) annotation(
      Line(points = {{80, -74}, {68, -74}, {68, -82}}));
    connect(surfaceWater3.pcon1, treatment1.pcon_out_surface) annotation(
      Line(points = {{90, -82}, {92, -82}, {92, -74}, {92, -74}}));
    connect(treatment1.pcon1, sewage1.pcon_out) annotation(
      Line(points = {{86, -58}, {92, -58}, {92, -52}, {92, -52}}));
    connect(detergent1.pcon_out, sewage1.pcon_detergent_in) annotation(
      Line(points = {{38, 40}, {40, 40}, {40, 14}, {86, 14}, {86, -34}, {77, -34}, {77, -40}}));
  end Example;
end Pflow;
