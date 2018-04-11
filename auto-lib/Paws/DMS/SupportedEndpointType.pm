package Paws::DMS::SupportedEndpointType;
  use Moose;
  has EndpointType => (is => 'ro', isa => 'Str');
  has EngineDisplayName => (is => 'ro', isa => 'Str');
  has EngineName => (is => 'ro', isa => 'Str');
  has SupportsCDC => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::SupportedEndpointType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::SupportedEndpointType object:

  $service_obj->Method(Att1 => { EndpointType => $value, ..., SupportsCDC => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::SupportedEndpointType object:

  $result = $service_obj->Method(...);
  $result->Att1->EndpointType

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EndpointType => Str

  The type of endpoint.


=head2 EngineDisplayName => Str

  The expanded name for the engine name. For example, if the
C<EngineName> parameter is "aurora," this value would be "Amazon Aurora
MySQL."


=head2 EngineName => Str

  The database engine name. Valid values, depending on the EndPointType,
include mysql, oracle, postgres, mariadb, aurora, aurora-postgresql,
redshift, s3, db2, azuredb, sybase, sybase, dynamodb, mongodb, and
sqlserver.


=head2 SupportsCDC => Bool

  Indicates if Change Data Capture (CDC) is supported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

