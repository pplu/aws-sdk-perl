
package Paws::Lightsail::GetDomainsResult;
  use Moose;
  has Domains => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Domain]', traits => ['NameInRequest'], request_name => 'domains' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDomainsResult

=head1 ATTRIBUTES


=head2 Domains => ArrayRef[L<Paws::Lightsail::Domain>]

An array of key-value pairs containing information about each of the
domain entries in the user's account.


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another C<GetDomains> request
and specify the next page token using the C<pageToken> parameter.


=head2 _request_id => Str


=cut

1;