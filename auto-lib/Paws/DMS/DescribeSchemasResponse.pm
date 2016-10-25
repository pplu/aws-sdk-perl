
package Paws::DMS::DescribeSchemasResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has Schemas => (is => 'ro', isa => 'ArrayRef[Str|Undef]');


### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeSchemasResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 Schemas => ArrayRef[Str|Undef]

The described schema.




=cut

1;