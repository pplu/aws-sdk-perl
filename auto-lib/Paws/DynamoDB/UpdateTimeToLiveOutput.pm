
package Paws::DynamoDB::UpdateTimeToLiveOutput;
  use Moose;
  has TimeToLiveSpecification => (is => 'ro', isa => 'Paws::DynamoDB::TimeToLiveSpecification');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateTimeToLiveOutput

=head1 ATTRIBUTES


=head2 TimeToLiveSpecification => L<Paws::DynamoDB::TimeToLiveSpecification>

Represents the output of an C<UpdateTimeToLive> operation.


=head2 _request_id => Str


=cut

1;