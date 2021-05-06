
package Paws::ECS::ListAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Attribute]', traits => ['NameInRequest'], request_name => 'attributes' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::ECS::Attribute>]

A list of attribute objects that meet the criteria of the request.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListAttributes>
request. When the results of a C<ListAttributes> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 _request_id => Str


=cut

1;