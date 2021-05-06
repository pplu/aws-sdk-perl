
package Paws::Connect::CreateUserResponse;
  use Moose;
  has UserArn => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateUserResponse

=head1 ATTRIBUTES


=head2 UserArn => Str

The Amazon Resource Name (ARN) of the user account.


=head2 UserId => Str

The identifier of the user account.


=head2 _request_id => Str


=cut

