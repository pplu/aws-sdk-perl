# Generated from default/object.tt
package Paws::MediaConvert::Job;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::MediaConvert::Types qw/MediaConvert___mapOf__string MediaConvert_JobSettings MediaConvert_AccelerationSettings MediaConvert_Timing MediaConvert_OutputGroupDetail/;
  has AccelerationSettings => (is => 'ro', isa => MediaConvert_AccelerationSettings);
  has Arn => (is => 'ro', isa => Str);
  has BillingTagsSource => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has CurrentPhase => (is => 'ro', isa => Str);
  has ErrorCode => (is => 'ro', isa => Int);
  has ErrorMessage => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has JobPercentComplete => (is => 'ro', isa => Int);
  has JobTemplate => (is => 'ro', isa => Str);
  has OutputGroupDetails => (is => 'ro', isa => ArrayRef[MediaConvert_OutputGroupDetail]);
  has Queue => (is => 'ro', isa => Str);
  has RetryCount => (is => 'ro', isa => Int);
  has Role => (is => 'ro', isa => Str, required => 1);
  has Settings => (is => 'ro', isa => MediaConvert_JobSettings, required => 1);
  has Status => (is => 'ro', isa => Str);
  has StatusUpdateInterval => (is => 'ro', isa => Str);
  has Timing => (is => 'ro', isa => MediaConvert_Timing);
  has UserMetadata => (is => 'ro', isa => MediaConvert___mapOf__string);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobTemplate' => {
                                  'type' => 'Str'
                                },
               'Timing' => {
                             'class' => 'Paws::MediaConvert::Timing',
                             'type' => 'MediaConvert_Timing'
                           },
               'Status' => {
                             'type' => 'Str'
                           },
               'Queue' => {
                            'type' => 'Str'
                          },
               'StatusUpdateInterval' => {
                                           'type' => 'Str'
                                         },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'ErrorCode' => {
                                'type' => 'Int'
                              },
               'Arn' => {
                          'type' => 'Str'
                        },
               'AccelerationSettings' => {
                                           'class' => 'Paws::MediaConvert::AccelerationSettings',
                                           'type' => 'MediaConvert_AccelerationSettings'
                                         },
               'Id' => {
                         'type' => 'Str'
                       },
               'JobPercentComplete' => {
                                         'type' => 'Int'
                                       },
               'Role' => {
                           'type' => 'Str'
                         },
               'OutputGroupDetails' => {
                                         'class' => 'Paws::MediaConvert::OutputGroupDetail',
                                         'type' => 'ArrayRef[MediaConvert_OutputGroupDetail]'
                                       },
               'Settings' => {
                               'class' => 'Paws::MediaConvert::JobSettings',
                               'type' => 'MediaConvert_JobSettings'
                             },
               'UserMetadata' => {
                                   'class' => 'Paws::MediaConvert::__mapOf__string',
                                   'type' => 'MediaConvert___mapOf__string'
                                 },
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 },
               'RetryCount' => {
                                 'type' => 'Int'
                               },
               'BillingTagsSource' => {
                                        'type' => 'Str'
                                      },
               'CurrentPhase' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'JobTemplate' => 'jobTemplate',
                       'Timing' => 'timing',
                       'Status' => 'status',
                       'Queue' => 'queue',
                       'StatusUpdateInterval' => 'statusUpdateInterval',
                       'CreatedAt' => 'createdAt',
                       'ErrorCode' => 'errorCode',
                       'Arn' => 'arn',
                       'AccelerationSettings' => 'accelerationSettings',
                       'Id' => 'id',
                       'JobPercentComplete' => 'jobPercentComplete',
                       'Role' => 'role',
                       'OutputGroupDetails' => 'outputGroupDetails',
                       'Settings' => 'settings',
                       'UserMetadata' => 'userMetadata',
                       'ErrorMessage' => 'errorMessage',
                       'RetryCount' => 'retryCount',
                       'BillingTagsSource' => 'billingTagsSource',
                       'CurrentPhase' => 'currentPhase'
                     },
  'IsRequired' => {
                    'Role' => 1,
                    'Settings' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Job

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Job object:

  $service_obj->Method(Att1 => { AccelerationSettings => $value, ..., UserMetadata => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Job object:

  $result = $service_obj->Method(...);
  $result->Att1->AccelerationSettings

=head1 DESCRIPTION

Each job converts an input file into an output file or files. For more
information, see the User Guide at
http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

=head1 ATTRIBUTES


=head2 AccelerationSettings => MediaConvert_AccelerationSettings

  Accelerated transcoding can significantly speed up jobs with long,
visually complex content.


=head2 Arn => Str

  An identifier for this resource that is unique within all of AWS.


=head2 BillingTagsSource => Str

  Optional. Choose a tag type that AWS Billing and Cost Management will
use to sort your AWS Elemental MediaConvert costs on any billing report
that you set up. Any transcoding outputs that don't have an associated
tag will appear in your billing report unsorted. If you don't choose a
valid value for this field, your job outputs will appear on the billing
report unsorted.


=head2 CreatedAt => Str

  The time, in Unix epoch format in seconds, when the job got created.


=head2 CurrentPhase => Str

  A job's phase can be PROBING, TRANSCODING OR UPLOADING


=head2 ErrorCode => Int

  Error code for the job


=head2 ErrorMessage => Str

  Error message of Job


=head2 Id => Str

  A portion of the job's ARN, unique within your AWS Elemental
MediaConvert resources


=head2 JobPercentComplete => Int

  An estimate of how far your job has progressed. This estimate is shown
as a percentage of the total time from when your job leaves its queue
to when your output files appear in your output Amazon S3 bucket. AWS
Elemental MediaConvert provides jobPercentComplete in CloudWatch
STATUS_UPDATE events and in the response to GetJob and ListJobs
requests. The jobPercentComplete estimate is reliable for the following
input containers: Quicktime, Transport Stream, MP4, and MXF. For some
jobs, the service can't provide information about job progress. In
those cases, jobPercentComplete returns a null value.


=head2 JobTemplate => Str

  The job template that the job is created from, if it is created from a
job template.


=head2 OutputGroupDetails => ArrayRef[MediaConvert_OutputGroupDetail]

  List of output group details


=head2 Queue => Str

  Optional. When you create a job, you can specify a queue to send it to.
If you don't specify, the job will go to the default queue. For more
about queues, see the User Guide topic at
http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html


=head2 RetryCount => Int

  The number of times that the service automatically attempted to process
your job after encountering an error.


=head2 B<REQUIRED> Role => Str

  The IAM role you use for creating this job. For details about
permissions, see the User Guide topic at the User Guide at
http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html


=head2 B<REQUIRED> Settings => MediaConvert_JobSettings

  JobSettings contains all the transcode settings for a job.


=head2 Status => Str

  A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or
ERROR.


=head2 StatusUpdateInterval => Str

  Specify how often MediaConvert sends STATUS_UPDATE events to Amazon
CloudWatch Events. Set the interval, in seconds, between status
updates. MediaConvert sends an update at this interval from the time
the service begins processing your job to the time it completes the
transcode or encounters an error.


=head2 Timing => MediaConvert_Timing

  Information about when jobs are submitted, started, and finished is
specified in Unix epoch format in seconds.


=head2 UserMetadata => MediaConvert___mapOf__string

  User-defined metadata that you want to associate with an MediaConvert
job. You specify metadata in key/value pairs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

