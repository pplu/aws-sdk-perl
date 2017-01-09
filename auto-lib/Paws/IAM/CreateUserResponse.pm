
package Paws::IAM::CreateUserResponse;
  use Moose;
  has User => (is => 'ro', isa => 'Paws::IAM::User');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateUserResponse

=head1 ATTRIBUTES


=head2 User => L<Paws::IAM::User>

A structure with details about the new IAM user.


=head2 _request_id => Str


=cut

