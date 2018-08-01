
package Paws::IoTAnalytics::DescribeDatastoreResponse;
  use Moose;
  has Datastore => (is => 'ro', isa => 'Paws::IoTAnalytics::Datastore', traits => ['NameInRequest'], request_name => 'datastore');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DescribeDatastoreResponse

=head1 ATTRIBUTES


=head2 Datastore => L<Paws::IoTAnalytics::Datastore>

Information about the data store.


=head2 _request_id => Str


=cut

