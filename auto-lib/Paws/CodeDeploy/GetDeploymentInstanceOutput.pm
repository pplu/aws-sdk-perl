# Generated from json/callresult_class.tt

package Paws::CodeDeploy::GetDeploymentInstanceOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_InstanceSummary/;
  has InstanceSummary => (is => 'ro', isa => CodeDeploy_InstanceSummary);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'InstanceSummary' => 'instanceSummary'
                     },
  'types' => {
               'InstanceSummary' => {
                                      'class' => 'Paws::CodeDeploy::InstanceSummary',
                                      'type' => 'CodeDeploy_InstanceSummary'
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

Paws::CodeDeploy::GetDeploymentInstanceOutput

=head1 ATTRIBUTES


=head2 InstanceSummary => CodeDeploy_InstanceSummary

Information about the instance.


=head2 _request_id => Str


=cut

1;