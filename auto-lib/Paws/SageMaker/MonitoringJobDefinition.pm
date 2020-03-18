package Paws::SageMaker::MonitoringJobDefinition;
  use Moose;
  has BaselineConfig => (is => 'ro', isa => 'Paws::SageMaker::MonitoringBaselineConfig');
  has Environment => (is => 'ro', isa => 'Paws::SageMaker::MonitoringEnvironmentMap');
  has MonitoringAppSpecification => (is => 'ro', isa => 'Paws::SageMaker::MonitoringAppSpecification', required => 1);
  has MonitoringInputs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MonitoringInput]', required => 1);
  has MonitoringOutputConfig => (is => 'ro', isa => 'Paws::SageMaker::MonitoringOutputConfig', required => 1);
  has MonitoringResources => (is => 'ro', isa => 'Paws::SageMaker::MonitoringResources', required => 1);
  has NetworkConfig => (is => 'ro', isa => 'Paws::SageMaker::NetworkConfig');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::MonitoringStoppingCondition');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::MonitoringJobDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::MonitoringJobDefinition object:

  $service_obj->Method(Att1 => { BaselineConfig => $value, ..., StoppingCondition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::MonitoringJobDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->BaselineConfig

=head1 DESCRIPTION

Defines the monitoring job.

=head1 ATTRIBUTES


=head2 BaselineConfig => L<Paws::SageMaker::MonitoringBaselineConfig>

  Baseline configuration used to validate that the data conforms to the
specified constraints and statistics


=head2 Environment => L<Paws::SageMaker::MonitoringEnvironmentMap>

  Sets the environment variables in the Docker container.


=head2 B<REQUIRED> MonitoringAppSpecification => L<Paws::SageMaker::MonitoringAppSpecification>

  Configures the monitoring job to run a specified Docker container
image.


=head2 B<REQUIRED> MonitoringInputs => ArrayRef[L<Paws::SageMaker::MonitoringInput>]

  The array of inputs for the monitoring job. Currently we support
monitoring an Amazon SageMaker Endpoint.


=head2 B<REQUIRED> MonitoringOutputConfig => L<Paws::SageMaker::MonitoringOutputConfig>

  The array of outputs from the monitoring job to be uploaded to Amazon
Simple Storage Service (Amazon S3).


=head2 B<REQUIRED> MonitoringResources => L<Paws::SageMaker::MonitoringResources>

  Identifies the resources, ML compute instances, and ML storage volumes
to deploy for a monitoring job. In distributed processing, you specify
more than one instance.


=head2 NetworkConfig => L<Paws::SageMaker::NetworkConfig>

  Specifies networking options for an monitoring job.


=head2 B<REQUIRED> RoleArn => Str

  The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can
assume to perform tasks on your behalf.


=head2 StoppingCondition => L<Paws::SageMaker::MonitoringStoppingCondition>

  Specifies a time limit for how long the monitoring job is allowed to
run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

