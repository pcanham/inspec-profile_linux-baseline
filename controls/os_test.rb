# encoding: utf-8
title 'OS Helper: What Does Inspec think its testing'

control 'os-helper' do
  impact 0
  title 'Checks What inspec thinks its testing'

	describe os.name do
	   it { should eq 'foo' }
	end

	describe os.release do
	   it { should eq 'foo' }
	end

	describe os.arch do
	   it { should eq 'foo' }
	end
end