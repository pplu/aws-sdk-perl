
package Paws::Lightsail::GetContainerLogResult;
  use Moose;
  has LogEvents => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::ContainerServiceLogEvent]', traits => ['NameInRequest'], request_name => 'logEvents' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetContainerLogResult

=head1 ATTRIBUTES


=head2 LogEvents => ArrayRef[L<Paws::Lightsail::ContainerServiceLogEvent>]

An array of objects that describe the log events of a container.


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another C<GetContainerLog>
request and specify the next page token using the C<pageToken>
parameter.


=head2 _request_id => Str


=cut

1;