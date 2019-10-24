
package Paws::Greengrass::GetDeploymentStatusResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_ErrorDetail/;
  has DeploymentStatus => (is => 'ro', isa => Str);
  has DeploymentType => (is => 'ro', isa => Str);
  has ErrorDetails => (is => 'ro', isa => ArrayRef[Greengrass_ErrorDetail]);
  has ErrorMessage => (is => 'ro', isa => Str);
  has UpdatedAt => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UpdatedAt' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ErrorDetails' => {
                                   'class' => 'Paws::Greengrass::ErrorDetail',
                                   'type' => 'ArrayRef[Greengrass_ErrorDetail]'
                                 },
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 },
               'DeploymentType' => {
                                     'type' => 'Str'
                                   },
               'DeploymentStatus' => {
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

Paws::Greengrass::GetDeploymentStatusResponse

=head1 ATTRIBUTES


=head2 DeploymentStatus => Str

The status of the deployment: ''InProgress'', ''Building'',
''Success'', or ''Failure''.


=head2 DeploymentType => Str

The type of the deployment.

Valid values are: C<"NewDeployment">, C<"Redeployment">, C<"ResetDeployment">, C<"ForceResetDeployment">
=head2 ErrorDetails => ArrayRef[Greengrass_ErrorDetail]

Error details


=head2 ErrorMessage => Str

Error message


=head2 UpdatedAt => Str

The time, in milliseconds since the epoch, when the deployment status
was updated.


=head2 _request_id => Str


=cut

