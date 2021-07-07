
package Paws::Forecast::CreateDatasetImportJob;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str', required => 1);
  has DatasetImportJobName => (is => 'ro', isa => 'Str', required => 1);
  has DataSource => (is => 'ro', isa => 'Paws::Forecast::DataSource', required => 1);
  has GeolocationFormat => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::Tag]');
  has TimestampFormat => (is => 'ro', isa => 'Str');
  has TimeZone => (is => 'ro', isa => 'Str');
  has UseGeolocationForTimeZone => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDatasetImportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::CreateDatasetImportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateDatasetImportJob - Arguments for method CreateDatasetImportJob on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDatasetImportJob on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method CreateDatasetImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDatasetImportJob.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $CreateDatasetImportJobResponse = $forecast->CreateDatasetImportJob(
      DataSource => {
        S3Config => {
          Path      => 'MyS3Path',
          RoleArn   => 'MyArn',          # max: 256
          KMSKeyArn => 'MyKMSKeyArn',    # max: 256; OPTIONAL
        },

      },
      DatasetArn           => 'MyArn',
      DatasetImportJobName => 'MyName',
      GeolocationFormat    => 'MyGeolocationFormat',    # OPTIONAL
      Tags                 => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TimeZone                  => 'MyTimeZone',           # OPTIONAL
      TimestampFormat           => 'MyTimestampFormat',    # OPTIONAL
      UseGeolocationForTimeZone => 1,                      # OPTIONAL
    );

    # Results:
    my $DatasetImportJobArn =
      $CreateDatasetImportJobResponse->DatasetImportJobArn;

    # Returns a L<Paws::Forecast::CreateDatasetImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/CreateDatasetImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetArn => Str

The Amazon Resource Name (ARN) of the Amazon Forecast dataset that you
want to import data to.



=head2 B<REQUIRED> DatasetImportJobName => Str

The name for the dataset import job. We recommend including the current
timestamp in the name, for example, C<20190721DatasetImport>. This can
help you avoid getting a C<ResourceAlreadyExistsException> exception.



=head2 B<REQUIRED> DataSource => L<Paws::Forecast::DataSource>

The location of the training data to import and an AWS Identity and
Access Management (IAM) role that Amazon Forecast can assume to access
the data. The training data must be stored in an Amazon S3 bucket.

If encryption is used, C<DataSource> must include an AWS Key Management
Service (KMS) key and the IAM role must allow Amazon Forecast
permission to access the key. The KMS key and IAM role must match those
specified in the C<EncryptionConfig> parameter of the CreateDataset
operation.



=head2 GeolocationFormat => Str

The format of the geolocation attribute. The geolocation attribute can
be formatted in one of two ways:

=over

=item *

C<LAT_LONG> - the latitude and longitude in decimal format (Example:
47.61_-122.33).

=item *

C<CC_POSTALCODE> (US Only) - the country code (US), followed by the
5-digit ZIP code (Example: US_98121).

=back




=head2 Tags => ArrayRef[L<Paws::Forecast::Tag>]

The optional metadata that you apply to the dataset import job to help
you categorize and organize them. Each tag consists of a key and an
optional value, both of which you define.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50.

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8.

=item *

Maximum value length - 256 Unicode characters in UTF-8.

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for keys as it is reserved for AWS use. You cannot
edit or delete tag keys with this prefix. Values can have this prefix.
If a tag value has C<aws> as its prefix but the key does not, then
Forecast considers it to be a user tag and will count against the limit
of 50 tags. Tags with only the key prefix of C<aws> do not count
against your tags per resource limit.

=back




=head2 TimestampFormat => Str

The format of timestamps in the dataset. The format that you specify
depends on the C<DataFrequency> specified when the dataset was created.
The following formats are supported

=over

=item *

"yyyy-MM-dd"

For the following data frequencies: Y, M, W, and D

=item *

"yyyy-MM-dd HH:mm:ss"

For the following data frequencies: H, 30min, 15min, and 1min; and
optionally, for: Y, M, W, and D

=back

If the format isn't specified, Amazon Forecast expects the format to be
"yyyy-MM-dd HH:mm:ss".



=head2 TimeZone => Str

A single time zone for every item in your dataset. This option is ideal
for datasets with all timestamps within a single time zone, or if all
timestamps are normalized to a single time zone.

Refer to the Joda-Time API
(http://joda-time.sourceforge.net/timezones.html) for a complete list
of valid time zone names.



=head2 UseGeolocationForTimeZone => Bool

Automatically derive time zone information from the geolocation
attribute. This option is ideal for datasets that contain timestamps in
multiple time zones and those timestamps are expressed in local time.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDatasetImportJob in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

