
package Paws::SageMaker::DescribeTrialComponentResponse;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has InputArtifacts => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentArtifacts');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::TrialComponentMetricSummary]');
  has OutputArtifacts => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentArtifacts');
  has Parameters => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentParameters');
  has Source => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentSource');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentStatus');
  has TrialComponentArn => (is => 'ro', isa => 'Str');
  has TrialComponentName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeTrialComponentResponse

=head1 ATTRIBUTES


=head2 CreatedBy => L<Paws::SageMaker::UserContext>

Who created the component.


=head2 CreationTime => Str

When the component was created.


=head2 DisplayName => Str

The name of the component as displayed. If C<DisplayName> isn't
specified, C<TrialComponentName> is displayed.


=head2 EndTime => Str

When the component ended.


=head2 InputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>

The input artifacts of the component.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>

Who last modified the component.


=head2 LastModifiedTime => Str

When the component was last modified.


=head2 Metrics => ArrayRef[L<Paws::SageMaker::TrialComponentMetricSummary>]

The metrics for the component.


=head2 OutputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>

The output artifacts of the component.


=head2 Parameters => L<Paws::SageMaker::TrialComponentParameters>

The hyperparameters of the component.


=head2 Source => L<Paws::SageMaker::TrialComponentSource>

The Amazon Resource Name (ARN) of the source and, optionally, the job
type.


=head2 StartTime => Str

When the component started.


=head2 Status => L<Paws::SageMaker::TrialComponentStatus>

The status of the component. States include:

=over

=item *

InProgress

=item *

Completed

=item *

Failed

=back



=head2 TrialComponentArn => Str

The Amazon Resource Name (ARN) of the trial component.


=head2 TrialComponentName => Str

The name of the trial component.


=head2 _request_id => Str


=cut

1;