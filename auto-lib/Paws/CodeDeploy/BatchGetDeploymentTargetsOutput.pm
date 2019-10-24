# Generated from json/callresult_class.tt

package Paws::CodeDeploy::BatchGetDeploymentTargetsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_DeploymentTarget/;
  has DeploymentTargets => (is => 'ro', isa => ArrayRef[CodeDeploy_DeploymentTarget]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeploymentTargets' => {
                                        'class' => 'Paws::CodeDeploy::DeploymentTarget',
                                        'type' => 'ArrayRef[CodeDeploy_DeploymentTarget]'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DeploymentTargets' => 'deploymentTargets'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetDeploymentTargetsOutput

=head1 ATTRIBUTES


=head2 DeploymentTargets => ArrayRef[CodeDeploy_DeploymentTarget]

A list of target objects for a deployment. Each target object contains
details about the target, such as its status and lifecycle events. The
type of the target objects depends on the deployment' compute platform.

=over

=item *

B<EC2/On-premises>: Each target object is an EC2 or on-premises
instance.

=item *

B<AWS Lambda>: The target object is a specific version of an AWS Lambda
function.

=item *

B<Amazon ECS>: The target object is an Amazon ECS service.

=back



=head2 _request_id => Str


=cut

1;