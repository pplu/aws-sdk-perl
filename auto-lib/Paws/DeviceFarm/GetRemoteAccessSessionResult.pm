# Generated from json/callresult_class.tt

package Paws::DeviceFarm::GetRemoteAccessSessionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_RemoteAccessSession/;
  has RemoteAccessSession => (is => 'ro', isa => DeviceFarm_RemoteAccessSession);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RemoteAccessSession' => {
                                          'type' => 'DeviceFarm_RemoteAccessSession',
                                          'class' => 'Paws::DeviceFarm::RemoteAccessSession'
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

Paws::DeviceFarm::GetRemoteAccessSessionResult

=head1 ATTRIBUTES


=head2 RemoteAccessSession => DeviceFarm_RemoteAccessSession

A container that lists detailed information about the remote access
session.


=head2 _request_id => Str


=cut

1;