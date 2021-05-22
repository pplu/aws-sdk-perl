
package Paws::SageMaker::UpdateTrainingJob;
  use Moose;
  has ProfilerConfig => (is => 'ro', isa => 'Paws::SageMaker::ProfilerConfigForUpdate');
  has ProfilerRuleConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProfilerRuleConfiguration]');
  has TrainingJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTrainingJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateTrainingJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateTrainingJob - Arguments for method UpdateTrainingJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTrainingJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateTrainingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTrainingJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateTrainingJobResponse = $api . sagemaker->UpdateTrainingJob(
      TrainingJobName => 'MyTrainingJobName',
      ProfilerConfig  => {
        DisableProfiler                 => 1,    # OPTIONAL
        ProfilingIntervalInMilliseconds => 1,    # OPTIONAL
        ProfilingParameters             => {
          'MyConfigKey' =>
            'MyConfigValue',    # key: min: 1, max: 256, value: max: 256
        },    # max: 20; OPTIONAL
        S3OutputPath => 'MyS3Uri',    # max: 1024; OPTIONAL
      },    # OPTIONAL
      ProfilerRuleConfigurations => [
        {
          RuleConfigurationName => 'MyRuleConfigurationName', # min: 1, max: 256
          RuleEvaluatorImage    => 'MyAlgorithmImage',        # max: 255
          InstanceType          => 'ml.t3.medium'
          , # values: ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge; OPTIONAL
          LocalPath      => 'MyDirectoryPath',    # max: 4096; OPTIONAL
          RuleParameters => {
            'MyConfigKey' =>
              'MyConfigValue',    # key: min: 1, max: 256, value: max: 256
          },    # max: 100; OPTIONAL
          S3OutputPath   => 'MyS3Uri',    # max: 1024; OPTIONAL
          VolumeSizeInGB => 1,            # OPTIONAL
        },
        ...
      ],                                  # OPTIONAL
    );

    # Results:
    my $TrainingJobArn = $UpdateTrainingJobResponse->TrainingJobArn;

    # Returns a L<Paws::SageMaker::UpdateTrainingJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateTrainingJob>

=head1 ATTRIBUTES


=head2 ProfilerConfig => L<Paws::SageMaker::ProfilerConfigForUpdate>

Configuration information for Debugger system monitoring, framework
profiling, and storage paths.



=head2 ProfilerRuleConfigurations => ArrayRef[L<Paws::SageMaker::ProfilerRuleConfiguration>]

Configuration information for Debugger rules for profiling system and
framework metrics.



=head2 B<REQUIRED> TrainingJobName => Str

The name of a training job to update the Debugger profiling
configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTrainingJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

