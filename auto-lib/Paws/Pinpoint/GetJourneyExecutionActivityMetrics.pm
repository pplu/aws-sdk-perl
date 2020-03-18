
package Paws::Pinpoint::GetJourneyExecutionActivityMetrics;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has JourneyActivityId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'journey-activity-id', required => 1);
  has JourneyId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'journey-id', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has PageSize => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'page-size');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJourneyExecutionActivityMetrics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/journeys/{journey-id}/activities/{journey-activity-id}/execution-metrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::GetJourneyExecutionActivityMetricsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetJourneyExecutionActivityMetrics - Arguments for method GetJourneyExecutionActivityMetrics on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJourneyExecutionActivityMetrics on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method GetJourneyExecutionActivityMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJourneyExecutionActivityMetrics.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $GetJourneyExecutionActivityMetricsResponse =
      $pinpoint->GetJourneyExecutionActivityMetrics(
      ApplicationId     => 'My__string',
      JourneyActivityId => 'My__string',
      JourneyId         => 'My__string',
      NextToken         => 'My__string',    # OPTIONAL
      PageSize          => 'My__string',    # OPTIONAL
      );

    # Results:
    my $JourneyExecutionActivityMetricsResponse =
      $GetJourneyExecutionActivityMetricsResponse
      ->JourneyExecutionActivityMetricsResponse;

# Returns a L<Paws::Pinpoint::GetJourneyExecutionActivityMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/GetJourneyExecutionActivityMetrics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 B<REQUIRED> JourneyActivityId => Str

The unique identifier for the journey activity.



=head2 B<REQUIRED> JourneyId => Str

The unique identifier for the journey.



=head2 NextToken => Str

The string that specifies which page of results to return in a
paginated response. This parameter is currently not supported for
application, campaign, and journey metrics.



=head2 PageSize => Str

The maximum number of items to include in each page of a paginated
response. This parameter is currently not supported for application,
campaign, and journey metrics.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJourneyExecutionActivityMetrics in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

