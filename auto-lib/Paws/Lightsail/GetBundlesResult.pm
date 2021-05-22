
package Paws::Lightsail::GetBundlesResult;
  use Moose;
  has Bundles => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Bundle]', traits => ['NameInRequest'], request_name => 'bundles' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetBundlesResult

=head1 ATTRIBUTES


=head2 Bundles => ArrayRef[L<Paws::Lightsail::Bundle>]

An array of key-value pairs that contains information about the
available bundles.


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another C<GetBundles> request
and specify the next page token using the C<pageToken> parameter.


=head2 _request_id => Str


=cut

1;