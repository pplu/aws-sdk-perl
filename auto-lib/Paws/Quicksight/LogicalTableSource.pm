package Paws::Quicksight::LogicalTableSource;
  use Moose;
  has JoinInstruction => (is => 'ro', isa => 'Paws::Quicksight::JoinInstruction');
  has PhysicalTableId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::LogicalTableSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::LogicalTableSource object:

  $service_obj->Method(Att1 => { JoinInstruction => $value, ..., PhysicalTableId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::LogicalTableSource object:

  $result = $service_obj->Method(...);
  $result->Att1->JoinInstruction

=head1 DESCRIPTION

Information about the source of a logical table. This is a variant type
structure. For this structure to be valid, only one of the attributes
can be non-null.

=head1 ATTRIBUTES


=head2 JoinInstruction => L<Paws::Quicksight::JoinInstruction>

  Specifies the result of a join of two logical tables.


=head2 PhysicalTableId => Str

  Physical table ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

