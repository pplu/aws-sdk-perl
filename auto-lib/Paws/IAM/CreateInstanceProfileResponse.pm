
package Paws::IAM::CreateInstanceProfileResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has InstanceProfile => (is => 'ro', isa => 'Paws::IAM::InstanceProfile', required => 1);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateInstanceProfileResponse

=head1 ATTRIBUTES

=head2 B<REQUIRED> InstanceProfile => Paws::IAM::InstanceProfile

  

Information about the instance profile.











=cut

