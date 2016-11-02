
package Paws::IAM::GetInstanceProfileResponse;
  use Moose;
  has InstanceProfile => (is => 'ro', isa => 'Paws::IAM::InstanceProfile', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetInstanceProfileResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceProfile => L<Paws::IAM::InstanceProfile>

A structure containing details about the instance profile.


=head2 _request_id => Str


=cut

