package Paws::Glue::TableVersion;
  use Moose;
  has Table => (is => 'ro', isa => 'Paws::Glue::Table');
  has VersionId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::TableVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::TableVersion object:

  $service_obj->Method(Att1 => { Table => $value, ..., VersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::TableVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->Table

=head1 DESCRIPTION

Specifies a version of a table.

=head1 ATTRIBUTES


=head2 Table => L<Paws::Glue::Table>

  The table in question


=head2 VersionId => Str

  The ID value that identifies this table version. A C<VersionId> is a
string representation of an integer. Each version is incremented by 1.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

