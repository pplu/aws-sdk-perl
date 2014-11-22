
package Paws::Kinesis::DescribeStream {
  use Moose;
  has ExclusiveStartShardId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::DescribeStreamOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;