package Paws::Quicksight::JoinInstruction;
  use Moose;
  has LeftOperand => (is => 'ro', isa => 'Str', required => 1);
  has OnClause => (is => 'ro', isa => 'Str', required => 1);
  has RightOperand => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::JoinInstruction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::JoinInstruction object:

  $service_obj->Method(Att1 => { LeftOperand => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::JoinInstruction object:

  $result = $service_obj->Method(...);
  $result->Att1->LeftOperand

=head1 DESCRIPTION

Join instruction.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LeftOperand => Str

  Left operand.


=head2 B<REQUIRED> OnClause => Str

  On Clause.


=head2 B<REQUIRED> RightOperand => Str

  Right operand.


=head2 B<REQUIRED> Type => Str

  Type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

