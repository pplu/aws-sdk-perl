# Generated from json/callresult_class.tt

package Paws::CodeDeploy::CreateDeploymentGroupOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw//;
  has DeploymentGroupId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeploymentGroupId' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'DeploymentGroupId' => 'deploymentGroupId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentGroupOutput

=head1 ATTRIBUTES


=head2 DeploymentGroupId => Str

A unique deployment group ID.


=head2 _request_id => Str


=cut

1;