# Generated from json/callresult_class.tt

package Paws::DeviceFarm::UpdateNetworkProfileResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_NetworkProfile/;
  has NetworkProfile => (is => 'ro', isa => DeviceFarm_NetworkProfile);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NetworkProfile' => {
                                     'class' => 'Paws::DeviceFarm::NetworkProfile',
                                     'type' => 'DeviceFarm_NetworkProfile'
                                   }
             },
  'NameInRequest' => {
                       'NetworkProfile' => 'networkProfile'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UpdateNetworkProfileResult

=head1 ATTRIBUTES


=head2 NetworkProfile => DeviceFarm_NetworkProfile

A list of the available network profiles.


=head2 _request_id => Str


=cut

1;