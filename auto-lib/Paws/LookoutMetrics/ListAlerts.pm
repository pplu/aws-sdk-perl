
package Paws::LookoutMetrics::ListAlerts;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAlerts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListAlerts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutMetrics::ListAlertsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::ListAlerts - Arguments for method ListAlerts on L<Paws::LookoutMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAlerts on the
L<Amazon Lookout for Metrics|Paws::LookoutMetrics> service. Use the attributes of this class
as arguments to method ListAlerts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAlerts.

=head1 SYNOPSIS

    my $lookoutmetrics = Paws->service('LookoutMetrics');
    my $ListAlertsResponse = $lookoutmetrics->ListAlerts(
      AnomalyDetectorArn => 'MyArn',          # OPTIONAL
      MaxResults         => 1,                # OPTIONAL
      NextToken          => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AlertSummaryList = $ListAlertsResponse->AlertSummaryList;
    my $NextToken        = $ListAlertsResponse->NextToken;

    # Returns a L<Paws::LookoutMetrics::ListAlertsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics/ListAlerts>

=head1 ATTRIBUTES


=head2 AnomalyDetectorArn => Str

The ARN of the alert's detector.



=head2 MaxResults => Int

The maximum number of results that will be displayed by the request.



=head2 NextToken => Str

If the result of the previous request is truncated, the response
includes a C<NextToken>. To retrieve the next set of results, use the
token in the next request. Tokens expire after 24 hours.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAlerts in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

