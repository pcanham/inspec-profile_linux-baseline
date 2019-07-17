# encoding: utf-8
title 'OS Checks: Packages'

control 'os-family-redhat-required-packages' do
  impact 1.0
  title 'Ensure baseline packages are present for redhat derivatives'
  only_if { os[:family] == 'redhat' ||  os[:family] == 'amazon' }
    describe package('bind-utils') do
      it { should be_installed }
    end

    describe package('policycoreutils-python') do
      it { should be_installed }
    end

    describe package('libselinux-python') do
      it { should be_installed }
    end

    describe package('curl') do
      it { should be_installed }
    end

    describe package('yum-utils') do
      it { should be_installed }
    end

    describe package('pciutils') do
      it { should be_installed }
    end

    describe package('dnsmasq') do
      it { should be_installed }
    end

    describe package('chrony') do
      it { should be_installed }
    end
end

control 'os-family-redhat7-required-packages' do
  impact 1.0
  title 'Ensure baseline packages are present for redhat 7 derivatives'
  only_if { (os[:family] == 'amazon' && os[:release].start_with?('2')) || (os[:family] == 'centos' && os[:release].start_with?('7')) }
    describe package('cloud-utils') do
      it { should be_installed }
    end

    describe package('cloud-utils-growpart') do
      it { should be_installed }
    end

    describe package('nvme-cli') do
      it { should be_installed }
    end
end
