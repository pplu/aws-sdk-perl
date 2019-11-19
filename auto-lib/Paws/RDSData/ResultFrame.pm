# Generated from default/object.tt
package Paws::RDSData::ResultFrame;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::RDSData::Types qw/RDSData_ResultSetMetadata RDSData_Record/;
  has Records => (is => 'ro', isa => ArrayRef[RDSData_Record]);
  has ResultSetMetadata => (is => 'ro', isa => RDSData_ResultSetMetadata);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResultSetMetadata' => {
                                        'type' => 'RDSData_ResultSetMetadata',
                                        'class' => 'Paws::RDSData::ResultSetMetadata'
                                      },
               'Records' => {
                              'class' => 'Paws::RDSData::Record',
                              'type' => 'ArrayRef[RDSData_Record]'
                            }
             },
  'NameInRequest' => {
                       'ResultSetMetadata' => 'resultSetMetadata',
                       'Records' => 'records'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::ResultFrame

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDSData::ResultFrame object:

  $service_obj->Method(Att1 => { Records => $value, ..., ResultSetMetadata => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDSData::ResultFrame object:

  $result = $service_obj->Method(...);
  $result->Att1->Records

=head1 DESCRIPTION

The result set returned by a SQL statement.

=head1 ATTRIBUTES


=head2 Records => ArrayRef[RDSData_Record]

  The records in the result set.


=head2 ResultSetMetadata => RDSData_ResultSetMetadata

  The result-set metadata in the result set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

