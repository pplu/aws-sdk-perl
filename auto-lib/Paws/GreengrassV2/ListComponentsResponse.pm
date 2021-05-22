
package Paws::GreengrassV2::ListComponentsResponse;
  use Moose;
  has Components => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::Component]', traits => ['NameInRequest'], request_name => 'components');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::ListComponentsResponse

=head1 ATTRIBUTES


=head2 Components => ArrayRef[L<Paws::GreengrassV2::Component>]

A list that summarizes each component.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

