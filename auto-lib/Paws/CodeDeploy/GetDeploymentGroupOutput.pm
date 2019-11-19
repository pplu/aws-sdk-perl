# Generated from json/callresult_class.tt

package Paws::CodeDeploy::GetDeploymentGroupOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_DeploymentGroupInfo/;
  has DeploymentGroupInfo => (is => 'ro', isa => CodeDeploy_DeploymentGroupInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DeploymentGroupInfo' => 'deploymentGroupInfo'
                     },
  'types' => {
               'DeploymentGroupInfo' => {
                                          'class' => 'Paws::CodeDeploy::DeploymentGroupInfo',
                                          'type' => 'CodeDeploy_DeploymentGroupInfo'
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

Paws::CodeDeploy::GetDeploymentGroupOutput

=head1 ATTRIBUTES


=head2 DeploymentGroupInfo => CodeDeploy_DeploymentGroupInfo

Information about the deployment group.


=head2 _request_id => Str


=cut

1;