# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListRemoteAccessSessionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_RemoteAccessSession/;
  has NextToken => (is => 'ro', isa => Str);
  has RemoteAccessSessions => (is => 'ro', isa => ArrayRef[DeviceFarm_RemoteAccessSession]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RemoteAccessSessions' => {
                                           'class' => 'Paws::DeviceFarm::RemoteAccessSession',
                                           'type' => 'ArrayRef[DeviceFarm_RemoteAccessSession]'
                                         },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RemoteAccessSessions' => 'remoteAccessSessions',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListRemoteAccessSessionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 RemoteAccessSessions => ArrayRef[DeviceFarm_RemoteAccessSession]

A container representing the metadata from the service about each
remote access session you are requesting.


=head2 _request_id => Str


=cut

1;