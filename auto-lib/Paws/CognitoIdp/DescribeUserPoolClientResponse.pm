
package Paws::CognitoIdp::DescribeUserPoolClientResponse;
  use Moose;
  has UserPoolClient => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolClientType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DescribeUserPoolClientResponse

=head1 ATTRIBUTES


=head2 UserPoolClient => L<Paws::CognitoIdp::UserPoolClientType>

The user pool client from a server response to describe the user pool
client.


=head2 _request_id => Str


=cut

1;