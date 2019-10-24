
package Paws::ApiGatewayV2::CreateDeploymentResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw//;
  has CreatedDate => (is => 'ro', isa => Str);
  has DeploymentId => (is => 'ro', isa => Str);
  has DeploymentStatus => (is => 'ro', isa => Str);
  has DeploymentStatusMessage => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeploymentStatusMessage' => {
                                              'type' => 'Str'
                                            },
               'DeploymentId' => {
                                   'type' => 'Str'
                                 },
               'Description' => {
                                  'type' => 'Str'
                                },
               'DeploymentStatus' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'CreatedDate' => 'createdDate',
                       'DeploymentStatusMessage' => 'deploymentStatusMessage',
                       'DeploymentId' => 'deploymentId',
                       'Description' => 'description',
                       'DeploymentStatus' => 'deploymentStatus'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateDeploymentResponse

=head1 ATTRIBUTES


=head2 CreatedDate => Str

The date and time when the Deployment resource was created.


=head2 DeploymentId => Str

The identifier for the deployment.


=head2 DeploymentStatus => Str

The status of the deployment: PENDING, FAILED, or SUCCEEDED.

Valid values are: C<"PENDING">, C<"FAILED">, C<"DEPLOYED">
=head2 DeploymentStatusMessage => Str

May contain additional feedback on the status of an API deployment.


=head2 Description => Str

The description for the deployment.


=head2 _request_id => Str


=cut

