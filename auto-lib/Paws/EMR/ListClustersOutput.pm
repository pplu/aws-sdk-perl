# Generated from json/callresult_class.tt

package Paws::EMR::ListClustersOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EMR::Types qw/EMR_ClusterSummary/;
  has Clusters => (is => 'ro', isa => ArrayRef[EMR_ClusterSummary]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Clusters' => {
                               'class' => 'Paws::EMR::ClusterSummary',
                               'type' => 'ArrayRef[EMR_ClusterSummary]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListClustersOutput

=head1 ATTRIBUTES


=head2 Clusters => ArrayRef[EMR_ClusterSummary]

The list of clusters for the account based on the given filters.


=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

1;