
package Paws::ElastiCache::ServiceUpdatesMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ServiceUpdates => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::ServiceUpdate]', request_name => 'ServiceUpdate', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ServiceUpdatesMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.


=head2 ServiceUpdates => ArrayRef[L<Paws::ElastiCache::ServiceUpdate>]

A list of service updates


=head2 _request_id => Str


=cut

