
package Paws::SageMaker::GetModelPackageGroupPolicyOutput;
  use Moose;
  has ResourcePolicy => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::GetModelPackageGroupPolicyOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourcePolicy => Str

The resource policy for the model group.


=head2 _request_id => Str


=cut

1;