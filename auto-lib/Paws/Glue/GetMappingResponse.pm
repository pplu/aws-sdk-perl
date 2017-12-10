
package Paws::Glue::GetMappingResponse;
  use Moose;
  has Mapping => (is => 'ro', isa => 'ArrayRef[Paws::Glue::MappingEntry]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetMappingResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Mapping => ArrayRef[L<Paws::Glue::MappingEntry>]

A list of mappings to the specified targets.


=head2 _request_id => Str


=cut

1;