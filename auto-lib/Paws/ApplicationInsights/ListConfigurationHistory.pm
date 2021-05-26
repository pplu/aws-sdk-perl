
package Paws::ApplicationInsights::ListConfigurationHistory;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has EventStatus => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceGroupName => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConfigurationHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationInsights::ListConfigurationHistoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::ListConfigurationHistory - Arguments for method ListConfigurationHistory on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConfigurationHistory on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method ListConfigurationHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConfigurationHistory.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $ListConfigurationHistoryResponse =
      $applicationinsights->ListConfigurationHistory(
      EndTime           => '1970-01-01T01:00:00',    # OPTIONAL
      EventStatus       => 'INFO',                   # OPTIONAL
      MaxResults        => 1,                        # OPTIONAL
      NextToken         => 'MyPaginationToken',      # OPTIONAL
      ResourceGroupName => 'MyResourceGroupName',    # OPTIONAL
      StartTime         => '1970-01-01T01:00:00',    # OPTIONAL
      );

    # Results:
    my $EventList = $ListConfigurationHistoryResponse->EventList;
    my $NextToken = $ListConfigurationHistoryResponse->NextToken;

# Returns a L<Paws::ApplicationInsights::ListConfigurationHistoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/ListConfigurationHistory>

=head1 ATTRIBUTES


=head2 EndTime => Str

The end time of the event.



=head2 EventStatus => Str

The status of the configuration update event. Possible values include
INFO, WARN, and ERROR.

Valid values are: C<"INFO">, C<"WARN">, C<"ERROR">

=head2 MaxResults => Int

The maximum number of results returned by C<ListConfigurationHistory>
in paginated output. When this parameter is used,
C<ListConfigurationHistory> returns only C<MaxResults> in a single page
along with a C<NextToken> response element. The remaining results of
the initial request can be seen by sending another
C<ListConfigurationHistory> request with the returned C<NextToken>
value. If this parameter is not used, then C<ListConfigurationHistory>
returns all results.



=head2 NextToken => Str

The C<NextToken> value returned from a previous paginated
C<ListConfigurationHistory> request where C<MaxResults> was used and
the results exceeded the value of that parameter. Pagination continues
from the end of the previous results that returned the C<NextToken>
value. This value is C<null> when there are no more results to return.



=head2 ResourceGroupName => Str

Resource group to which the application belongs.



=head2 StartTime => Str

The start time of the event.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConfigurationHistory in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

