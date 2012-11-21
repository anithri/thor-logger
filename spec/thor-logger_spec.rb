require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe ThorLogger do
  context "after module is included" do
    subject{VanillaTest}
    it {subject.class_options.keys.should include(:color)}
    it {subject.class_options.keys.should include(:logfile)}
    it {subject.class_options.keys.should include(:loglevel)}
    it {subject.class_options.keys.should include(:silent)}
    it {subject.class_options.keys.should include(:quiet)}
    it {subject.class_options.keys.should include(:verbose)}
    it {subject.class_options.keys.should include(:debug)}
  end

  context "instance has methods from module" do
    subject{VanillaTest.new}
    it {should respond_to(:logger)}
    it {should respond_to(:setup_logger)}
  end


end