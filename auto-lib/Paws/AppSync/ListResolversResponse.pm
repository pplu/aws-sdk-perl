
package Paws::AppSync::ListResolversResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Resolvers => (is => 'ro', isa => 'ArrayRef[Paws::AppSync::Resolver]', traits => ['NameInRequest'], request_name => 'resolvers');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListResolversResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier to be passed in the next request to this operation to
return the next set of items in the list.


=head2 Resolvers => ArrayRef[L<Paws::AppSync::Resolver>]

The C<Resolver> objects.


=head2 _request_id => Str


=cut

