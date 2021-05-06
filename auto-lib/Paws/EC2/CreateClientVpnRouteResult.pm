
package Paws::EC2::CreateClientVpnRouteResult;
  use Moose;
  has Status => (is => 'ro', isa => 'Paws::EC2::ClientVpnRouteStatus', request_name => 'status', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateClientVpnRouteResult

=head1 ATTRIBUTES


=head2 Status => L<Paws::EC2::ClientVpnRouteStatus>

The current state of the route.


=head2 _request_id => Str


=cut

