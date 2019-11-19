# Generated from json/callargs_class.tt

package Paws::Forecast::CreateDatasetImportJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Forecast::Types qw/Forecast_DataSource/;
  has DatasetArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DatasetImportJobName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DataSource => (is => 'ro', isa => Forecast_DataSource, required => 1, predicate => 1);
  has TimestampFormat => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDatasetImportJob');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Forecast::CreateDatasetImportJobResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DataSource' => 1,
                    'DatasetArn' => 1,
                    'DatasetImportJobName' => 1
                  },
  'types' => {
               'TimestampFormat' => {
                                      'type' => 'Str'
                                    },
               'DatasetArn' => {
                                 'type' => 'Str'
                               },
               'DataSource' => {
                                 'type' => 'Forecast_DataSource',
                                 'class' => 'Paws::Forecast::DataSource'
                               },
               'DatasetImportJobName' => {
                                           'type' => 'Str'
                                         }
             }
}
;
    return $Params_map;
  }

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

The name for the dataset import job. It is recommended to include the
current timestamp in the name to guard against getting a
C<ResourceAlreadyExistsException> exception, for example,
C<20190721DatasetImport>.



=head2 B<REQUIRED> DataSource => Forecast_DataSource

The location of the training data to import and an AWS Identity and
Access Management (IAM) role that Amazon Forecast can assume to access
the data.



=head2 TimestampFormat => Str

The format of timestamps in the dataset. Two formats are supported,
dependent on the C<DataFrequency> specified when the dataset was
created.

=over

=item *

"yyyy-MM-dd"

For data frequencies: Y, M, W, and D

=item *

"yyyy-MM-dd HH:mm:ss"

For data frequencies: H, 30min, 15min, and 1min; and optionally, for:
Y, M, W, and D

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDatasetImportJob in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

