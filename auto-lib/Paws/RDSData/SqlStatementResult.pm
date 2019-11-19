# Generated from default/object.tt
package Paws::RDSData::SqlStatementResult;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::RDSData::Types qw/RDSData_ResultFrame/;
  has NumberOfRecordsUpdated => (is => 'ro', isa => Int);
  has ResultFrame => (is => 'ro', isa => RDSData_ResultFrame);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NumberOfRecordsUpdated' => {
                                             'type' => 'Int'
                                           },
               'ResultFrame' => {
                                  'type' => 'RDSData_ResultFrame',
                                  'class' => 'Paws::RDSData::ResultFrame'
                                }
             },
  'NameInRequest' => {
                       'ResultFrame' => 'resultFrame',
                       'NumberOfRecordsUpdated' => 'numberOfRecordsUpdated'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::SqlStatementResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDSData::SqlStatementResult object:

  $service_obj->Method(Att1 => { NumberOfRecordsUpdated => $value, ..., ResultFrame => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDSData::SqlStatementResult object:

  $result = $service_obj->Method(...);
  $result->Att1->NumberOfRecordsUpdated

=head1 DESCRIPTION

The result of a SQL statement.

 <important> <p>This data type is deprecated.</p> </important>

=head1 ATTRIBUTES


=head2 NumberOfRecordsUpdated => Int

  The number of records updated by a SQL statement.


=head2 ResultFrame => RDSData_ResultFrame

  The result set of the SQL statement.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

