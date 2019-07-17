# encoding: utf-8
title 'OS Checks: YUM Repos'

control 'os-family-redhat7-required-packages' do
  impact 0.3
  title 'Ensure baseline yum repos are present'
  only_if { os[:family] == 'redhat' }
    describe yum.repo('epel') do
      it { should exist }
      it { should be_enabled }
    end
end
