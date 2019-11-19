
package Paws::IoT::UpdateJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_PresignedUrlConfig IoT_AbortConfig IoT_JobExecutionsRolloutConfig IoT_TimeoutConfig/;
  has AbortConfig => (is => 'ro', isa => IoT_AbortConfig, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has JobExecutionsRolloutConfig => (is => 'ro', isa => IoT_JobExecutionsRolloutConfig, predicate => 1);
  has JobId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PresignedUrlConfig => (is => 'ro', isa => IoT_PresignedUrlConfig, predicate => 1);
  has TimeoutConfig => (is => 'ro', isa => IoT_TimeoutConfig, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateJob');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/jobs/{jobId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'JobId' => 'jobId'
                  },
  'IsRequired' => {
                    'JobId' => 1
                  },
  'NameInRequest' => {
                       'Description' => 'description',
                       'AbortConfig' => 'abortConfig',
                       'JobExecutionsRolloutConfig' => 'jobExecutionsRolloutConfig',
                       'PresignedUrlConfig' => 'presignedUrlConfig',
                       'TimeoutConfig' => 'timeoutConfig'
                     },
  'types' => {
               'JobId' => {
                            'type' => 'Str'
                          },
               'Description' => {
                                  'type' => 'Str'
                                },
               'JobExecutionsRolloutConfig' => {
                                                 'class' => 'Paws::IoT::JobExecutionsRolloutConfig',
                                                 'type' => 'IoT_JobExecutionsRolloutConfig'
                                               },
               'AbortConfig' => {
                                  'type' => 'IoT_AbortConfig',
                                  'class' => 'Paws::IoT::AbortConfig'
                                },
               'TimeoutConfig' => {
                                    'type' => 'IoT_TimeoutConfig',
                                    'class' => 'Paws::IoT::TimeoutConfig'
                                  },
               'PresignedUrlConfig' => {
                                         'class' => 'Paws::IoT::PresignedUrlConfig',
                                         'type' => 'IoT_PresignedUrlConfig'
                                       }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateJob - Arguments for method UpdateJob on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJob on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJob.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->UpdateJob(
      JobId       => 'MyJobId',
      AbortConfig => {
        CriteriaList => [
          {
            Action      => 'CANCEL',  # values: CANCEL
            FailureType => 'FAILED',  # values: FAILED, REJECTED, TIMED_OUT, ALL
            MinNumberOfExecutedThings => 1,    # min: 1
            ThresholdPercentage       => 1,    # max: 100

          },
          ...
        ],                                     # min: 1

      },    # OPTIONAL
      Description                => 'MyJobDescription',    # OPTIONAL
      JobExecutionsRolloutConfig => {
        ExponentialRate => {
          BaseRatePerMinute    => 1,                       # min: 1, max: 1000
          IncrementFactor      => 1,                       # min: 1, max: 5
          RateIncreaseCriteria => {
            NumberOfNotifiedThings  => 1,                  # min: 1; OPTIONAL
            NumberOfSucceededThings => 1,                  # min: 1; OPTIONAL
          },

        },    # OPTIONAL
        MaximumPerMinute => 1,    # min: 1; OPTIONAL
      },    # OPTIONAL
      PresignedUrlConfig => {
        ExpiresInSec => 1,              # min: 60, max: 3600; OPTIONAL
        RoleArn      => 'MyRoleArn',    # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      TimeoutConfig => {
        InProgressTimeoutInMinutes => 1,    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateJob>

=head1 ATTRIBUTES


=head2 AbortConfig => IoT_AbortConfig

Allows you to create criteria to abort a job.



=head2 Description => Str

A short text description of the job.



=head2 JobExecutionsRolloutConfig => IoT_JobExecutionsRolloutConfig

Allows you to create a staged rollout of the job.



=head2 B<REQUIRED> JobId => Str

The ID of the job to be updated.



=head2 PresignedUrlConfig => IoT_PresignedUrlConfig

Configuration information for pre-signed S3 URLs.



=head2 TimeoutConfig => IoT_TimeoutConfig

Specifies the amount of time each device has to finish its execution of
the job. The timer is started when the job execution status is set to
C<IN_PROGRESS>. If the job execution status is not set to another
terminal state before the time expires, it will be automatically set to
C<TIMED_OUT>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJob in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

