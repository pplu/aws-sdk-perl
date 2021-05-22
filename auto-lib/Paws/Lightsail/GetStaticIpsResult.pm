
package Paws::Lightsail::GetStaticIpsResult;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );
  has StaticIps => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::StaticIp]', traits => ['NameInRequest'], request_name => 'staticIps' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetStaticIpsResult

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another C<GetStaticIps>
request and specify the next page token using the C<pageToken>
parameter.


=head2 StaticIps => ArrayRef[L<Paws::Lightsail::StaticIp>]

An array of key-value pairs containing information about your get
static IPs request.


=head2 _request_id => Str


=cut

1;