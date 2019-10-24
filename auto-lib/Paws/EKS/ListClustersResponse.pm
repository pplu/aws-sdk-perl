
package Paws::EKS::ListClustersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EKS::Types qw//;
  has Clusters => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Clusters' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Clusters' => 'clusters'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListClustersResponse

=head1 ATTRIBUTES


=head2 Clusters => ArrayRef[Str|Undef]

A list of all of the clusters for your account in the specified Region.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListClusters> request.
When the results of a C<ListClusters> request exceed C<maxResults>, you
can use this value to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

