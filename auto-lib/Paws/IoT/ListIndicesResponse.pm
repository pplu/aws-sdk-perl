
package Paws::IoT::ListIndicesResponse;
  use Moose;
  has IndexNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'indexNames');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListIndicesResponse

=head1 ATTRIBUTES


=head2 IndexNames => ArrayRef[Str|Undef]

The index names.


=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.


=head2 _request_id => Str


=cut

