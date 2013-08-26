require 'spec_helper'

describe 'Static pages' do

  subject { page }
  shared_examples_for 'all static pages' do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe 'Home page' do
    before(:each) { visit root_path }
    let(:heading) { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like 'all static pages'
    it { should_not have_title('| Home') }
  end

  describe 'Help page' do
    before(:each) { visit help_path }

    it { should have_selector('h1', text: 'Help') }
    it { should have_title(full_title('Help')) }
  end

  describe 'About page' do
    before(:each) { visit about_path }

    it { should have_selector('h1', text: 'About') }
    it { should have_title(full_title('About')) }
  end

  describe 'Contact page' do
    before(:each) { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_title(full_title('Contact')) }
  end

end


