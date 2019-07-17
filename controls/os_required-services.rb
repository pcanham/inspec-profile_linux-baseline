# encoding: utf-8
title 'OS Checks'

control 'os-family-redhat-required-services' do
  impact 1.0
  title 'Ensure baseline services are present for redhat derivatives'
  only_if { os[:family] == 'redhat' }

    describe service('dnsmasq') do
      it { should be_enabled }
      it { should be_running }
    end

    describe service('chrony') do
      it { should be_enabled }
      it { should be_running }
    end

    describe service('amazon-ssm-agent') do
      it { should be_enabled }
      it { should be_running }
    end
end

