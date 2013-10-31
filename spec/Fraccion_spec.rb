require "Fraccion.rb"

describe Fraccion do
   before :each do
      @obj1 = Fraccion.new(1,2)
      @obj2 = Fraccion.new(2,4)
      @obj3 = Fraccion.new(3,4)
      @obj4 = Fraccion.new(-1,2)
      @obj5 = Fraccion.new(2,1)
      @obj6 = Fraccion.new(5,4)
      @obj7 = Fraccion.new(1,4)
      @obj8 = Fraccion.new(1,1)
      @obj9 = Fraccion.new(12,5)
      @obj10 = Fraccion.new(10,12)
      @obj11 = Fraccion.new(72,25)

   end
   
   it "Deberia tener un numerador" do
      @obj1.num.should  == 1 
   end

   it "Deberia tener un denominador" do
      @obj1.denom.should == 2
   end

   it "Debe estar en su forma reducida" do
      @obj2.num.should == 1 and @obj2.denom.should == 2
   end

   it "Se debe invocar a los metodos num()" do
      @obj1.num.should == 1
   end

   it "Se debe invocar a denom()" do
      @obj1.denom.should == 2
   end

   it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
      @obj1.to_s.should == "1/2"
   end

   it "Se debe mostar por la consola la fraccion en formato flotante (0.5)" do
      @obj1.to_f.should == 0.5
   end

   it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
      @obj4.abs.should == 0.5
   end

   it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
      @obj1.reciprocal.num.should == 2 && @obj1.reciprocal.denom.should == 1
   end

   it "Se debe calcular el opuesto de una fraccion con -" do
      ((-@obj1)==@obj4).should == true
   end

   it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
	((@obj2 + @obj3)==@obj6).should == true
   end

   it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
	((@obj1 - @obj4)==@obj8).should == true
   end

   it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
	((@obj1 * @obj2)==@obj7).should == true
   end

   it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
	((@obj9 / @obj10)==@obj11).should == true
   end

   it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
   end

   it "Se deben comparar si dos fracciones so iguales con ==" do
      (@obj1==@obj2).should == true
   end

   it "Se debe comparar si una fraccion es menor que otra con <" do
      (@obj1<@obj3).should == true
   end

   it "Se debe comparar si una fraccion es mayor que otra con >" do
      (@obj3>@obj1).should == true
   end

   it "Se debe comparar si una fraccion es menor o igual que otra con <=" do
      (@obj1<=@obj2).should == true and (@obj1<=@obj3).should == true
   end

   it "Se debe comparar si una fraccion es mayor o igual que otra con >=" do
      (@obj2>=@obj1).should == true and (@obj3>=@obj1).should == true
   end

end


