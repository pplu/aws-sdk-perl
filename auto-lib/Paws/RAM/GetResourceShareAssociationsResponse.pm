
package Paws::RAM::GetResourceShareAssociationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceShareAssociations => (is => 'ro', isa => 'ArrayRef[Paws::RAM::ResourceShareAssociation]', traits => ['NameInRequest'], request_name => 'resourceShareAssociations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::GetResourceShareAssociationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 ResourceShareAssociations => ArrayRef[L<Paws::RAM::ResourceShareAssociation>]

Information about the association.


=head2 _request_id => Str


=cut

