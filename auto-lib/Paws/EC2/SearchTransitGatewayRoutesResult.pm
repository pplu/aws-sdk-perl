
package Paws::EC2::SearchTransitGatewayRoutesResult;
  use Moose;
  has AdditionalRoutesAvailable => (is => 'ro', isa => 'Bool', request_name => 'additionalRoutesAvailable', traits => ['NameInRequest',]);
  has Routes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TransitGatewayRoute]', request_name => 'routeSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SearchTransitGatewayRoutesResult

=head1 ATTRIBUTES


=head2 AdditionalRoutesAvailable => Bool

Indicates whether there are additional routes available.


=head2 Routes => ArrayRef[L<Paws::EC2::TransitGatewayRoute>]

Information about the routes.


=head2 _request_id => Str


=cut

