
package Paws::SageMaker::CreateModelPackageGroupOutput;
  use Moose;
  has ModelPackageGroupArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModelPackageGroupOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelPackageGroupArn => Str

The Amazon Resource Name (ARN) of the model group.


=head2 _request_id => Str


=cut

1;