package Paws::RDSData::SqlStatementResult;
  use Moose;
  has NumberOfRecordsUpdated => (is => 'ro', isa => 'Int', request_name => 'numberOfRecordsUpdated', traits => ['NameInRequest']);
  has ResultFrame => (is => 'ro', isa => 'Paws::RDSData::ResultFrame', request_name => 'resultFrame', traits => ['NameInRequest']);
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

SQL statement execution result

=head1 ATTRIBUTES


=head2 NumberOfRecordsUpdated => Int

  Number of rows updated.


=head2 ResultFrame => L<Paws::RDSData::ResultFrame>

  ResultFrame returned by executing the sql statement



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

