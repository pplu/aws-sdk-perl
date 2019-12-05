package Paws::Quicksight::CalculatedColumn;
  use Moose;
  has ColumnId => (is => 'ro', isa => 'Str', required => 1);
  has ColumnName => (is => 'ro', isa => 'Str', required => 1);
  has Expression => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CalculatedColumn

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::CalculatedColumn object:

  $service_obj->Method(Att1 => { ColumnId => $value, ..., Expression => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::CalculatedColumn object:

  $result = $service_obj->Method(...);
  $result->Att1->ColumnId

=head1 DESCRIPTION

A calculated column for a dataset.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ColumnId => Str

  A unique ID to identify a calculated column. During dataset update, if
the column ID of a calculated column matches that of an existing
calculated column, QuickSight preserves the existing calculated column.


=head2 B<REQUIRED> ColumnName => Str

  Column name.


=head2 B<REQUIRED> Expression => Str

  An expression that defines the calculated column.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

