
package Paws::SSM::CreateAssociationBatchResult;
  use Moose;
  has Failed => (is => 'ro', isa => 'ArrayRef[Paws::SSM::FailedCreateAssociation]');
  has Successful => (is => 'ro', isa => 'ArrayRef[Paws::SSM::AssociationDescription]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateAssociationBatchResult

=head1 ATTRIBUTES


=head2 Failed => ArrayRef[L<Paws::SSM::FailedCreateAssociation>]

Information about the associations that failed.


=head2 Successful => ArrayRef[L<Paws::SSM::AssociationDescription>]

Information about the associations that succeeded.


=head2 _request_id => Str


=cut

1;