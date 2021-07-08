
package Paws::LookoutMetrics::ListAnomalyGroupSummaries;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SensitivityThreshold => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAnomalyGroupSummaries');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListAnomalyGroupSummaries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutMetrics::ListAnomalyGroupSummariesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::ListAnomalyGroupSummaries - Arguments for method ListAnomalyGroupSummaries on L<Paws::LookoutMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAnomalyGroupSummaries on the
L<Amazon Lookout for Metrics|Paws::LookoutMetrics> service. Use the attributes of this class
as arguments to method ListAnomalyGroupSummaries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAnomalyGroupSummaries.

=head1 SYNOPSIS

    my $lookoutmetrics = Paws->service('LookoutMetrics');
    my $ListAnomalyGroupSummariesResponse =
      $lookoutmetrics->ListAnomalyGroupSummaries(
      AnomalyDetectorArn   => 'MyArn',
      SensitivityThreshold => 1,
      MaxResults           => 1,                # OPTIONAL
      NextToken            => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $AnomalyGroupStatistics =
      $ListAnomalyGroupSummariesResponse->AnomalyGroupStatistics;
    my $AnomalyGroupSummaryList =
      $ListAnomalyGroupSummariesResponse->AnomalyGroupSummaryList;
    my $NextToken = $ListAnomalyGroupSummariesResponse->NextToken;

  # Returns a L<Paws::LookoutMetrics::ListAnomalyGroupSummariesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics/ListAnomalyGroupSummaries>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyDetectorArn => Str

The Amazon Resource Name (ARN) of the anomaly detector.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

Specify the pagination token that's returned by a previous request to
retrieve the next page of results.



=head2 B<REQUIRED> SensitivityThreshold => Int

The minimum severity score for inclusion in the output.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAnomalyGroupSummaries in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

