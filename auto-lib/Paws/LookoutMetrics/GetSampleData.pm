
package Paws::LookoutMetrics::GetSampleData;
  use Moose;
  has S3SourceConfig => (is => 'ro', isa => 'Paws::LookoutMetrics::SampleDataS3SourceConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSampleData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetSampleData');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutMetrics::GetSampleDataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::GetSampleData - Arguments for method GetSampleData on L<Paws::LookoutMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSampleData on the
L<Amazon Lookout for Metrics|Paws::LookoutMetrics> service. Use the attributes of this class
as arguments to method GetSampleData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSampleData.

=head1 SYNOPSIS

    my $lookoutmetrics = Paws->service('LookoutMetrics');
    my $GetSampleDataResponse = $lookoutmetrics->GetSampleData(
      S3SourceConfig => {
        FileFormatDescriptor => {
          CsvFormatDescriptor => {
            Charset         => 'MyCharset',      # max: 63; OPTIONAL
            ContainsHeader  => 1,                # OPTIONAL
            Delimiter       => 'MyDelimiter',    # max: 1; OPTIONAL
            FileCompression => 'NONE',           # values: NONE, GZIP; OPTIONAL
            HeaderList      => [
              'MyColumnName', ...                # min: 1, max: 63
            ],                                   # OPTIONAL
            QuoteSymbol => 'MyQuoteSymbol',      # max: 1; OPTIONAL
          },    # OPTIONAL
          JsonFormatDescriptor => {
            Charset         => 'MyCharset',    # max: 63; OPTIONAL
            FileCompression => 'NONE',         # values: NONE, GZIP; OPTIONAL
          },    # OPTIONAL
        },
        RoleArn                => 'MyArn',    # max: 256
        HistoricalDataPathList => [
          'MyHistoricalDataPath', ...         # max: 1024
        ],                                    # min: 1, max: 1; OPTIONAL
        TemplatedPathList => [
          'MyTemplatedPath', ...              # max: 1024
        ],                                    # min: 1, max: 1; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $HeaderValues = $GetSampleDataResponse->HeaderValues;
    my $SampleRows   = $GetSampleDataResponse->SampleRows;

    # Returns a L<Paws::LookoutMetrics::GetSampleDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics/GetSampleData>

=head1 ATTRIBUTES


=head2 S3SourceConfig => L<Paws::LookoutMetrics::SampleDataS3SourceConfig>

A datasource bucket in Amazon S3.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSampleData in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

