# Generated from json/callresult_class.tt

package Paws::CodeDeploy::BatchGetDeploymentGroupsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_DeploymentGroupInfo/;
  has DeploymentGroupsInfo => (is => 'ro', isa => ArrayRef[CodeDeploy_DeploymentGroupInfo]);
  has ErrorMessage => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DeploymentGroupsInfo' => 'deploymentGroupsInfo',
                       'ErrorMessage' => 'errorMessage'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 },
               'DeploymentGroupsInfo' => {
                                           'type' => 'ArrayRef[CodeDeploy_DeploymentGroupInfo]',
                                           'class' => 'Paws::CodeDeploy::DeploymentGroupInfo'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetDeploymentGroupsOutput

=head1 ATTRIBUTES


=head2 DeploymentGroupsInfo => ArrayRef[CodeDeploy_DeploymentGroupInfo]

Information about the deployment groups.


=head2 ErrorMessage => Str

Information about errors that might have occurred during the API call.


=head2 _request_id => Str


=cut

1;