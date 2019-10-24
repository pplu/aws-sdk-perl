
package Paws::CloudSearchDomain::SearchResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearchDomain::Types qw/CloudSearchDomain_SearchStatus CloudSearchDomain_Facets CloudSearchDomain_Hits CloudSearchDomain_Stats/;
  has Facets => (is => 'ro', isa => CloudSearchDomain_Facets);
  has Hits => (is => 'ro', isa => CloudSearchDomain_Hits);
  has Stats => (is => 'ro', isa => CloudSearchDomain_Stats);
  has Status => (is => 'ro', isa => CloudSearchDomain_SearchStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Facets' => {
                             'class' => 'Paws::CloudSearchDomain::Facets',
                             'type' => 'CloudSearchDomain_Facets'
                           },
               'Status' => {
                             'class' => 'Paws::CloudSearchDomain::SearchStatus',
                             'type' => 'CloudSearchDomain_SearchStatus'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Hits' => {
                           'class' => 'Paws::CloudSearchDomain::Hits',
                           'type' => 'CloudSearchDomain_Hits'
                         },
               'Stats' => {
                            'class' => 'Paws::CloudSearchDomain::Stats',
                            'type' => 'CloudSearchDomain_Stats'
                          }
             },
  'NameInRequest' => {
                       'Facets' => 'facets',
                       'Status' => 'status',
                       'Hits' => 'hits',
                       'Stats' => 'stats'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::SearchResponse

=head1 ATTRIBUTES


=head2 Facets => CloudSearchDomain_Facets

The requested facet information.


=head2 Hits => CloudSearchDomain_Hits

The documents that match the search criteria.


=head2 Stats => CloudSearchDomain_Stats

The requested field statistics information.


=head2 Status => CloudSearchDomain_SearchStatus

The status information returned for the search request.


=head2 _request_id => Str


=cut

