
package Paws::Greengrass::ListBulkDeploymentDetailedReportsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_BulkDeploymentResult/;
  has Deployments => (is => 'ro', isa => ArrayRef[Greengrass_BulkDeploymentResult]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Deployments' => {
                                  'class' => 'Paws::Greengrass::BulkDeploymentResult',
                                  'type' => 'ArrayRef[Greengrass_BulkDeploymentResult]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListBulkDeploymentDetailedReportsResponse

=head1 ATTRIBUTES


=head2 Deployments => ArrayRef[Greengrass_BulkDeploymentResult]

A list of the individual group deployments in the bulk deployment
operation.


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.


=head2 _request_id => Str


=cut

