
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

A token used for advancing to the next page of results from your get
static IPs request.


=head2 StaticIps => ArrayRef[L<Paws::Lightsail::StaticIp>]

An array of key-value pairs containing information about your get
static IPs request.


=head2 _request_id => Str


=cut

1;