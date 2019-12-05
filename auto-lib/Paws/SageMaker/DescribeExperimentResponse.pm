
package Paws::SageMaker::DescribeExperimentResponse;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has ExperimentArn => (is => 'ro', isa => 'Str');
  has ExperimentName => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Paws::SageMaker::ExperimentSource');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeExperimentResponse

=head1 ATTRIBUTES


=head2 CreatedBy => L<Paws::SageMaker::UserContext>

Who created the experiment.


=head2 CreationTime => Str

When the experiment was created.


=head2 Description => Str

The description of the experiment.


=head2 DisplayName => Str

The name of the experiment as displayed. If C<DisplayName> isn't
specified, C<ExperimentName> is displayed.


=head2 ExperimentArn => Str

The Amazon Resource Name (ARN) of the experiment.


=head2 ExperimentName => Str

The name of the experiment.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>

Who last modified the experiment.


=head2 LastModifiedTime => Str

When the experiment was last modified.


=head2 Source => L<Paws::SageMaker::ExperimentSource>

The ARN of the source and, optionally, the type.


=head2 _request_id => Str


=cut

1;