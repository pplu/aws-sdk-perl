
package Paws::MediaStore::GetContainerPolicyOutput;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::GetContainerPolicyOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

The contents of the access policy.


=head2 _request_id => Str


=cut

1;