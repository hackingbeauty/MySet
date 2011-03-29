require "myset"

describe MySet do
  before(:each) do
    @one = MySet.new
    @two = MySet.new
    @many = MySet.new
  end
  describe "#empty" do
    it "should return true if the set is empty" do
      @one.empty?.should == true
    end
    it "should return false if the set is not empty" do
      test = MySet.new
      test.empty?.should_not be_false
    end
  end
  describe "#contains" do
    it "should return true if the set contains a given item" do
      @one.add("Liliana")
      @one.contains("Liliana").should == true
    end
  end
  describe "#add" do
    it "should successfully add an item to the set" do
      @one.add("Mark")
      @one.empty?.should == false
      @one.size.should == 1
      
      @two.add("Mark")
      @two.add("George")
      @two.empty?.should == false
      @two.size.should == 2
    end
    it "should not add an item already in the set" do
      @many.add("Dario")
      @many.add("Dario")
      @many.size.should == 1
    end
  end
  describe "#remove" do
    pending "should successfully remove an item from the set" do
      
    end
  end
end