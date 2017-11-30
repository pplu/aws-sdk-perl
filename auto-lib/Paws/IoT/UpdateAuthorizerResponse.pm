
package Paws::IoT::UpdateAuthorizerResponse;
  use Moose;
  has AuthorizerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerArn');
  has AuthorizerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateAuthorizerResponse

=head1 ATTRIBUTES


=head2 AuthorizerArn => Str

The authorizer ARN.


=head2 AuthorizerName => Str

The authorizer name.


=head2 _request_id => Str


=cut

