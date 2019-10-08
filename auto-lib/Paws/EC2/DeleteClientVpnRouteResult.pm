
package Paws::EC2::DeleteClientVpnRouteResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ClientVpnRouteStatus/;
  has Status => (is => 'ro', isa => EC2_ClientVpnRouteStatus);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'class' => 'Paws::EC2::ClientVpnRouteStatus',
                             'type' => 'EC2_ClientVpnRouteStatus'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Status' => 'status'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteClientVpnRouteResult

=head1 ATTRIBUTES


=head2 Status => EC2_ClientVpnRouteStatus

The current state of the route.


=head2 _request_id => Str


=cut

