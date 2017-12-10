
package Paws::IoT::ListPrincipalThingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Things => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'things');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPrincipalThingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.


=head2 Things => ArrayRef[Str|Undef]

The things.


=head2 _request_id => Str


=cut

