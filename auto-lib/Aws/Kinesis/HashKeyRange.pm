package Aws::Kinesis::HashKeyRange {
  use Moose;
  with ('AWS::API::ResultParser');
  has EndingHashKey => (is => 'ro', isa => 'Str', required => 1);
  has StartingHashKey => (is => 'ro', isa => 'Str', required => 1);
}
1
