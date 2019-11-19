# Generated from default/object.tt
package Paws::Athena::ResultSet;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Athena::Types qw/Athena_Row Athena_ResultSetMetadata/;
  has ResultSetMetadata => (is => 'ro', isa => Athena_ResultSetMetadata);
  has Rows => (is => 'ro', isa => ArrayRef[Athena_Row]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Rows' => {
                           'class' => 'Paws::Athena::Row',
                           'type' => 'ArrayRef[Athena_Row]'
                         },
               'ResultSetMetadata' => {
                                        'type' => 'Athena_ResultSetMetadata',
                                        'class' => 'Paws::Athena::ResultSetMetadata'
                                      }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ResultSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::ResultSet object:

  $service_obj->Method(Att1 => { ResultSetMetadata => $value, ..., Rows => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::ResultSet object:

  $result = $service_obj->Method(...);
  $result->Att1->ResultSetMetadata

=head1 DESCRIPTION

The metadata and rows that comprise a query result set. The metadata
describes the column structure and data types.

=head1 ATTRIBUTES


=head2 ResultSetMetadata => Athena_ResultSetMetadata

  The metadata that describes the column structure and data types of a
table of query results.


=head2 Rows => ArrayRef[Athena_Row]

  The rows in the table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

