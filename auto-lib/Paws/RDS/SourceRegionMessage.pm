
package Paws::RDS::SourceRegionMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has SourceRegions => (is => 'ro', isa => 'ArrayRef[Paws::RDS::SourceRegion]', request_name => 'SourceRegion', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::SourceRegionMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 SourceRegions => ArrayRef[L<Paws::RDS::SourceRegion>]

A list of SourceRegion instances that contains each source AWS Region
that the current AWS Region can get a Read Replica or a DB snapshot
from.


=head2 _request_id => Str


=cut

