
package Paws::IoT::ListThingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Things => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ThingAttribute]', traits => ['NameInRequest'], request_name => 'things');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to get the next set of results. Will not be returned
if operation has returned all results.


=head2 Things => ArrayRef[L<Paws::IoT::ThingAttribute>]

The things.


=head2 _request_id => Str


=cut

