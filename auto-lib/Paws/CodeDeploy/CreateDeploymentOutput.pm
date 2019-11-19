# Generated from json/callresult_class.tt

package Paws::CodeDeploy::CreateDeploymentOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw//;
  has DeploymentId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeploymentId' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DeploymentId' => 'deploymentId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentOutput

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The unique ID of a deployment.


=head2 _request_id => Str


=cut

1;