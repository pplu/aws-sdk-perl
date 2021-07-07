
package Paws::Snowball::CreateJob;
  use Moose;
  has AddressId => (is => 'ro', isa => 'Str');
  has ClusterId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DeviceConfiguration => (is => 'ro', isa => 'Paws::Snowball::DeviceConfiguration');
  has ForwardingAddressId => (is => 'ro', isa => 'Str');
  has JobType => (is => 'ro', isa => 'Str');
  has KmsKeyARN => (is => 'ro', isa => 'Str');
  has LongTermPricingId => (is => 'ro', isa => 'Str');
  has Notification => (is => 'ro', isa => 'Paws::Snowball::Notification');
  has Resources => (is => 'ro', isa => 'Paws::Snowball::JobResource');
  has RoleARN => (is => 'ro', isa => 'Str');
  has ShippingOption => (is => 'ro', isa => 'Str');
  has SnowballCapacityPreference => (is => 'ro', isa => 'Str');
  has SnowballType => (is => 'ro', isa => 'Str');
  has TaxDocuments => (is => 'ro', isa => 'Paws::Snowball::TaxDocuments');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::CreateJobResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::CreateJob - Arguments for method CreateJob on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJob on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method CreateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJob.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
 # To create a job
 # Creates a job to import or export data between Amazon S3 and your on-premises
 # data center. Your AWS account must have the right trust policies and
 # permissions in place to create a job for Snowball. If you're creating a job
 # for a node in a cluster, you only need to provide the clusterId value; the
 # other job attributes are inherited from the cluster.
    my $CreateJobResult = $snowball->CreateJob(
      'AddressId'   => 'ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b',
      'Description' => 'My Job',
      'JobType'     => 'IMPORT',
      'KmsKeyARN'   =>
'arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456',
      'Notification' => {
        'JobStatesToNotify' => [

        ],
        'NotifyAll' => 0
      },
      'Resources' => {
        'S3Resources' => [

          {
            'BucketArn' => 'arn:aws:s3:::MyBucket',
            'KeyRange'  => {

            }
          }
        ]
      },
      'RoleARN' => 'arn:aws:iam::123456789012:role/snowball-import-S3-role',
      'ShippingOption'             => 'SECOND_DAY',
      'SnowballCapacityPreference' => 'T80',
      'SnowballType'               => 'STANDARD'
    );

    # Results:
    my $JobId = $CreateJobResult->JobId;

    # Returns a L<Paws::Snowball::CreateJobResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/CreateJob>

=head1 ATTRIBUTES


=head2 AddressId => Str

The ID for the address that you want the Snow device shipped to.



=head2 ClusterId => Str

The ID of a cluster. If you're creating a job for a node in a cluster,
you need to provide only this C<clusterId> value. The other job
attributes are inherited from the cluster.



=head2 Description => Str

Defines an optional description of this specific job, for example
C<Important Photos 2016-08-11>.



=head2 DeviceConfiguration => L<Paws::Snowball::DeviceConfiguration>

Defines the device configuration for an AWS Snowcone job.

For more information, see
"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html"
(Snow Family Devices and Capacity) in the I<Snowcone User Guide> or
"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html"
(Snow Family Devices and Capacity) in the I<Snowcone User Guide>.



=head2 ForwardingAddressId => Str

The forwarding address ID for a job. This field is not supported in
most regions.



=head2 JobType => Str

Defines the type of job that you're creating.

Valid values are: C<"IMPORT">, C<"EXPORT">, C<"LOCAL_USE">

=head2 KmsKeyARN => Str

The C<KmsKeyARN> that you want to associate with this job.
C<KmsKeyARN>s are created using the CreateKey
(https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html)
AWS Key Management Service (KMS) API action.



=head2 LongTermPricingId => Str

The ID of the long term pricing type for the device.



=head2 Notification => L<Paws::Snowball::Notification>

Defines the Amazon Simple Notification Service (Amazon SNS)
notification settings for this job.



=head2 Resources => L<Paws::Snowball::JobResource>

Defines the Amazon S3 buckets associated with this job.

With C<IMPORT> jobs, you specify the bucket or buckets that your
transferred data will be imported into.

With C<EXPORT> jobs, you specify the bucket or buckets that your
transferred data will be exported from. Optionally, you can also
specify a C<KeyRange> value. If you choose to export a range, you
define the length of the range by providing either an inclusive
C<BeginMarker> value, an inclusive C<EndMarker> value, or both. Ranges
are UTF-8 binary sorted.



=head2 RoleARN => Str

The C<RoleARN> that you want to associate with this job. C<RoleArn>s
are created using the CreateRole
(https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html)
AWS Identity and Access Management (IAM) API action.



=head2 ShippingOption => Str

The shipping speed for this job. This speed doesn't dictate how soon
you'll get the Snow device, rather it represents how quickly the Snow
device moves to its destination while in transit. Regional shipping
speeds are as follows:

=over

=item *

In Australia, you have access to express shipping. Typically, Snow
devices shipped express are delivered in about a day.

=item *

In the European Union (EU), you have access to express shipping.
Typically, Snow devices shipped express are delivered in about a day.
In addition, most countries in the EU have access to standard shipping,
which typically takes less than a week, one way.

=item *

In India, Snow devices are delivered in one to seven days.

=item *

In the US, you have access to one-day shipping and two-day shipping.

=back


Valid values are: C<"SECOND_DAY">, C<"NEXT_DAY">, C<"EXPRESS">, C<"STANDARD">

=head2 SnowballCapacityPreference => Str

If your job is being created in one of the US regions, you have the
option of specifying what size Snow device you'd like for this job. In
all other regions, Snowballs come with 80 TB in storage capacity.

For more information, see
"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html"
(Snow Family Devices and Capacity) in the I<Snowcone User Guide> or
"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html"
(Snow Family Devices and Capacity) in the I<Snowcone User Guide>.

Valid values are: C<"T50">, C<"T80">, C<"T100">, C<"T42">, C<"T98">, C<"T8">, C<"T14">, C<"NoPreference">

=head2 SnowballType => Str

The type of AWS Snow Family device to use for this job.

For cluster jobs, AWS Snow Family currently supports only the C<EDGE>
device type.

The type of AWS Snow device to use for this job. Currently, the only
supported device type for cluster jobs is C<EDGE>.

For more information, see Snowball Edge Device Options
(https://docs.aws.amazon.com/snowball/latest/developer-guide/device-differences.html)
in the Snowball Edge Developer Guide.

For more information, see
"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html"
(Snow Family Devices and Capacity) in the I<Snowcone User Guide> or
"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html"
(Snow Family Devices and Capacity) in the I<Snowcone User Guide>.

Valid values are: C<"STANDARD">, C<"EDGE">, C<"EDGE_C">, C<"EDGE_CG">, C<"EDGE_S">, C<"SNC1_HDD">, C<"SNC1_SSD">

=head2 TaxDocuments => L<Paws::Snowball::TaxDocuments>

The tax documents required in your AWS Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJob in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

