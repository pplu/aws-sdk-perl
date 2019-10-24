# Generated from json/callresult_class.tt

package Paws::CodeDeploy::GetOnPremisesInstanceOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_InstanceInfo/;
  has InstanceInfo => (is => 'ro', isa => CodeDeploy_InstanceInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceInfo' => {
                                   'class' => 'Paws::CodeDeploy::InstanceInfo',
                                   'type' => 'CodeDeploy_InstanceInfo'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'InstanceInfo' => 'instanceInfo'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetOnPremisesInstanceOutput

=head1 ATTRIBUTES


=head2 InstanceInfo => CodeDeploy_InstanceInfo

Information about the on-premises instance.


=head2 _request_id => Str


=cut

1;