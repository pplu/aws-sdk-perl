
package Paws::DevOpsGuru::ListEvents;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::DevOpsGuru::ListEventsFilters', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/events');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::ListEventsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::ListEvents - Arguments for method ListEvents on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEvents on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method ListEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEvents.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $ListEventsResponse = $devops -guru->ListEvents(
      Filters => {
        DataSource => 'AWS_CLOUD_TRAIL'
        ,    # values: AWS_CLOUD_TRAIL, AWS_CODE_DEPLOY; OPTIONAL
        EventClass => 'INFRASTRUCTURE'
        , # values: INFRASTRUCTURE, DEPLOYMENT, SECURITY_CHANGE, CONFIG_CHANGE, SCHEMA_CHANGE; OPTIONAL
        EventSource    => 'MyEventSource',    # min: 10, max: 50; OPTIONAL
        EventTimeRange => {
          FromTime => '1970-01-01T01:00:00',
          ToTime   => '1970-01-01T01:00:00',

        },                                    # OPTIONAL
        InsightId          => 'MyInsightId',  # min: 1, max: 100; OPTIONAL
        ResourceCollection => {
          CloudFormation => {
            StackNames => [
              'MyStackName', ...    # min: 1, max: 128
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyUuidNextToken',    # OPTIONAL
    );

    # Results:
    my $Events    = $ListEventsResponse->Events;
    my $NextToken = $ListEventsResponse->NextToken;

    # Returns a L<Paws::DevOpsGuru::ListEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/ListEvents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Filters => L<Paws::DevOpsGuru::ListEventsFilters>

A C<ListEventsFilters> object used to specify which events to return.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEvents in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

