package Paws::Athena::ResultSetMetadata;
  use Moose;
  has ColumnInfo => (is => 'ro', isa => 'ArrayRef[Paws::Athena::ColumnInfo]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ResultSetMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::ResultSetMetadata object:

  $service_obj->Method(Att1 => { ColumnInfo => $value, ..., ColumnInfo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::ResultSetMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->ColumnInfo

=head1 DESCRIPTION

The metadata that describes the column structure and data types of a
table of query results.

=head1 ATTRIBUTES


=head2 ColumnInfo => ArrayRef[L<Paws::Athena::ColumnInfo>]

  Information about the columns returned in a query result metadata.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

