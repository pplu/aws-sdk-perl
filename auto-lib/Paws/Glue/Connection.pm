package Paws::Glue::Connection;
  use Moose;
  has ConnectionProperties => (is => 'ro', isa => 'Paws::Glue::ConnectionProperties');
  has ConnectionType => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastUpdatedBy => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has MatchCriteria => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');
  has PhysicalConnectionRequirements => (is => 'ro', isa => 'Paws::Glue::PhysicalConnectionRequirements');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Connection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Connection object:

  $service_obj->Method(Att1 => { ConnectionProperties => $value, ..., PhysicalConnectionRequirements => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Connection object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionProperties

=head1 DESCRIPTION

Defines a connection to a data source.

=head1 ATTRIBUTES


=head2 ConnectionProperties => L<Paws::Glue::ConnectionProperties>

  A list of key-value pairs used as parameters for this connection.


=head2 ConnectionType => Str

  The type of the connection. Currently, only JDBC is supported; SFTP is
not supported.


=head2 CreationTime => Str

  The time this connection definition was created.


=head2 Description => Str

  Description of the connection.


=head2 LastUpdatedBy => Str

  The user, group or role that last updated this connection definition.


=head2 LastUpdatedTime => Str

  The last time this connection definition was updated.


=head2 MatchCriteria => ArrayRef[Str|Undef]

  A list of criteria that can be used in selecting this connection.


=head2 Name => Str

  The name of the connection definition.


=head2 PhysicalConnectionRequirements => L<Paws::Glue::PhysicalConnectionRequirements>

  A map of physical connection requirements, such as VPC and
SecurityGroup, needed for making this connection successfully.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

