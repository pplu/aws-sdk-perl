
package Paws::SageMaker::DescribeModelOutput;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has ModelArn => (is => 'ro', isa => 'Str', required => 1);
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has PrimaryContainer => (is => 'ro', isa => 'Paws::SageMaker::ContainerDefinition', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

A timestamp that shows when the model was created.


=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that you specified for
the model.


=head2 B<REQUIRED> ModelArn => Str

The Amazon Resource Name (ARN) of the model.


=head2 B<REQUIRED> ModelName => Str

Name of the Amazon SageMaker model.


=head2 B<REQUIRED> PrimaryContainer => L<Paws::SageMaker::ContainerDefinition>

The location of the primary inference code, associated artifacts, and
custom environment map that the inference code uses when it is deployed
in production.


=head2 _request_id => Str


=cut

1;