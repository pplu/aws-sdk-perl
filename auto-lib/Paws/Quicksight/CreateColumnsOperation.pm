package Paws::Quicksight::CreateColumnsOperation;
  use Moose;
  has Columns => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::CalculatedColumn]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateColumnsOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::CreateColumnsOperation object:

  $service_obj->Method(Att1 => { Columns => $value, ..., Columns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::CreateColumnsOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->Columns

=head1 DESCRIPTION

A transform operation that creates calculated columns. Columns created
in one such operation form a lexical closure.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Columns => ArrayRef[L<Paws::Quicksight::CalculatedColumn>]

  Calculated columns to create.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

