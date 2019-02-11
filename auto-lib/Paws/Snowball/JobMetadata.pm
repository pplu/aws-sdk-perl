package Paws::Snowball::JobMetadata;
  use Moose;
  has AddressId => (is => 'ro', isa => 'Str');
  has ClusterId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has DataTransferProgress => (is => 'ro', isa => 'Paws::Snowball::DataTransfer');
  has Description => (is => 'ro', isa => 'Str');
  has ForwardingAddressId => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str');
  has JobLogInfo => (is => 'ro', isa => 'Paws::Snowball::JobLogs');
  has JobState => (is => 'ro', isa => 'Str');
  has JobType => (is => 'ro', isa => 'Str');
  has KmsKeyARN => (is => 'ro', isa => 'Str');
  has Notification => (is => 'ro', isa => 'Paws::Snowball::Notification');
  has Resources => (is => 'ro', isa => 'Paws::Snowball::JobResource');
  has RoleARN => (is => 'ro', isa => 'Str');
  has ShippingDetails => (is => 'ro', isa => 'Paws::Snowball::ShippingDetails');
  has SnowballCapacityPreference => (is => 'ro', isa => 'Str');
  has SnowballType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::JobMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::JobMetadata object:

  $service_obj->Method(Att1 => { AddressId => $value, ..., SnowballType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::JobMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressId

=head1 DESCRIPTION

Contains information about a specific job including shipping
information, job status, and other important metadata. This information
is returned as a part of the response syntax of the C<DescribeJob>
action.

=head1 ATTRIBUTES


=head2 AddressId => Str

  The ID for the address that you want the Snowball shipped to.


=head2 ClusterId => Str

  The 39-character ID for the cluster, for example
C<CID123e4567-e89b-12d3-a456-426655440000>.


=head2 CreationDate => Str

  The creation date for this job.


=head2 DataTransferProgress => L<Paws::Snowball::DataTransfer>

  A value that defines the real-time status of a Snowball's data transfer
while the device is at AWS. This data is only available while a job has
a C<JobState> value of C<InProgress>, for both import and export jobs.


=head2 Description => Str

  The description of the job, provided at job creation.


=head2 ForwardingAddressId => Str

  The ID of the address that you want a job shipped to, after it will be
shipped to its primary address. This field is not supported in most
regions.


=head2 JobId => Str

  The automatically generated ID for a job, for example
C<JID123e4567-e89b-12d3-a456-426655440000>.


=head2 JobLogInfo => L<Paws::Snowball::JobLogs>

  Links to Amazon S3 presigned URLs for the job report and logs. For
import jobs, the PDF job report becomes available at the end of the
import process. For export jobs, your job report typically becomes
available while the Snowball for your job part is being delivered to
you.


=head2 JobState => Str

  The current status of the jobs.


=head2 JobType => Str

  The type of job.


=head2 KmsKeyARN => Str

  The Amazon Resource Name (ARN) for the AWS Key Management Service (AWS
KMS) key associated with this job. This ARN was created using the
CreateKey
(http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html)
API action in AWS KMS.


=head2 Notification => L<Paws::Snowball::Notification>

  The Amazon Simple Notification Service (Amazon SNS) notification
settings associated with a specific job. The C<Notification> object is
returned as a part of the response syntax of the C<DescribeJob> action
in the C<JobMetadata> data type.


=head2 Resources => L<Paws::Snowball::JobResource>

  An array of C<S3Resource> objects. Each C<S3Resource> object represents
an Amazon S3 bucket that your transferred data will be exported from or
imported into.


=head2 RoleARN => Str

  The role ARN associated with this job. This ARN was created using the
CreateRole
(http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html)
API action in AWS Identity and Access Management (IAM).


=head2 ShippingDetails => L<Paws::Snowball::ShippingDetails>

  A job's shipping information, including inbound and outbound tracking
numbers and shipping speed options.


=head2 SnowballCapacityPreference => Str

  The Snowball capacity preference for this job, specified at job
creation. In US regions, you can choose between 50 TB and 80 TB
Snowballs. All other regions use 80 TB capacity Snowballs.


=head2 SnowballType => Str

  The type of device used with this job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

