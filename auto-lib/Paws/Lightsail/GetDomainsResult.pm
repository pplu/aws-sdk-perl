
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

A token used for advancing to the next page of results from your get
active names request.


=head2 _request_id => Str


=cut

1;