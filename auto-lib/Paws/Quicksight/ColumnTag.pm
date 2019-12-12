package Paws::Quicksight::ColumnTag;
  use Moose;
  has ColumnGeographicRole => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ColumnTag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::ColumnTag object:

  $service_obj->Method(Att1 => { ColumnGeographicRole => $value, ..., ColumnGeographicRole => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::ColumnTag object:

  $result = $service_obj->Method(...);
  $result->Att1->ColumnGeographicRole

=head1 DESCRIPTION

A tag for a column in a C<TagColumnOperation> structure. This is a
variant type structure. For this structure to be valid, only one of the
attributes can be non-null.

=head1 ATTRIBUTES


=head2 ColumnGeographicRole => Str

  A geospatial role for a column.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

