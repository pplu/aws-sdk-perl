package Paws::Quicksight::ColumnGroupColumnSchema;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ColumnGroupColumnSchema

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::ColumnGroupColumnSchema object:

  $service_obj->Method(Att1 => { Name => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::ColumnGroupColumnSchema object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A structure describing the name, data type, and geographic role of the
columns.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the column group's column schema.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

