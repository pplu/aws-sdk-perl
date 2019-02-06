package Paws::MediaConvert::Job;
  use Moose;
  has AccelerationSettings => (is => 'ro', isa => 'Paws::MediaConvert::AccelerationSettings', request_name => 'accelerationSettings', traits => ['NameInRequest']);
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has BillingTagsSource => (is => 'ro', isa => 'Str', request_name => 'billingTagsSource', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has ErrorCode => (is => 'ro', isa => 'Int', request_name => 'errorCode', traits => ['NameInRequest']);
  has ErrorMessage => (is => 'ro', isa => 'Str', request_name => 'errorMessage', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has JobTemplate => (is => 'ro', isa => 'Str', request_name => 'jobTemplate', traits => ['NameInRequest']);
  has OutputGroupDetails => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::OutputGroupDetail]', request_name => 'outputGroupDetails', traits => ['NameInRequest']);
  has Queue => (is => 'ro', isa => 'Str', request_name => 'queue', traits => ['NameInRequest']);
  has Role => (is => 'ro', isa => 'Str', request_name => 'role', traits => ['NameInRequest'], required => 1);
  has Settings => (is => 'ro', isa => 'Paws::MediaConvert::JobSettings', request_name => 'settings', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Timing => (is => 'ro', isa => 'Paws::MediaConvert::Timing', request_name => 'timing', traits => ['NameInRequest']);
  has UserMetadata => (is => 'ro', isa => 'Paws::MediaConvert::__mapOf__string', request_name => 'userMetadata', traits => ['NameInRequest']);
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


=head2 AccelerationSettings => L<Paws::MediaConvert::AccelerationSettings>

  Acceleration settings for job execution.


=head2 Arn => Str

  An identifier for this resource that is unique within all of AWS.


=head2 BillingTagsSource => Str

  


=head2 CreatedAt => Str

  The time, in Unix epoch format in seconds, when the job got created.


=head2 ErrorCode => Int

  Error code for the job


=head2 ErrorMessage => Str

  Error message of Job


=head2 Id => Str

  A portion of the job's ARN, unique within your AWS Elemental
MediaConvert resources


=head2 JobTemplate => Str

  The job template that the job is created from, if it is created from a
job template.


=head2 OutputGroupDetails => ArrayRef[L<Paws::MediaConvert::OutputGroupDetail>]

  List of output group details


=head2 Queue => Str

  Optional. When you create a job, you can specify a queue to send it to.
If you don't specify, the job will go to the default queue. For more
about queues, see the User Guide topic at
http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html


=head2 B<REQUIRED> Role => Str

  The IAM role you use for creating this job. For details about
permissions, see the User Guide topic at the User Guide at
http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html


=head2 B<REQUIRED> Settings => L<Paws::MediaConvert::JobSettings>

  


=head2 Status => Str

  


=head2 Timing => L<Paws::MediaConvert::Timing>

  


=head2 UserMetadata => L<Paws::MediaConvert::__mapOf__string>

  User-defined metadata that you want to associate with an MediaConvert
job. You specify metadata in key/value pairs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

