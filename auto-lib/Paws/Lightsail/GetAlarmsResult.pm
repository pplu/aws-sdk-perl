
package Paws::Lightsail::GetAlarmsResult;
  use Moose;
  has Alarms => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Alarm]', traits => ['NameInRequest'], request_name => 'alarms' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetAlarmsResult

=head1 ATTRIBUTES


=head2 Alarms => ArrayRef[L<Paws::Lightsail::Alarm>]

An array of objects that describe the alarms.


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another C<GetAlarms> request
and specify the next page token using the C<pageToken> parameter.


=head2 _request_id => Str


=cut

1;