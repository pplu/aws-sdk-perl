
package Paws::CloudSearchDomain::SearchResponse;
  use Moose;
  has Facets => (is => 'ro', isa => 'Paws::CloudSearchDomain::Facets', traits => ['NameInRequest'], request_name => 'facets');
  has Hits => (is => 'ro', isa => 'Paws::CloudSearchDomain::Hits', traits => ['NameInRequest'], request_name => 'hits');
  has Stats => (is => 'ro', isa => 'Paws::CloudSearchDomain::Stats', traits => ['NameInRequest'], request_name => 'stats');
  has Status => (is => 'ro', isa => 'Paws::CloudSearchDomain::SearchStatus', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::SearchResponse

=head1 ATTRIBUTES


=head2 Facets => L<Paws::CloudSearchDomain::Facets>

The requested facet information.


=head2 Hits => L<Paws::CloudSearchDomain::Hits>

The documents that match the search criteria.


=head2 Stats => L<Paws::CloudSearchDomain::Stats>

The requested field statistics information.


=head2 Status => L<Paws::CloudSearchDomain::SearchStatus>

The status information returned for the search request.


=head2 _request_id => Str


=cut

