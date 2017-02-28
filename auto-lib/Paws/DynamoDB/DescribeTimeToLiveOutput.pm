
package Paws::DynamoDB::DescribeTimeToLiveOutput;
  use Moose;
  has TimeToLiveDescription => (is => 'ro', isa => 'Paws::DynamoDB::TimeToLiveDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeTimeToLiveOutput

=head1 ATTRIBUTES


=head2 TimeToLiveDescription => L<Paws::DynamoDB::TimeToLiveDescription>




=head2 _request_id => Str


=cut

1;