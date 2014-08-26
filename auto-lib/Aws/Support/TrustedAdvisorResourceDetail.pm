package Aws::Support::TrustedAdvisorResourceDetail {
  use Moose;
  with ('AWS::API::ResultParser');
  has isSuppressed => (is => 'ro', isa => 'Bool');
  has metadata => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has region => (is => 'ro', isa => 'Str', required => 1);
  has resourceId => (is => 'ro', isa => 'Str', required => 1);
  has status => (is => 'ro', isa => 'Str', required => 1);
}
1
