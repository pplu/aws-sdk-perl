package Paws::RDSData::ResultFrame;
  use Moose;
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::RDSData::Record]', request_name => 'records', traits => ['NameInRequest']);
  has ResultSetMetadata => (is => 'ro', isa => 'Paws::RDSData::ResultSetMetadata', request_name => 'resultSetMetadata', traits => ['NameInRequest']);
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

Result Frame

=head1 ATTRIBUTES


=head2 Records => ArrayRef[L<Paws::RDSData::Record>]

  ResultSet Metadata.


=head2 ResultSetMetadata => L<Paws::RDSData::ResultSetMetadata>

  ResultSet Metadata.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

