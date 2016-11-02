
package Paws::IAM::CreateGroupResponse;
  use Moose;
  has Group => (is => 'ro', isa => 'Paws::IAM::Group', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Group => L<Paws::IAM::Group>

A structure containing details about the new group.


=head2 _request_id => Str


=cut

