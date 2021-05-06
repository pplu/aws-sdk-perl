
package Paws::IAM::UpdateRoleDescriptionResponse;
  use Moose;
  has Role => (is => 'ro', isa => 'Paws::IAM::Role');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UpdateRoleDescriptionResponse

=head1 ATTRIBUTES


=head2 Role => L<Paws::IAM::Role>

A structure that contains details about the modified role.


=head2 _request_id => Str


=cut

