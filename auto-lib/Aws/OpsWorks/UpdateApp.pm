
package Aws::OpsWorks::UpdateApp {
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', required => 1);
  has AppSource => (is => 'ro', isa => 'Aws::OpsWorks::Source');
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::AppAttributes');
  has DataSources => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::DataSource]');
  has Description => (is => 'ro', isa => 'Str');
  has Domains => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableSsl => (is => 'ro', isa => 'Bool');
  has Environment => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::EnvironmentVariable]');
  has Name => (is => 'ro', isa => 'Str');
  has SslConfiguration => (is => 'ro', isa => 'Aws::OpsWorks::SslConfiguration');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApp');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;