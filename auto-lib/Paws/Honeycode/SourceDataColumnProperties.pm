# Generated by default/object.tt
package Paws::Honeycode::SourceDataColumnProperties;
  use Moose;
  has ColumnIndex => (is => 'ro', isa => 'Int', request_name => 'columnIndex', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::SourceDataColumnProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Honeycode::SourceDataColumnProperties object:

  $service_obj->Method(Att1 => { ColumnIndex => $value, ..., ColumnIndex => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Honeycode::SourceDataColumnProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->ColumnIndex

=head1 DESCRIPTION

An object that contains the properties for importing data to a specific
column in a table.

=head1 ATTRIBUTES


=head2 ColumnIndex => Int

The index of the column in the input file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Honeycode>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

