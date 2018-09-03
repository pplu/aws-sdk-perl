
package Paws::IoTAnalytics::DescribeDatastoreResponse;
  use Moose;
  has Datastore => (is => 'ro', isa => 'Paws::IoTAnalytics::Datastore', traits => ['NameInRequest'], request_name => 'datastore');
  has Statistics => (is => 'ro', isa => 'Paws::IoTAnalytics::DatastoreStatistics', traits => ['NameInRequest'], request_name => 'statistics');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DescribeDatastoreResponse

=head1 ATTRIBUTES


=head2 Datastore => L<Paws::IoTAnalytics::Datastore>

Information about the data store.


=head2 Statistics => L<Paws::IoTAnalytics::DatastoreStatistics>

Additional statistical information about the data store. Included if
the 'includeStatistics' parameter is set to true in the request.


=head2 _request_id => Str


=cut

