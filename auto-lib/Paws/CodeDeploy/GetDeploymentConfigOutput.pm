# Generated from json/callresult_class.tt

package Paws::CodeDeploy::GetDeploymentConfigOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_DeploymentConfigInfo/;
  has DeploymentConfigInfo => (is => 'ro', isa => CodeDeploy_DeploymentConfigInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeploymentConfigInfo' => {
                                           'type' => 'CodeDeploy_DeploymentConfigInfo',
                                           'class' => 'Paws::CodeDeploy::DeploymentConfigInfo'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DeploymentConfigInfo' => 'deploymentConfigInfo'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetDeploymentConfigOutput

=head1 ATTRIBUTES


=head2 DeploymentConfigInfo => CodeDeploy_DeploymentConfigInfo

Information about the deployment configuration.


=head2 _request_id => Str


=cut

1;