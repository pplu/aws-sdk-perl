
package Paws::CloudWatch::PutMetricStream;
  use Moose;
  has ExcludeFilters => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricStreamFilter]');
  has FirehoseArn => (is => 'ro', isa => 'Str', required => 1);
  has IncludeFilters => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricStreamFilter]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OutputFormat => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetricStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::PutMetricStreamOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutMetricStreamResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::PutMetricStream - Arguments for method PutMetricStream on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMetricStream on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method PutMetricStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMetricStream.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $PutMetricStreamOutput = $monitoring->PutMetricStream(
      FirehoseArn    => 'MyAmazonResourceName',
      Name           => 'MyMetricStreamName',
      OutputFormat   => 'json',
      RoleArn        => 'MyAmazonResourceName',
      ExcludeFilters => [
        {
          Namespace => 'MyNamespace',    # min: 1, max: 255; OPTIONAL
        },
        ...
      ],                                 # OPTIONAL
      IncludeFilters => [
        {
          Namespace => 'MyNamespace',    # min: 1, max: 255; OPTIONAL
        },
        ...
      ],                                 # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',           # min: 1, max: 128
          Value => 'MyTagValue',         # max: 256

        },
        ...
      ],                                 # OPTIONAL
    );

    # Results:
    my $Arn = $PutMetricStreamOutput->Arn;

    # Returns a L<Paws::CloudWatch::PutMetricStreamOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/PutMetricStream>

=head1 ATTRIBUTES


=head2 ExcludeFilters => ArrayRef[L<Paws::CloudWatch::MetricStreamFilter>]

If you specify this parameter, the stream sends metrics from all metric
namespaces except for the namespaces that you specify here.

You cannot include C<ExcludeFilters> and C<IncludeFilters> in the same
operation.



=head2 B<REQUIRED> FirehoseArn => Str

The ARN of the Amazon Kinesis Firehose delivery stream to use for this
metric stream. This Amazon Kinesis Firehose delivery stream must
already exist and must be in the same account as the metric stream.



=head2 IncludeFilters => ArrayRef[L<Paws::CloudWatch::MetricStreamFilter>]

If you specify this parameter, the stream sends only the metrics from
the metric namespaces that you specify here.

You cannot include C<IncludeFilters> and C<ExcludeFilters> in the same
operation.



=head2 B<REQUIRED> Name => Str

If you are creating a new metric stream, this is the name for the new
stream. The name must be different than the names of other metric
streams in this account and Region.

If you are updating a metric stream, specify the name of that stream
here.

Valid characters are A-Z, a-z, 0-9, "-" and "_".



=head2 B<REQUIRED> OutputFormat => Str

The output format for the stream. Valid values are C<json> and
C<opentelemetry0.7>. For more information about metric stream output
formats, see Metric streams output formats
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-formats.html).

Valid values are: C<"json">, C<"opentelemetry0.7">

=head2 B<REQUIRED> RoleArn => Str

The ARN of an IAM role that this metric stream will use to access
Amazon Kinesis Firehose resources. This IAM role must already exist and
must be in the same account as the metric stream. This IAM role must
include the following permissions:

=over

=item *

firehose:PutRecord

=item *

firehose:PutRecordBatch

=back




=head2 Tags => ArrayRef[L<Paws::CloudWatch::Tag>]

A list of key-value pairs to associate with the metric stream. You can
associate as many as 50 tags with a metric stream.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMetricStream in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

