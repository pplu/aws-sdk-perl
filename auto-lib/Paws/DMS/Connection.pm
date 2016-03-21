package Paws::DMS::Connection;
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str');
  has EndpointIdentifier => (is => 'ro', isa => 'Str');
  has LastFailureMessage => (is => 'ro', isa => 'Str');
  has ReplicationInstanceArn => (is => 'ro', isa => 'Str');
  has ReplicationInstanceIdentifier => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::Connection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::Connection object:

  $service_obj->Method(Att1 => { EndpointArn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::Connection object:

  $result = $service_obj->Method(...);
  $result->Att1->EndpointArn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EndpointArn => Str

  The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.


=head2 EndpointIdentifier => Str

  The identifier of the endpoint. Identifiers must begin with a letter;
must contain only ASCII letters, digits, and hyphens; and must not end
with a hyphen or contain two consecutive hyphens.


=head2 LastFailureMessage => Str

  The error message when the connection last failed.


=head2 ReplicationInstanceArn => Str

  The Amazon Resource Name (ARN) of the replication instance.


=head2 ReplicationInstanceIdentifier => Str

  The replication instance identifier. This parameter is stored as a
lowercase string.


=head2 Status => Str

  The connection status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

