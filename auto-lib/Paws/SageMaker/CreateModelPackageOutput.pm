
package Paws::SageMaker::CreateModelPackageOutput;
  use Moose;
  has ModelPackageArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModelPackageOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelPackageArn => Str

The Amazon Resource Name (ARN) of the new model package.


=head2 _request_id => Str


=cut

1;