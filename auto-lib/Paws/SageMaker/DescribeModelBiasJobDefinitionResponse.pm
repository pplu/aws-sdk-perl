
package Paws::SageMaker::DescribeModelBiasJobDefinitionResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has JobDefinitionArn => (is => 'ro', isa => 'Str', required => 1);
  has JobDefinitionName => (is => 'ro', isa => 'Str', required => 1);
  has JobResources => (is => 'ro', isa => 'Paws::SageMaker::MonitoringResources', required => 1);
  has ModelBiasAppSpecification => (is => 'ro', isa => 'Paws::SageMaker::ModelBiasAppSpecification', required => 1);
  has ModelBiasBaselineConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelBiasBaselineConfig');
  has ModelBiasJobInput => (is => 'ro', isa => 'Paws::SageMaker::ModelBiasJobInput', required => 1);
  has ModelBiasJobOutputConfig => (is => 'ro', isa => 'Paws::SageMaker::MonitoringOutputConfig', required => 1);
  has NetworkConfig => (is => 'ro', isa => 'Paws::SageMaker::MonitoringNetworkConfig');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::MonitoringStoppingCondition');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelBiasJobDefinitionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time at which the model bias job was created.


=head2 B<REQUIRED> JobDefinitionArn => Str

The Amazon Resource Name (ARN) of the model bias job.


=head2 B<REQUIRED> JobDefinitionName => Str

The name of the bias job definition. The name must be unique within an
Amazon Web Services Region in the Amazon Web Services account.


=head2 B<REQUIRED> JobResources => L<Paws::SageMaker::MonitoringResources>




=head2 B<REQUIRED> ModelBiasAppSpecification => L<Paws::SageMaker::ModelBiasAppSpecification>

Configures the model bias job to run a specified Docker container
image.


=head2 ModelBiasBaselineConfig => L<Paws::SageMaker::ModelBiasBaselineConfig>

The baseline configuration for a model bias job.


=head2 B<REQUIRED> ModelBiasJobInput => L<Paws::SageMaker::ModelBiasJobInput>

Inputs for the model bias job.


=head2 B<REQUIRED> ModelBiasJobOutputConfig => L<Paws::SageMaker::MonitoringOutputConfig>




=head2 NetworkConfig => L<Paws::SageMaker::MonitoringNetworkConfig>

Networking options for a model bias job.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the Amazon Web Services Identity and
Access Management (IAM) role that has read permission to the input data
location and write permission to the output data location in Amazon S3.


=head2 StoppingCondition => L<Paws::SageMaker::MonitoringStoppingCondition>




=head2 _request_id => Str


=cut

1;