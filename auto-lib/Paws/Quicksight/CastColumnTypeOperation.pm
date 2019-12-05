package Paws::Quicksight::CastColumnTypeOperation;
  use Moose;
  has ColumnName => (is => 'ro', isa => 'Str', required => 1);
  has Format => (is => 'ro', isa => 'Str');
  has NewColumnType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CastColumnTypeOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::CastColumnTypeOperation object:

  $service_obj->Method(Att1 => { ColumnName => $value, ..., NewColumnType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::CastColumnTypeOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->ColumnName

=head1 DESCRIPTION

A transform operation that casts a column to a different type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ColumnName => Str

  Column name.


=head2 Format => Str

  When casting a column from string to datetime type, you can supply a
QuickSight supported format string to denote the source data format.


=head2 B<REQUIRED> NewColumnType => Str

  New column data type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

