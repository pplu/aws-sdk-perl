
package Paws::SSMIncidents::ListRelatedItemsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RelatedItems => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::RelatedItem]', traits => ['NameInRequest'], request_name => 'relatedItems', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::ListRelatedItemsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to continue to the next page of results.


=head2 B<REQUIRED> RelatedItems => ArrayRef[L<Paws::SSMIncidents::RelatedItem>]

Details about each related item.


=head2 _request_id => Str


=cut

