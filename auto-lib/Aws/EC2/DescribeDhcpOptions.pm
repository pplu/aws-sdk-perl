
package Aws::EC2::DescribeDhcpOptions {
  use Moose;
  has DhcpOptionsIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'DhcpOptionsId' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDhcpOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeDhcpOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;