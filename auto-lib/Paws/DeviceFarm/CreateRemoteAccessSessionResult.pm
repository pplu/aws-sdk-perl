# Generated from json/callresult_class.tt

package Paws::DeviceFarm::CreateRemoteAccessSessionResult;
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
                                          'class' => 'Paws::DeviceFarm::RemoteAccessSession',
                                          'type' => 'DeviceFarm_RemoteAccessSession'
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

Paws::DeviceFarm::CreateRemoteAccessSessionResult

=head1 ATTRIBUTES


=head2 RemoteAccessSession => DeviceFarm_RemoteAccessSession

A container that describes the remote access session when the request
to create a remote access session is sent.


=head2 _request_id => Str


=cut

1;