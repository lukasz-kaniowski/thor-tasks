require File.join(File.dirname(__FILE__), '../spec_helper')

describe 'thor chefhelper' do
  
  describe 'running with NAME argument' do
    before :all do
      clean
      thor('chefhelper dummy')
    end
   
    it 'should create the expected files' do
      file('dummy/sample.txt').should exist
    end

    context 'sample.txt' do
      it 'should contain title' do
        file('dummy/sample.txt').contents.should match(/dummy/)
      end
    end

  
  end
end
