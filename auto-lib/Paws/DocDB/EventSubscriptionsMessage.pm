
package Paws::DocDB::EventSubscriptionsMessage;
  use Moose;
  has EventSubscriptionsList => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::EventSubscription]', request_name => 'EventSubscription', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::EventSubscriptionsMessage

=head1 ATTRIBUTES


=head2 EventSubscriptionsList => ArrayRef[L<Paws::DocDB::EventSubscription>]

A list of event subscriptions.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

