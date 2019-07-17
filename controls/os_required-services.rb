# encoding: utf-8
title 'OS Checks: Services'

control 'os-family-redhat-required-services' do
  impact 1.0
  title 'Ensure baseline services are present for redhat derivatives'
  only_if { os[:family] == 'centos' || os[:family] == 'amazon' }

    describe service('dnsmasq') do
      it { should be_enabled }
      it { should be_running }
    end

    describe service('chronyd') do
      it { should be_enabled }
      it { should be_running }
    end

    describe service('amazon-ssm-agent') do
      it { should be_enabled }
      it { should be_running }
    end
end

