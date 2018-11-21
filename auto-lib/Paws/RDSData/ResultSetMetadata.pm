package Paws::RDSData::ResultSetMetadata;
  use Moose;
  has ColumnCount => (is => 'ro', isa => 'Int', request_name => 'columnCount', traits => ['NameInRequest']);
  has ColumnMetadata => (is => 'ro', isa => 'ArrayRef[Paws::RDSData::ColumnMetadata]', request_name => 'columnMetadata', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::ResultSetMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDSData::ResultSetMetadata object:

  $service_obj->Method(Att1 => { ColumnCount => $value, ..., ColumnMetadata => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDSData::ResultSetMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->ColumnCount

=head1 DESCRIPTION

List of columns and their types.

=head1 ATTRIBUTES


=head2 ColumnCount => Int

  Number of columns


=head2 ColumnMetadata => ArrayRef[L<Paws::RDSData::ColumnMetadata>]

  List of columns and their types



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

