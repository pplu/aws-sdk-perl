
package Paws::LookoutMetrics::CreateMetricSet;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str', required => 1);
  has DimensionList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MetricList => (is => 'ro', isa => 'ArrayRef[Paws::LookoutMetrics::Metric]', required => 1);
  has MetricSetDescription => (is => 'ro', isa => 'Str');
  has MetricSetFrequency => (is => 'ro', isa => 'Str');
  has MetricSetName => (is => 'ro', isa => 'Str', required => 1);
  has MetricSource => (is => 'ro', isa => 'Paws::LookoutMetrics::MetricSource', required => 1);
  has Offset => (is => 'ro', isa => 'Int');
  has Tags => (is => 'ro', isa => 'Paws::LookoutMetrics::TagMap');
  has TimestampColumn => (is => 'ro', isa => 'Paws::LookoutMetrics::TimestampColumn');
  has Timezone => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMetricSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateMetricSet');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutMetrics::CreateMetricSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::CreateMetricSet - Arguments for method CreateMetricSet on L<Paws::LookoutMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMetricSet on the
L<Amazon Lookout for Metrics|Paws::LookoutMetrics> service. Use the attributes of this class
as arguments to method CreateMetricSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMetricSet.

=head1 SYNOPSIS

    my $lookoutmetrics = Paws->service('LookoutMetrics');
    my $CreateMetricSetResponse = $lookoutmetrics->CreateMetricSet(
      AnomalyDetectorArn => 'MyArn',
      MetricList         => [
        {
          AggregationFunction => 'AVG',             # values: AVG, SUM
          MetricName          => 'MyColumnName',    # min: 1, max: 63
          Namespace           => 'MyNamespace',     # min: 1, max: 255; OPTIONAL
        },
        ...
      ],
      MetricSetName => 'MyMetricSetName',
      MetricSource  => {
        AppFlowConfig => {
          FlowName => 'MyFlowName',                 # max: 256
          RoleArn  => 'MyArn',                      # max: 256

        },    # OPTIONAL
        CloudWatchConfig => {
          RoleArn => 'MyArn',    # max: 256

        },    # OPTIONAL
        RDSSourceConfig => {
          DBInstanceIdentifier => 'MyRDSDatabaseIdentifier',  # min: 1, max: 63
          DatabaseHost         => 'MyDatabaseHost',           # min: 1, max: 253
          DatabaseName         => 'MyRDSDatabaseName',        # min: 1, max: 64
          DatabasePort     => 1,                            # min: 1, max: 65535
          RoleArn          => 'MyArn',                      # max: 256
          SecretManagerArn => 'MyPoirotSecretManagerArn',   # max: 256
          TableName        => 'MyTableName',                # min: 1, max: 100
          VpcConfiguration => {
            SecurityGroupIdList => [
              'MySecurityGroupId', ...                      # min: 1, max: 255
            ],
            SubnetIdList => [
              'MySubnetId', ...                             # max: 255
            ],

          },

        },    # OPTIONAL
        RedshiftSourceConfig => {
          ClusterIdentifier => 'MyRedshiftClusterIdentifier', # min: 1, max: 63
          DatabaseHost      => 'MyDatabaseHost',              # min: 1, max: 253
          DatabaseName      => 'MyRedshiftDatabaseName',      # min: 1, max: 100
          DatabasePort      => 1,                           # min: 1, max: 65535
          RoleArn           => 'MyArn',                     # max: 256
          SecretManagerArn  => 'MyPoirotSecretManagerArn',  # max: 256
          TableName         => 'MyTableName',               # min: 1, max: 100
          VpcConfiguration  => {
            SecurityGroupIdList => [
              'MySecurityGroupId', ...                      # min: 1, max: 255
            ],
            SubnetIdList => [
              'MySubnetId', ...                             # max: 255
            ],

          },

        },    # OPTIONAL
        S3SourceConfig => {
          RoleArn              => 'MyArn',    # max: 256
          FileFormatDescriptor => {
            CsvFormatDescriptor => {
              Charset         => 'MyCharset',     # max: 63; OPTIONAL
              ContainsHeader  => 1,               # OPTIONAL
              Delimiter       => 'MyDelimiter',   # max: 1; OPTIONAL
              FileCompression => 'NONE',          # values: NONE, GZIP; OPTIONAL
              HeaderList      => [
                'MyColumnName', ...               # min: 1, max: 63
              ],    # OPTIONAL
              QuoteSymbol => 'MyQuoteSymbol',    # max: 1; OPTIONAL
            },    # OPTIONAL
            JsonFormatDescriptor => {
              Charset         => 'MyCharset',    # max: 63; OPTIONAL
              FileCompression => 'NONE',         # values: NONE, GZIP; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          HistoricalDataPathList => [
            'MyHistoricalDataPath', ...    # max: 1024
          ],    # min: 1, max: 1; OPTIONAL
          TemplatedPathList => [
            'MyTemplatedPath', ...    # max: 1024
          ],    # min: 1, max: 1; OPTIONAL
        },    # OPTIONAL
      },
      DimensionList => [
        'MyColumnName', ...    # min: 1, max: 63
      ],    # OPTIONAL
      MetricSetDescription => 'MyMetricSetDescription',    # OPTIONAL
      MetricSetFrequency   => 'P1D',                       # OPTIONAL
      Offset               => 1,                           # OPTIONAL
      Tags                 => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      TimestampColumn => {
        ColumnFormat => 'MyDateTimeFormat',    # max: 63; OPTIONAL
        ColumnName   => 'MyColumnName',        # min: 1, max: 63
      },    # OPTIONAL
      Timezone => 'MyTimezone',    # OPTIONAL
    );

    # Results:
    my $MetricSetArn = $CreateMetricSetResponse->MetricSetArn;

    # Returns a L<Paws::LookoutMetrics::CreateMetricSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics/CreateMetricSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyDetectorArn => Str

The ARN of the anomaly detector that will use the dataset.



=head2 DimensionList => ArrayRef[Str|Undef]

A list of the fields you want to treat as dimensions.



=head2 B<REQUIRED> MetricList => ArrayRef[L<Paws::LookoutMetrics::Metric>]

A list of metrics that the dataset will contain.



=head2 MetricSetDescription => Str

A description of the dataset you are creating.



=head2 MetricSetFrequency => Str

The frequency with which the source data will be analyzed for
anomalies.

Valid values are: C<"P1D">, C<"PT1H">, C<"PT10M">, C<"PT5M">

=head2 B<REQUIRED> MetricSetName => Str

The name of the dataset.



=head2 B<REQUIRED> MetricSource => L<Paws::LookoutMetrics::MetricSource>

Contains information about how the source data should be interpreted.



=head2 Offset => Int

After an interval ends, the amount of seconds that the detector waits
before importing data. Offset is only supported for S3 and Redshift
datasources.



=head2 Tags => L<Paws::LookoutMetrics::TagMap>

A list of tags
(https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html)
to apply to the dataset.



=head2 TimestampColumn => L<Paws::LookoutMetrics::TimestampColumn>

Contains information about the column used for tracking time in your
source data.



=head2 Timezone => Str

The time zone in which your source data was recorded.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMetricSet in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

