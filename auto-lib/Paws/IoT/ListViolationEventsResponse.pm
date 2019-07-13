
package Paws::IoT::ListViolationEventsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ViolationEvents => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ViolationEvent]', traits => ['NameInRequest'], request_name => 'violationEvents');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListViolationEventsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 ViolationEvents => ArrayRef[L<Paws::IoT::ViolationEvent>]

The security profile violation alerts issued for this account during
the given time frame, potentially filtered by security profile,
behavior violated, or thing (device) violating.


=head2 _request_id => Str


=cut

