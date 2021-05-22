
package Paws::SageMaker::ListAssociationsResponse;
  use Moose;
  has AssociationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AssociationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListAssociationsResponse

=head1 ATTRIBUTES


=head2 AssociationSummaries => ArrayRef[L<Paws::SageMaker::AssociationSummary>]

A list of associations and their properties.


=head2 NextToken => Str

A token for getting the next set of associations, if there are any.


=head2 _request_id => Str


=cut

1;