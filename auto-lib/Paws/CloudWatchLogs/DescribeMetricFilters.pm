
package Paws::CloudWatchLogs::DescribeMetricFilters;
  use Moose;
  has FilterNamePrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterNamePrefix' );
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' );
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName' );
  has MetricNamespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricNamespace' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMetricFilters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DescribeMetricFiltersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeMetricFilters - Arguments for method DescribeMetricFilters on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMetricFilters on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DescribeMetricFilters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMetricFilters.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $DescribeMetricFiltersResponse = $logs->DescribeMetricFilters(
      FilterNamePrefix => 'MyFilterName',         # OPTIONAL
      Limit            => 1,                      # OPTIONAL
      LogGroupName     => 'MyLogGroupName',       # OPTIONAL
      MetricName       => 'MyMetricName',         # OPTIONAL
      MetricNamespace  => 'MyMetricNamespace',    # OPTIONAL
      NextToken        => 'MyNextToken',          # OPTIONAL
    );

    # Results:
    my $MetricFilters = $DescribeMetricFiltersResponse->MetricFilters;
    my $NextToken     = $DescribeMetricFiltersResponse->NextToken;

    # Returns a L<Paws::CloudWatchLogs::DescribeMetricFiltersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DescribeMetricFilters>

=head1 ATTRIBUTES


=head2 FilterNamePrefix => Str

The prefix to match.



=head2 Limit => Int

The maximum number of items returned. If you don't specify a value, the
default is up to 50 items.



=head2 LogGroupName => Str

The name of the log group.



=head2 MetricName => Str

Filters results to include only those with the specified metric name.
If you include this parameter in your request, you must also include
the C<metricNamespace> parameter.



=head2 MetricNamespace => Str

Filters results to include only those in the specified namespace. If
you include this parameter in your request, you must also include the
C<metricName> parameter.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMetricFilters in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

