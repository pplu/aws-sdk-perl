# Generated from json/callresult_class.tt

package Paws::ECS::ListClustersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ECS::Types qw//;
  has ClusterArns => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClusterArns' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ClusterArns' => 'clusterArns',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListClustersResponse

=head1 ATTRIBUTES


=head2 ClusterArns => ArrayRef[Str|Undef]

The list of full Amazon Resource Name (ARN) entries for each cluster
associated with your account.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListClusters> request.
When the results of a C<ListClusters> request exceed C<maxResults>,
this value can be used to retrieve the next page of results. This value
is C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

1;