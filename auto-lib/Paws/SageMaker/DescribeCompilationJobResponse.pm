# Generated from json/callresult_class.tt

package Paws::SageMaker::DescribeCompilationJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw/SageMaker_StoppingCondition SageMaker_InputConfig SageMaker_OutputConfig SageMaker_ModelArtifacts/;
  has CompilationEndTime => (is => 'ro', isa => Str);
  has CompilationJobArn => (is => 'ro', isa => Str, required => 1);
  has CompilationJobName => (is => 'ro', isa => Str, required => 1);
  has CompilationJobStatus => (is => 'ro', isa => Str, required => 1);
  has CompilationStartTime => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has FailureReason => (is => 'ro', isa => Str, required => 1);
  has InputConfig => (is => 'ro', isa => SageMaker_InputConfig, required => 1);
  has LastModifiedTime => (is => 'ro', isa => Str, required => 1);
  has ModelArtifacts => (is => 'ro', isa => SageMaker_ModelArtifacts, required => 1);
  has OutputConfig => (is => 'ro', isa => SageMaker_OutputConfig, required => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1);
  has StoppingCondition => (is => 'ro', isa => SageMaker_StoppingCondition, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'LastModifiedTime' => {
                                       'type' => 'Str'
                                     },
               'CompilationJobStatus' => {
                                           'type' => 'Str'
                                         },
               'CompilationEndTime' => {
                                         'type' => 'Str'
                                       },
               'CompilationStartTime' => {
                                           'type' => 'Str'
                                         },
               'CompilationJobName' => {
                                         'type' => 'Str'
                                       },
               'CompilationJobArn' => {
                                        'type' => 'Str'
                                      },
               'OutputConfig' => {
                                   'class' => 'Paws::SageMaker::OutputConfig',
                                   'type' => 'SageMaker_OutputConfig'
                                 },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StoppingCondition' => {
                                        'type' => 'SageMaker_StoppingCondition',
                                        'class' => 'Paws::SageMaker::StoppingCondition'
                                      },
               'ModelArtifacts' => {
                                     'class' => 'Paws::SageMaker::ModelArtifacts',
                                     'type' => 'SageMaker_ModelArtifacts'
                                   },
               'InputConfig' => {
                                  'type' => 'SageMaker_InputConfig',
                                  'class' => 'Paws::SageMaker::InputConfig'
                                }
             },
  'IsRequired' => {
                    'RoleArn' => 1,
                    'LastModifiedTime' => 1,
                    'CompilationJobStatus' => 1,
                    'CompilationJobName' => 1,
                    'CompilationJobArn' => 1,
                    'OutputConfig' => 1,
                    'CreationTime' => 1,
                    'FailureReason' => 1,
                    'StoppingCondition' => 1,
                    'ModelArtifacts' => 1,
                    'InputConfig' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeCompilationJobResponse

=head1 ATTRIBUTES


=head2 CompilationEndTime => Str

The time when the model compilation job on a compilation job instance
ended. For a successful or stopped job, this is when the job's model
artifacts have finished uploading. For a failed job, this is when
Amazon SageMaker detected that the job failed.


=head2 B<REQUIRED> CompilationJobArn => Str

The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker
assumes to perform the model compilation job.


=head2 B<REQUIRED> CompilationJobName => Str

The name of the model compilation job.


=head2 B<REQUIRED> CompilationJobStatus => Str

The status of the model compilation job.

Valid values are: C<"INPROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STARTING">, C<"STOPPING">, C<"STOPPED">
=head2 CompilationStartTime => Str

The time when the model compilation job started the C<CompilationJob>
instances.

You are billed for the time between this timestamp and the timestamp in
the DescribeCompilationJobResponse$CompilationEndTime field. In Amazon
CloudWatch Logs, the start time might be later than this time. That's
because it takes time to download the compilation job, which depends on
the size of the compilation job container.


=head2 B<REQUIRED> CreationTime => Str

The time that the model compilation job was created.


=head2 B<REQUIRED> FailureReason => Str

If a model compilation job failed, the reason it failed.


=head2 B<REQUIRED> InputConfig => SageMaker_InputConfig

Information about the location in Amazon S3 of the input model
artifacts, the name and shape of the expected data inputs, and the
framework in which the model was trained.


=head2 B<REQUIRED> LastModifiedTime => Str

The time that the status of the model compilation job was last
modified.


=head2 B<REQUIRED> ModelArtifacts => SageMaker_ModelArtifacts

Information about the location in Amazon S3 that has been configured
for storing the model artifacts used in the compilation job.


=head2 B<REQUIRED> OutputConfig => SageMaker_OutputConfig

Information about the output location for the compiled model and the
target device that the model runs on.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the model compilation job.


=head2 B<REQUIRED> StoppingCondition => SageMaker_StoppingCondition

Specifies a limit to how long a model compilation job can run. When the
job reaches the time limit, Amazon SageMaker ends the compilation job.
Use this API to cap model training costs.


=head2 _request_id => Str


=cut

1;