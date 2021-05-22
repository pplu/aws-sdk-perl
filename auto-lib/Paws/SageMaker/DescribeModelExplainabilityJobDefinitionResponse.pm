
package Paws::SageMaker::DescribeModelExplainabilityJobDefinitionResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has JobDefinitionArn => (is => 'ro', isa => 'Str', required => 1);
  has JobDefinitionName => (is => 'ro', isa => 'Str', required => 1);
  has JobResources => (is => 'ro', isa => 'Paws::SageMaker::MonitoringResources', required => 1);
  has ModelExplainabilityAppSpecification => (is => 'ro', isa => 'Paws::SageMaker::ModelExplainabilityAppSpecification', required => 1);
  has ModelExplainabilityBaselineConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelExplainabilityBaselineConfig');
  has ModelExplainabilityJobInput => (is => 'ro', isa => 'Paws::SageMaker::ModelExplainabilityJobInput', required => 1);
  has ModelExplainabilityJobOutputConfig => (is => 'ro', isa => 'Paws::SageMaker::MonitoringOutputConfig', required => 1);
  has NetworkConfig => (is => 'ro', isa => 'Paws::SageMaker::MonitoringNetworkConfig');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::MonitoringStoppingCondition');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelExplainabilityJobDefinitionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time at which the model explainability job was created.


=head2 B<REQUIRED> JobDefinitionArn => Str

The Amazon Resource Name (ARN) of the model explainability job.


=head2 B<REQUIRED> JobDefinitionName => Str

The name of the explainability job definition. The name must be unique
within an AWS Region in the AWS account.


=head2 B<REQUIRED> JobResources => L<Paws::SageMaker::MonitoringResources>




=head2 B<REQUIRED> ModelExplainabilityAppSpecification => L<Paws::SageMaker::ModelExplainabilityAppSpecification>

Configures the model explainability job to run a specified Docker
container image.


=head2 ModelExplainabilityBaselineConfig => L<Paws::SageMaker::ModelExplainabilityBaselineConfig>

The baseline configuration for a model explainability job.


=head2 B<REQUIRED> ModelExplainabilityJobInput => L<Paws::SageMaker::ModelExplainabilityJobInput>

Inputs for the model explainability job.


=head2 B<REQUIRED> ModelExplainabilityJobOutputConfig => L<Paws::SageMaker::MonitoringOutputConfig>




=head2 NetworkConfig => L<Paws::SageMaker::MonitoringNetworkConfig>

Networking options for a model explainability job.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that has read permission to the input data
location and write permission to the output data location in Amazon S3.


=head2 StoppingCondition => L<Paws::SageMaker::MonitoringStoppingCondition>




=head2 _request_id => Str


=cut

1;