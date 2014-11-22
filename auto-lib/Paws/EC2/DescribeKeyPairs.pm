
package Paws::EC2::DescribeKeyPairs {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has KeyNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'KeyName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeKeyPairs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeKeyPairsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;