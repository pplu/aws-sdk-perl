
package Paws::IoT::ListThingsInBillingGroupResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Things => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'things');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingsInBillingGroupResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to get the next set of results. Will not be returned
if operation has returned all results.


=head2 Things => ArrayRef[Str|Undef]

A list of things in the billing group.


=head2 _request_id => Str


=cut

