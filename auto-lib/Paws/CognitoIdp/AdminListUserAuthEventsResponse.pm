
package Paws::CognitoIdp::AdminListUserAuthEventsResponse;
  use Moose;
  has AuthEvents => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AuthEventType]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminListUserAuthEventsResponse

=head1 ATTRIBUTES


=head2 AuthEvents => ArrayRef[L<Paws::CognitoIdp::AuthEventType>]

The response object. It includes the C<EventID>, C<EventType>,
C<CreationDate>, C<EventRisk>, and C<EventResponse>.


=head2 NextToken => Str

A pagination token.


=head2 _request_id => Str


=cut

1;