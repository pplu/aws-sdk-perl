
package Paws::MediaStore::GetLifecyclePolicyOutput;
  use Moose;
  has LifecyclePolicy => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::GetLifecyclePolicyOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> LifecyclePolicy => Str

The object lifecycle policy that is assigned to the container.


=head2 _request_id => Str


=cut

1;