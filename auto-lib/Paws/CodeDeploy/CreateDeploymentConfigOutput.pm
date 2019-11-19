# Generated from json/callresult_class.tt

package Paws::CodeDeploy::CreateDeploymentConfigOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw//;
  has DeploymentConfigId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeploymentConfigId' => {
                                         'type' => 'Str'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DeploymentConfigId' => 'deploymentConfigId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentConfigOutput

=head1 ATTRIBUTES


=head2 DeploymentConfigId => Str

A unique deployment configuration ID.


=head2 _request_id => Str


=cut

1;