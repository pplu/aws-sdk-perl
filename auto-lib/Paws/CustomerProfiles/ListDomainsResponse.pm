
package Paws::CustomerProfiles::ListDomainsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::ListDomainItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListDomainsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CustomerProfiles::ListDomainItem>]

The list of ListDomains instances.


=head2 NextToken => Str

The pagination token from the previous ListDomains API call.


=head2 _request_id => Str


=cut

