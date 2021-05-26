
package Paws::Forecast::CreateDatasetImportJob;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str', required => 1);
  has DatasetImportJobName => (is => 'ro', isa => 'Str', required => 1);
  has DataSource => (is => 'ro', isa => 'Paws::Forecast::DataSource', required => 1);
  has TimestampFormat => (is => 'ro', isa => 'Str');

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
      TimestampFormat      => 'MyTimestampFormat',    # OPTIONAL
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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDatasetImportJob in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

