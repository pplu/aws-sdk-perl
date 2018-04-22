package Paws::SSM::InventoryDeletionSummary;
  use Moose;
  has RemainingCount => (is => 'ro', isa => 'Int');
  has SummaryItems => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InventoryDeletionSummaryItem]');
  has TotalCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InventoryDeletionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InventoryDeletionSummary object:

  $service_obj->Method(Att1 => { RemainingCount => $value, ..., TotalCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InventoryDeletionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->RemainingCount

=head1 DESCRIPTION

Information about the delete operation.

=head1 ATTRIBUTES


=head2 RemainingCount => Int

  Remaining number of items to delete.


=head2 SummaryItems => ArrayRef[L<Paws::SSM::InventoryDeletionSummaryItem>]

  A list of counts and versions for deleted items.


=head2 TotalCount => Int

  The total number of items to delete. This count does not change during
the delete operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

