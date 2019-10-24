
package Paws::Greengrass::GetConnectivityInfoResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_ConnectivityInfo/;
  has ConnectivityInfo => (is => 'ro', isa => ArrayRef[Greengrass_ConnectivityInfo]);
  has Message => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConnectivityInfo' => {
                                       'class' => 'Paws::Greengrass::ConnectivityInfo',
                                       'type' => 'ArrayRef[Greengrass_ConnectivityInfo]'
                                     },
               'Message' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Message' => 'message'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetConnectivityInfoResponse

=head1 ATTRIBUTES


=head2 ConnectivityInfo => ArrayRef[Greengrass_ConnectivityInfo]

Connectivity info list.


=head2 Message => Str

A message about the connectivity info request.


=head2 _request_id => Str


=cut

