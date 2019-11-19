# Generated from default/object.tt
package Paws::RDSData::ResultSetMetadata;
  use Moo;
  use Types::Standard qw/Int ArrayRef/;
  use Paws::RDSData::Types qw/RDSData_ColumnMetadata/;
  has ColumnCount => (is => 'ro', isa => Int);
  has ColumnMetadata => (is => 'ro', isa => ArrayRef[RDSData_ColumnMetadata]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ColumnMetadata' => {
                                     'class' => 'Paws::RDSData::ColumnMetadata',
                                     'type' => 'ArrayRef[RDSData_ColumnMetadata]'
                                   },
               'ColumnCount' => {
                                  'type' => 'Int'
                                }
             },
  'NameInRequest' => {
                       'ColumnMetadata' => 'columnMetadata',
                       'ColumnCount' => 'columnCount'
                     }
}
;
    return $Params_map;
  }


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

The metadata of the result set returned by a SQL statement.

=head1 ATTRIBUTES


=head2 ColumnCount => Int

  The number of columns in the result set.


=head2 ColumnMetadata => ArrayRef[RDSData_ColumnMetadata]

  The metadata of the columns in the result set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

