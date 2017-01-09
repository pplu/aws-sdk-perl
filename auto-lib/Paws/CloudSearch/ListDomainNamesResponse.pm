
package Paws::CloudSearch::ListDomainNamesResponse;
  use Moose;
  has DomainNames => (is => 'ro', isa => 'Paws::CloudSearch::DomainNameMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::ListDomainNamesResponse

=head1 ATTRIBUTES


=head2 DomainNames => L<Paws::CloudSearch::DomainNameMap>

The names of the search domains owned by an account.


=head2 _request_id => Str


=cut

