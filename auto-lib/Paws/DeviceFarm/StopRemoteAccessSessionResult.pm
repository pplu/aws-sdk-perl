# Generated from json/callresult_class.tt

package Paws::DeviceFarm::StopRemoteAccessSessionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_RemoteAccessSession/;
  has RemoteAccessSession => (is => 'ro', isa => DeviceFarm_RemoteAccessSession);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RemoteAccessSession' => {
                                          'class' => 'Paws::DeviceFarm::RemoteAccessSession',
                                          'type' => 'DeviceFarm_RemoteAccessSession'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RemoteAccessSession' => 'remoteAccessSession'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::StopRemoteAccessSessionResult

=head1 ATTRIBUTES


=head2 RemoteAccessSession => DeviceFarm_RemoteAccessSession

A container representing the metadata from the service about the remote
access session you are stopping.


=head2 _request_id => Str


=cut

1;