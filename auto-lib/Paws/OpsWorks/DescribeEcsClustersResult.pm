# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeEcsClustersResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_EcsCluster/;
  has EcsClusters => (is => 'ro', isa => ArrayRef[OpsWorks_EcsCluster]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'EcsClusters' => {
                                  'type' => 'ArrayRef[OpsWorks_EcsCluster]',
                                  'class' => 'Paws::OpsWorks::EcsCluster'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeEcsClustersResult

=head1 ATTRIBUTES


=head2 EcsClusters => ArrayRef[OpsWorks_EcsCluster]

A list of C<EcsCluster> objects containing the cluster descriptions.


=head2 NextToken => Str

If a paginated request does not return all of the remaining results,
this parameter is set to a token that you can assign to the request
object's C<NextToken> parameter to retrieve the next set of results. If
the previous paginated request returned all of the remaining results,
this parameter is set to C<null>.


=head2 _request_id => Str


=cut

1;