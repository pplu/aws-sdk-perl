
package Paws::Pinpoint::GetJourneyDateRangeKpi;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'end-time');
  has JourneyId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'journey-id', required => 1);
  has KpiName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'kpi-name', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has PageSize => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'page-size');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'start-time');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJourneyDateRangeKpi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/journeys/{journey-id}/kpis/daterange/{kpi-name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::GetJourneyDateRangeKpiResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetJourneyDateRangeKpi - Arguments for method GetJourneyDateRangeKpi on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJourneyDateRangeKpi on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method GetJourneyDateRangeKpi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJourneyDateRangeKpi.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $GetJourneyDateRangeKpiResponse = $pinpoint->GetJourneyDateRangeKpi(
      ApplicationId => 'My__string',
      JourneyId     => 'My__string',
      KpiName       => 'My__string',
      EndTime       => '1970-01-01T01:00:00',    # OPTIONAL
      NextToken     => 'My__string',             # OPTIONAL
      PageSize      => 'My__string',             # OPTIONAL
      StartTime     => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $JourneyDateRangeKpiResponse =
      $GetJourneyDateRangeKpiResponse->JourneyDateRangeKpiResponse;

    # Returns a L<Paws::Pinpoint::GetJourneyDateRangeKpiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/GetJourneyDateRangeKpi>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 EndTime => Str

The last date and time to retrieve data for, as part of an inclusive
date range that filters the query results. This value should be in
extended ISO 8601 format, for example: 2019-07-19T00:00:00Z for July
19, 2019 and 2019-07-19T20:00:00Z for 8:00 PM July 19, 2019.



=head2 B<REQUIRED> JourneyId => Str

The unique identifier for the journey.



=head2 B<REQUIRED> KpiName => Str

The name of the metric, also referred to as a I<key performance
indicator (KPI)>, to retrieve data for. This value describes the
associated metric and consists of two or more terms, which are
comprised of lowercase alphanumeric characters, separated by a hyphen.
Examples are email-open-rate and successful-delivery-rate. For a list
of valid values, see the Amazon Pinpoint Developer Guide
(https://docs.aws.amazon.com/pinpoint/latest/developerguide/welcome.html).



=head2 NextToken => Str

The string that specifies which page of results to return in a
paginated response. This parameter is currently not supported for
application, campaign, and journey metrics.



=head2 PageSize => Str

The maximum number of items to include in each page of a paginated
response. This parameter is currently not supported for application,
campaign, and journey metrics.



=head2 StartTime => Str

The first date and time to retrieve data for, as part of an inclusive
date range that filters the query results. This value should be in
extended ISO 8601 format, for example: 2019-07-15T00:00:00Z for July
15, 2019 and 2019-07-15T16:00:00Z for 4:00 PM July 15, 2019.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJourneyDateRangeKpi in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

