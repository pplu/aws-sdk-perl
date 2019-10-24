# Generated from json/callresult_class.tt

package Paws::Lightsail::GetInstanceStateResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_InstanceState/;
  has State => (is => 'ro', isa => Lightsail_InstanceState);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'State' => {
                            'class' => 'Paws::Lightsail::InstanceState',
                            'type' => 'Lightsail_InstanceState'
                          }
             },
  'NameInRequest' => {
                       'State' => 'state'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceStateResult

=head1 ATTRIBUTES


=head2 State => Lightsail_InstanceState

The state of the instance.


=head2 _request_id => Str


=cut

1;