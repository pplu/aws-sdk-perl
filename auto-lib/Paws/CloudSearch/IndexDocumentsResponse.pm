
package Paws::CloudSearch::IndexDocumentsResponse;
  use Moose;
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::IndexDocumentsResponse

=head1 ATTRIBUTES


=head2 FieldNames => ArrayRef[Str|Undef]

The names of the fields that are currently being indexed.


=head2 _request_id => Str


=cut

