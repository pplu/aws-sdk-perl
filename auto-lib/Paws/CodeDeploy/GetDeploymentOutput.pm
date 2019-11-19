# Generated from json/callresult_class.tt

package Paws::CodeDeploy::GetDeploymentOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_DeploymentInfo/;
  has DeploymentInfo => (is => 'ro', isa => CodeDeploy_DeploymentInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeploymentInfo' => {
                                     'class' => 'Paws::CodeDeploy::DeploymentInfo',
                                     'type' => 'CodeDeploy_DeploymentInfo'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DeploymentInfo' => 'deploymentInfo'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetDeploymentOutput

=head1 ATTRIBUTES


=head2 DeploymentInfo => CodeDeploy_DeploymentInfo

Information about the deployment.


=head2 _request_id => Str


=cut

1;