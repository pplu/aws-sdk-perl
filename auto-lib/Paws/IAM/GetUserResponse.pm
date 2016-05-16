
package Paws::IAM::GetUserResponse;
  use Moose;
  has User => (is => 'ro', isa => 'Paws::IAM::User', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetUserResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> User => L<Paws::IAM::User>

A structure containing details about the IAM user.




=cut

