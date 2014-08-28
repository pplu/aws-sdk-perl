
package Aws::CloudSearch::DescribeAvailabilityOptions {
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAvailabilityOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DescribeAvailabilityOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAvailabilityOptionsResult');
}
1;
  