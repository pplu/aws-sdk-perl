
package Paws::CloudSearch::BuildSuggestersResponse;
  use Moose;
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::BuildSuggestersResponse

=head1 ATTRIBUTES


=head2 FieldNames => ArrayRef[Str|Undef]




=head2 _request_id => Str


=cut

