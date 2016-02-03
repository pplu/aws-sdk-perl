
package Paws::CloudSearchDomain::SearchResponse;
  use Moose;
  has Facets => (is => 'ro', isa => 'Paws::CloudSearchDomain::Facets');
  has Hits => (is => 'ro', isa => 'Paws::CloudSearchDomain::Hits');
  has Status => (is => 'ro', isa => 'Paws::CloudSearchDomain::SearchStatus');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::SearchResponse

=head1 ATTRIBUTES


=head2 Facets => L<Paws::CloudSearchDomain::Facets>

The requested facet information.



=head2 Hits => L<Paws::CloudSearchDomain::Hits>

The documents that match the search criteria.



=head2 Status => L<Paws::CloudSearchDomain::SearchStatus>

The status information returned for the search request.




=cut

