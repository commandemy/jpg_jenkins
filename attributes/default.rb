# encoding: utf-8
#
# Cookbook Name:: jpg_jenkins
# Attributes:: default

default['jpg_jenkins']['tld'] = 'infralovers.consulting'

default['jpg_jenkins']['jenkins']['additional-plugins'] = %w()

default['jpg_jenkins']['password_hash'] = '$6Zc3deyhSZE6'
default['authorization']['sudo']['users'] = ['commandemy']
