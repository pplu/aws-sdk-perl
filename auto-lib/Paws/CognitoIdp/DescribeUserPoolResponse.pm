
package Paws::CognitoIdp::DescribeUserPoolResponse;
  use Moose;
  has UserPool => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DescribeUserPoolResponse

=head1 ATTRIBUTES


=head2 UserPool => L<Paws::CognitoIdp::UserPoolType>

The container of metadata returned by the server to describe the pool.


=head2 _request_id => Str


=cut

1;