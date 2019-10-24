# Generated from json/callresult_class.tt

package Paws::CodeDeploy::GetDeploymentTargetOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_DeploymentTarget/;
  has DeploymentTarget => (is => 'ro', isa => CodeDeploy_DeploymentTarget);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeploymentTarget' => {
                                       'class' => 'Paws::CodeDeploy::DeploymentTarget',
                                       'type' => 'CodeDeploy_DeploymentTarget'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DeploymentTarget' => 'deploymentTarget'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetDeploymentTargetOutput

=head1 ATTRIBUTES


=head2 DeploymentTarget => CodeDeploy_DeploymentTarget

A deployment target that contains information about a deployment such
as its status, lifecyle events, and when it was last updated. It also
contains metadata about the deployment target. The deployment target
metadata depends on the deployment target's type (C<instanceTarget>,
C<lambdaTarget>, or C<ecsTarget>).


=head2 _request_id => Str


=cut

1;