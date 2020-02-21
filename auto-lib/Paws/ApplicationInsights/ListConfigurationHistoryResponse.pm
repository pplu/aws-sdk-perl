
package Paws::ApplicationInsights::ListConfigurationHistoryResponse;
  use Moose;
  has EventList => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationInsights::ConfigurationEvent]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::ListConfigurationHistoryResponse

=head1 ATTRIBUTES


=head2 EventList => ArrayRef[L<Paws::ApplicationInsights::ConfigurationEvent>]

The list of configuration events and their corresponding details.


=head2 NextToken => Str

The C<NextToken> value to include in a future
C<ListConfigurationHistory> request. When the results of a
C<ListConfigurationHistory> request exceed C<MaxResults>, this value
can be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut

1;