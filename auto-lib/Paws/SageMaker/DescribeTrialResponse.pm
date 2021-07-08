
package Paws::SageMaker::DescribeTrialResponse;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has ExperimentName => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has MetadataProperties => (is => 'ro', isa => 'Paws::SageMaker::MetadataProperties');
  has Source => (is => 'ro', isa => 'Paws::SageMaker::TrialSource');
  has TrialArn => (is => 'ro', isa => 'Str');
  has TrialName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeTrialResponse

=head1 ATTRIBUTES


=head2 CreatedBy => L<Paws::SageMaker::UserContext>

Who created the trial.


=head2 CreationTime => Str

When the trial was created.


=head2 DisplayName => Str

The name of the trial as displayed. If C<DisplayName> isn't specified,
C<TrialName> is displayed.


=head2 ExperimentName => Str

The name of the experiment the trial is part of.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>

Who last modified the trial.


=head2 LastModifiedTime => Str

When the trial was last modified.


=head2 MetadataProperties => L<Paws::SageMaker::MetadataProperties>




=head2 Source => L<Paws::SageMaker::TrialSource>

The Amazon Resource Name (ARN) of the source and, optionally, the job
type.


=head2 TrialArn => Str

The Amazon Resource Name (ARN) of the trial.


=head2 TrialName => Str

The name of the trial.


=head2 _request_id => Str


=cut

1;