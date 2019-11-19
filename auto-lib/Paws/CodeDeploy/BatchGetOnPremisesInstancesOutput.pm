# Generated from json/callresult_class.tt

package Paws::CodeDeploy::BatchGetOnPremisesInstancesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_InstanceInfo/;
  has InstanceInfos => (is => 'ro', isa => ArrayRef[CodeDeploy_InstanceInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceInfos' => {
                                    'type' => 'ArrayRef[CodeDeploy_InstanceInfo]',
                                    'class' => 'Paws::CodeDeploy::InstanceInfo'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'InstanceInfos' => 'instanceInfos'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetOnPremisesInstancesOutput

=head1 ATTRIBUTES


=head2 InstanceInfos => ArrayRef[CodeDeploy_InstanceInfo]

Information about the on-premises instances.


=head2 _request_id => Str


=cut

1;