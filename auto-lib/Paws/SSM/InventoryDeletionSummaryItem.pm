package Paws::SSM::InventoryDeletionSummaryItem;
  use Moose;
  has Count => (is => 'ro', isa => 'Int');
  has RemainingCount => (is => 'ro', isa => 'Int');
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InventoryDeletionSummaryItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InventoryDeletionSummaryItem object:

  $service_obj->Method(Att1 => { Count => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InventoryDeletionSummaryItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Count

=head1 DESCRIPTION

Either a count, remaining count, or a version number in a delete
inventory summary.

=head1 ATTRIBUTES


=head2 Count => Int

  A count of the number of deleted items.


=head2 RemainingCount => Int

  The remaining number of items to delete.


=head2 Version => Str

  The inventory type version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

