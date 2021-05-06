
package Paws::Health::DescribeEventDetailsResponse;
  use Moose;
  has FailedSet => (is => 'ro', isa => 'ArrayRef[Paws::Health::EventDetailsErrorItem]', traits => ['NameInRequest'], request_name => 'failedSet' );
  has SuccessfulSet => (is => 'ro', isa => 'ArrayRef[Paws::Health::EventDetails]', traits => ['NameInRequest'], request_name => 'successfulSet' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEventDetailsResponse

=head1 ATTRIBUTES


=head2 FailedSet => ArrayRef[L<Paws::Health::EventDetailsErrorItem>]

Error messages for any events that could not be retrieved.


=head2 SuccessfulSet => ArrayRef[L<Paws::Health::EventDetails>]

Information about the events that could be retrieved.


=head2 _request_id => Str


=cut

1;