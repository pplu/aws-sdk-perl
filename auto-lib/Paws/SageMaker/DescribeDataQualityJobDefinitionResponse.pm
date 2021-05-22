
package Paws::SageMaker::DescribeDataQualityJobDefinitionResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DataQualityAppSpecification => (is => 'ro', isa => 'Paws::SageMaker::DataQualityAppSpecification', required => 1);
  has DataQualityBaselineConfig => (is => 'ro', isa => 'Paws::SageMaker::DataQualityBaselineConfig');
  has DataQualityJobInput => (is => 'ro', isa => 'Paws::SageMaker::DataQualityJobInput', required => 1);
  has DataQualityJobOutputConfig => (is => 'ro', isa => 'Paws::SageMaker::MonitoringOutputConfig', required => 1);
  has JobDefinitionArn => (is => 'ro', isa => 'Str', required => 1);
  has JobDefinitionName => (is => 'ro', isa => 'Str', required => 1);
  has JobResources => (is => 'ro', isa => 'Paws::SageMaker::MonitoringResources', required => 1);
  has NetworkConfig => (is => 'ro', isa => 'Paws::SageMaker::MonitoringNetworkConfig');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::MonitoringStoppingCondition');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeDataQualityJobDefinitionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time that the data quality monitoring job definition was created.


=head2 B<REQUIRED> DataQualityAppSpecification => L<Paws::SageMaker::DataQualityAppSpecification>

Information about the container that runs the data quality monitoring
job.


=head2 DataQualityBaselineConfig => L<Paws::SageMaker::DataQualityBaselineConfig>

The constraints and baselines for the data quality monitoring job
definition.


=head2 B<REQUIRED> DataQualityJobInput => L<Paws::SageMaker::DataQualityJobInput>

The list of inputs for the data quality monitoring job. Currently
endpoints are supported.


=head2 B<REQUIRED> DataQualityJobOutputConfig => L<Paws::SageMaker::MonitoringOutputConfig>




=head2 B<REQUIRED> JobDefinitionArn => Str

The Amazon Resource Name (ARN) of the data quality monitoring job
definition.


=head2 B<REQUIRED> JobDefinitionName => Str

The name of the data quality monitoring job definition.


=head2 B<REQUIRED> JobResources => L<Paws::SageMaker::MonitoringResources>




=head2 NetworkConfig => L<Paws::SageMaker::MonitoringNetworkConfig>

The networking configuration for the data quality monitoring job.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can
assume to perform tasks on your behalf.


=head2 StoppingCondition => L<Paws::SageMaker::MonitoringStoppingCondition>




=head2 _request_id => Str


=cut

1;