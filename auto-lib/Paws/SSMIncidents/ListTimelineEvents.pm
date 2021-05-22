
package Paws::SSMIncidents::ListTimelineEvents;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::Filter]', traits => ['NameInRequest'], request_name => 'filters');
  has IncidentRecordArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'incidentRecordArn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTimelineEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listTimelineEvents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::ListTimelineEventsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::ListTimelineEvents - Arguments for method ListTimelineEvents on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTimelineEvents on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method ListTimelineEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTimelineEvents.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $ListTimelineEventsOutput = $ssm -incidents->ListTimelineEvents(
      IncidentRecordArn => 'MyArn',
      Filters           => [
        {
          Condition => {
            After  => '1970-01-01T01:00:00',    # OPTIONAL
            Before => '1970-01-01T01:00:00',    # OPTIONAL
            Equals => {
              IntegerValues => [ 1, ... ],      # max: 100; OPTIONAL
              StringValues  => [
                'MyStringListMemberString', ...    # max: 1000
              ],                                   # max: 100; OPTIONAL
            },    # OPTIONAL
          },
          Key => 'MyFilterKeyString',    # max: 50

        },
        ...
      ],                                 # OPTIONAL
      MaxResults => 1,                   # OPTIONAL
      NextToken  => 'MyNextToken',       # OPTIONAL
      SortBy     => 'EVENT_TIME',        # OPTIONAL
      SortOrder  => 'ASCENDING',         # OPTIONAL
    );

    # Results:
    my $EventSummaries = $ListTimelineEventsOutput->EventSummaries;
    my $NextToken      = $ListTimelineEventsOutput->NextToken;

    # Returns a L<Paws::SSMIncidents::ListTimelineEventsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/ListTimelineEvents>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSMIncidents::Filter>]

Filters the timeline events based on the provided conditional values.
You can filter timeline events using the following keys:

=over

=item *

C<eventTime>

=item *

C<eventType>

=back




=head2 B<REQUIRED> IncidentRecordArn => Str

The Amazon Resource Name (ARN) of the incident that the event is part
of.



=head2 MaxResults => Int

The maximum number of results per page.



=head2 NextToken => Str

The pagination token to continue to the next page of results.



=head2 SortBy => Str

Sort by the specified key value pair.

Valid values are: C<"EVENT_TIME">

=head2 SortOrder => Str

Sorts the order of timeline events by the value specified in the
C<sortBy> field.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTimelineEvents in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

