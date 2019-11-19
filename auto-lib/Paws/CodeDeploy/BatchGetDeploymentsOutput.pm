# Generated from json/callresult_class.tt

package Paws::CodeDeploy::BatchGetDeploymentsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_DeploymentInfo/;
  has DeploymentsInfo => (is => 'ro', isa => ArrayRef[CodeDeploy_DeploymentInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DeploymentsInfo' => 'deploymentsInfo'
                     },
  'types' => {
               'DeploymentsInfo' => {
                                      'class' => 'Paws::CodeDeploy::DeploymentInfo',
                                      'type' => 'ArrayRef[CodeDeploy_DeploymentInfo]'
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

Paws::CodeDeploy::BatchGetDeploymentsOutput

=head1 ATTRIBUTES


=head2 DeploymentsInfo => ArrayRef[CodeDeploy_DeploymentInfo]

Information about the deployments.


=head2 _request_id => Str


=cut

1;