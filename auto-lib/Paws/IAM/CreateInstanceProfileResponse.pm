
package Paws::IAM::CreateInstanceProfileResponse;
  use Moose;
  has InstanceProfile => (is => 'ro', isa => 'Paws::IAM::InstanceProfile', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateInstanceProfileResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceProfile => L<Paws::IAM::InstanceProfile>

A structure containing details about the new instance profile.


=head2 _request_id => Str


=cut

