
package Paws::IoT::TestAuthorizationResponse;
  use Moose;
  has AuthResults => (is => 'ro', isa => 'ArrayRef[Paws::IoT::AuthResult]', traits => ['NameInRequest'], request_name => 'authResults');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TestAuthorizationResponse

=head1 ATTRIBUTES


=head2 AuthResults => ArrayRef[L<Paws::IoT::AuthResult>]

The authentication results.


=head2 _request_id => Str


=cut

