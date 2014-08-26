package Aws::Support::TrustedAdvisorCheckRefreshStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has checkId => (is => 'ro', isa => 'Str', required => 1);
  has millisUntilNextRefreshable => (is => 'ro', isa => 'Num', required => 1);
  has status => (is => 'ro', isa => 'Str', required => 1);
}
1
