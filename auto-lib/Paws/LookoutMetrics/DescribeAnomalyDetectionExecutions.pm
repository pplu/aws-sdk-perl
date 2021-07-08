
package Paws::LookoutMetrics::DescribeAnomalyDetectionExecutions;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAnomalyDetectionExecutions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DescribeAnomalyDetectionExecutions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutMetrics::DescribeAnomalyDetectionExecutionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::DescribeAnomalyDetectionExecutions - Arguments for method DescribeAnomalyDetectionExecutions on L<Paws::LookoutMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAnomalyDetectionExecutions on the
L<Amazon Lookout for Metrics|Paws::LookoutMetrics> service. Use the attributes of this class
as arguments to method DescribeAnomalyDetectionExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAnomalyDetectionExecutions.

=head1 SYNOPSIS

    my $lookoutmetrics = Paws->service('LookoutMetrics');
    my $DescribeAnomalyDetectionExecutionsResponse =
      $lookoutmetrics->DescribeAnomalyDetectionExecutions(
      AnomalyDetectorArn => 'MyArn',
      MaxResults         => 1,                      # OPTIONAL
      NextToken          => 'MyNextToken',          # OPTIONAL
      Timestamp          => 'MyTimestampString',    # OPTIONAL
      );

    # Results:
    my $ExecutionList =
      $DescribeAnomalyDetectionExecutionsResponse->ExecutionList;
    my $NextToken = $DescribeAnomalyDetectionExecutionsResponse->NextToken;

# Returns a L<Paws::LookoutMetrics::DescribeAnomalyDetectionExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics/DescribeAnomalyDetectionExecutions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyDetectorArn => Str

The Amazon Resource Name (ARN) of the anomaly detector.



=head2 MaxResults => Int

The number of items to return in the response.



=head2 NextToken => Str

Specify the pagination token that's returned by a previous request to
retrieve the next page of results.



=head2 Timestamp => Str

The timestamp of the anomaly detection job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAnomalyDetectionExecutions in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

