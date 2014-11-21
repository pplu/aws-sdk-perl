package Aws::OpsWorks::App {
  use Moose;
  has AppId => (is => 'ro', isa => 'Str');
  has AppSource => (is => 'ro', isa => 'Aws::OpsWorks::Source');
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::AppAttributes');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DataSources => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::DataSource]');
  has Description => (is => 'ro', isa => 'Str');
  has Domains => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableSsl => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has Shortname => (is => 'ro', isa => 'Str');
  has SslConfiguration => (is => 'ro', isa => 'Aws::OpsWorks::SslConfiguration');
  has StackId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
}
1;
