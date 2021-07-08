
package Paws::SageMaker::UpdateModelPackageOutput;
  use Moose;
  has ModelPackageArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateModelPackageOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelPackageArn => Str

The Amazon Resource Name (ARN) of the model.


=head2 _request_id => Str


=cut

1;