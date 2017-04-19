
package Paws::EC2::DeleteEgressOnlyInternetGatewayResult;
  use Moose;
  has ReturnCode => (is => 'ro', isa => 'Bool', request_name => 'returnCode', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteEgressOnlyInternetGatewayResult

=head1 ATTRIBUTES


=head2 ReturnCode => Bool

Returns C<true> if the request succeeds; otherwise, it returns an
error.


=head2 _request_id => Str


=cut

