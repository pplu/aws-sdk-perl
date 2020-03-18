package Paws::Quicksight::ColumnGroupSchema;
  use Moose;
  has ColumnGroupColumnSchemaList => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ColumnGroupColumnSchema]');
  has Name => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ColumnGroupSchema

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::ColumnGroupSchema object:

  $service_obj->Method(Att1 => { ColumnGroupColumnSchemaList => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::ColumnGroupSchema object:

  $result = $service_obj->Method(...);
  $result->Att1->ColumnGroupColumnSchemaList

=head1 DESCRIPTION

The column group schema.

=head1 ATTRIBUTES


=head2 ColumnGroupColumnSchemaList => ArrayRef[L<Paws::Quicksight::ColumnGroupColumnSchema>]

  A structure containing the list of schemas for column group columns.


=head2 Name => Str

  The name of the column group schema.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

