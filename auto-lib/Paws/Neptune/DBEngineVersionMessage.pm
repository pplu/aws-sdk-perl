
package Paws::Neptune::DBEngineVersionMessage;
  use Moose;
  has DBEngineVersions => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::DBEngineVersion]', request_name => 'DBEngineVersion', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DBEngineVersionMessage

=head1 ATTRIBUTES


=head2 DBEngineVersions => ArrayRef[L<Paws::Neptune::DBEngineVersion>]

A list of C<DBEngineVersion> elements.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

