
package Paws::IoTAnalytics::CreateDatastoreResponse;
  use Moose;
  has DatastoreArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datastoreArn');
  has DatastoreName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datastoreName');
  has RetentionPeriod => (is => 'ro', isa => 'Paws::IoTAnalytics::RetentionPeriod', traits => ['NameInRequest'], request_name => 'retentionPeriod');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::CreateDatastoreResponse

=head1 ATTRIBUTES


=head2 DatastoreArn => Str

The ARN of the data store.


=head2 DatastoreName => Str

The name of the data store.


=head2 RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>

How long, in days, message data is kept for the data store.


=head2 _request_id => Str


=cut

