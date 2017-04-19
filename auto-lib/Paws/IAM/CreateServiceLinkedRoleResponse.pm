
package Paws::IAM::CreateServiceLinkedRoleResponse;
  use Moose;
  has Role => (is => 'ro', isa => 'Paws::IAM::Role');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateServiceLinkedRoleResponse

=head1 ATTRIBUTES


=head2 Role => L<Paws::IAM::Role>

A Role object that contains details about the newly created role.


=head2 _request_id => Str


=cut

