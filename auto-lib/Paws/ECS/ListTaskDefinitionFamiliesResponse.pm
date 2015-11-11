
package Paws::ECS::ListTaskDefinitionFamiliesResponse;
  use Moose;
  has Families => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'families' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListTaskDefinitionFamiliesResponse

=head1 ATTRIBUTES


=head2 Families => ArrayRef[Str]

  The list of task definition family names that match the
C<ListTaskDefinitionFamilies> request.

=head2 NextToken => Str

  The C<nextToken> value to include in a future
C<ListTaskDefinitionFamilies> request. When the results of a
C<ListTaskDefinitionFamilies> request exceed C<maxResults>, this value
can be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=cut

1;