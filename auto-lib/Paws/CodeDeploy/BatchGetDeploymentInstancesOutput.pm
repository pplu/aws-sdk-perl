# Generated from json/callresult_class.tt

package Paws::CodeDeploy::BatchGetDeploymentInstancesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_InstanceSummary/;
  has ErrorMessage => (is => 'ro', isa => Str);
  has InstancesSummary => (is => 'ro', isa => ArrayRef[CodeDeploy_InstanceSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 },
               'InstancesSummary' => {
                                       'class' => 'Paws::CodeDeploy::InstanceSummary',
                                       'type' => 'ArrayRef[CodeDeploy_InstanceSummary]'
                                     }
             },
  'NameInRequest' => {
                       'ErrorMessage' => 'errorMessage',
                       'InstancesSummary' => 'instancesSummary'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetDeploymentInstancesOutput

=head1 ATTRIBUTES


=head2 ErrorMessage => Str

Information about errors that might have occurred during the API call.


=head2 InstancesSummary => ArrayRef[CodeDeploy_InstanceSummary]

Information about the instance.


=head2 _request_id => Str


=cut

1;