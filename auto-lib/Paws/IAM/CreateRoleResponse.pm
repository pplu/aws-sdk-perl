
package Paws::IAM::CreateRoleResponse;
  use Moose;
  has Role => (is => 'ro', isa => 'Paws::IAM::Role', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateRoleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Role => L<Paws::IAM::Role>

A structure containing details about the new role.




=cut

