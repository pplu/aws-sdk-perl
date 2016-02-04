
package Paws::CloudSearchDomain::SearchResponse;
  use Moose;
  has Facets => (is => 'ro', isa => 'HashRef[Paws::CloudSearchDomain::BucketInfo]');
  has Hits => (is => 'ro', isa => 'Paws::CloudSearchDomain::Hits');
  has Status => (is => 'ro', isa => 'Paws::CloudSearchDomain::SearchStatus');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::SearchResponse

=head1 ATTRIBUTES


=head2 Facets => HashRef[L<Paws::CloudSearchDomain::BucketInfo>]

The requested facet information.



=head2 Hits => L<Paws::CloudSearchDomain::Hits>

The documents that match the search criteria.



=head2 Status => L<Paws::CloudSearchDomain::SearchStatus>

The status information returned for the search request.




=cut

