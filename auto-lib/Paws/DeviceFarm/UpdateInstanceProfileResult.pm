# Generated from json/callresult_class.tt

package Paws::DeviceFarm::UpdateInstanceProfileResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_InstanceProfile/;
  has InstanceProfile => (is => 'ro', isa => DeviceFarm_InstanceProfile);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceProfile' => {
                                      'type' => 'DeviceFarm_InstanceProfile',
                                      'class' => 'Paws::DeviceFarm::InstanceProfile'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'InstanceProfile' => 'instanceProfile'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UpdateInstanceProfileResult

=head1 ATTRIBUTES


=head2 InstanceProfile => DeviceFarm_InstanceProfile

An object containing information about your instance profile.


=head2 _request_id => Str


=cut

1;