
package Paws::ECS::ListTaskDefinitionFamiliesResponse;
  use Moose;
  has Families => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'families' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListTaskDefinitionFamiliesResponse

=head1 ATTRIBUTES


=head2 Families => ArrayRef[Str|Undef]

The list of task definition family names that match the
C<ListTaskDefinitionFamilies> request.


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<ListTaskDefinitionFamilies> request. When the results of a
C<ListTaskDefinitionFamilies> request exceed C<maxResults>, this value
can be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut

1;