# Generated from json/callresult_class.tt

package Paws::Lightsail::GetInstancePortStatesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_InstancePortState/;
  has PortStates => (is => 'ro', isa => ArrayRef[Lightsail_InstancePortState]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PortStates' => {
                                 'type' => 'ArrayRef[Lightsail_InstancePortState]',
                                 'class' => 'Paws::Lightsail::InstancePortState'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'PortStates' => 'portStates'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstancePortStatesResult

=head1 ATTRIBUTES


=head2 PortStates => ArrayRef[Lightsail_InstancePortState]

Information about the port states resulting from your request.


=head2 _request_id => Str


=cut

1;