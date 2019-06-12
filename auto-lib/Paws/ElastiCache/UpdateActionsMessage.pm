
package Paws::ElastiCache::UpdateActionsMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has UpdateActions => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::UpdateAction]', request_name => 'UpdateAction', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::UpdateActionsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.


=head2 UpdateActions => ArrayRef[L<Paws::ElastiCache::UpdateAction>]

Returns a list of update actions


=head2 _request_id => Str


=cut

