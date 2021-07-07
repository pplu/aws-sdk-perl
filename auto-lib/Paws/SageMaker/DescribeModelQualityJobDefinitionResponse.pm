
package Paws::SageMaker::DescribeModelQualityJobDefinitionResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has JobDefinitionArn => (is => 'ro', isa => 'Str', required => 1);
  has JobDefinitionName => (is => 'ro', isa => 'Str', required => 1);
  has JobResources => (is => 'ro', isa => 'Paws::SageMaker::MonitoringResources', required => 1);
  has ModelQualityAppSpecification => (is => 'ro', isa => 'Paws::SageMaker::ModelQualityAppSpecification', required => 1);
  has ModelQualityBaselineConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelQualityBaselineConfig');
  has ModelQualityJobInput => (is => 'ro', isa => 'Paws::SageMaker::ModelQualityJobInput', required => 1);
  has ModelQualityJobOutputConfig => (is => 'ro', isa => 'Paws::SageMaker::MonitoringOutputConfig', required => 1);
  has NetworkConfig => (is => 'ro', isa => 'Paws::SageMaker::MonitoringNetworkConfig');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::MonitoringStoppingCondition');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelQualityJobDefinitionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time at which the model quality job was created.


=head2 B<REQUIRED> JobDefinitionArn => Str

The Amazon Resource Name (ARN) of the model quality job.


=head2 B<REQUIRED> JobDefinitionName => Str

The name of the quality job definition. The name must be unique within
an Amazon Web Services Region in the Amazon Web Services account.


=head2 B<REQUIRED> JobResources => L<Paws::SageMaker::MonitoringResources>




=head2 B<REQUIRED> ModelQualityAppSpecification => L<Paws::SageMaker::ModelQualityAppSpecification>

Configures the model quality job to run a specified Docker container
image.


=head2 ModelQualityBaselineConfig => L<Paws::SageMaker::ModelQualityBaselineConfig>

The baseline configuration for a model quality job.


=head2 B<REQUIRED> ModelQualityJobInput => L<Paws::SageMaker::ModelQualityJobInput>

Inputs for the model quality job.


=head2 B<REQUIRED> ModelQualityJobOutputConfig => L<Paws::SageMaker::MonitoringOutputConfig>




=head2 NetworkConfig => L<Paws::SageMaker::MonitoringNetworkConfig>

Networking options for a model quality job.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can
assume to perform tasks on your behalf.


=head2 StoppingCondition => L<Paws::SageMaker::MonitoringStoppingCondition>




=head2 _request_id => Str


=cut

1;