
package Paws::KinesisAnalyticsV2::AddApplicationReferenceDataSource;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CurrentApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);
  has ReferenceDataSource => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ReferenceDataSource', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddApplicationReferenceDataSource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::AddApplicationReferenceDataSourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::AddApplicationReferenceDataSource - Arguments for method AddApplicationReferenceDataSource on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddApplicationReferenceDataSource on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method AddApplicationReferenceDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddApplicationReferenceDataSource.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $AddApplicationReferenceDataSourceResponse =
      $kinesisanalytics->AddApplicationReferenceDataSource(
      ApplicationName             => 'MyApplicationName',
      CurrentApplicationVersionId => 1,
      ReferenceDataSource         => {
        ReferenceSchema => {
          RecordColumns => [
            {
              Name    => 'MyRecordColumnName',
              SqlType => 'MyRecordColumnSqlType',    # min: 1
              Mapping => 'MyRecordColumnMapping',    # OPTIONAL
            },
            ...
          ],                                         # min: 1, max: 1000
          RecordFormat => {
            RecordFormatType  => 'JSON',             # values: JSON, CSV
            MappingParameters => {
              CSVMappingParameters => {
                RecordColumnDelimiter => 'MyRecordColumnDelimiter',    # min: 1
                RecordRowDelimiter    => 'MyRecordRowDelimiter',       # min: 1

              },    # OPTIONAL
              JSONMappingParameters => {
                RecordRowPath => 'MyRecordRowPath',    # min: 1

              },    # OPTIONAL
            },    # OPTIONAL
          },
          RecordEncoding => 'MyRecordEncoding',    # OPTIONAL
        },
        TableName             => 'MyInAppTableName',    # min: 1, max: 32
        S3ReferenceDataSource => {
          BucketARN => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
          FileKey   => 'MyFileKey',      # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },

      );

    # Results:
    my $ApplicationARN =
      $AddApplicationReferenceDataSourceResponse->ApplicationARN;
    my $ApplicationVersionId =
      $AddApplicationReferenceDataSourceResponse->ApplicationVersionId;
    my $ReferenceDataSourceDescriptions =
      $AddApplicationReferenceDataSourceResponse
      ->ReferenceDataSourceDescriptions;

# Returns a L<Paws::KinesisAnalyticsV2::AddApplicationReferenceDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/AddApplicationReferenceDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an existing application.



=head2 B<REQUIRED> CurrentApplicationVersionId => Int

The version of the application for which you are adding the reference
data source. You can use the DescribeApplication operation to get the
current application version. If the version specified is not the
current version, the C<ConcurrentModificationException> is returned.



=head2 B<REQUIRED> ReferenceDataSource => L<Paws::KinesisAnalyticsV2::ReferenceDataSource>

The reference data source can be an object in your Amazon S3 bucket.
Kinesis Data Analytics reads the object and copies the data into the
in-application table that is created. You provide an S3 bucket, object
key name, and the resulting in-application table that is created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddApplicationReferenceDataSource in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

