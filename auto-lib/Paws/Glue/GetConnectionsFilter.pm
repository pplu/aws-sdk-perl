package Paws::Glue::GetConnectionsFilter;
  use Moose;
  has ConnectionType => (is => 'ro', isa => 'Str');
  has MatchCriteria => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetConnectionsFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::GetConnectionsFilter object:

  $service_obj->Method(Att1 => { ConnectionType => $value, ..., MatchCriteria => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::GetConnectionsFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionType

=head1 DESCRIPTION

Filters the connection definitions returned by the C<GetConnections>
API.

=head1 ATTRIBUTES


=head2 ConnectionType => Str

  The type of connections to return. Currently, only JDBC is supported;
SFTP is not supported.


=head2 MatchCriteria => ArrayRef[Str|Undef]

  A criteria string that must match the criteria recorded in the
connection definition for that connection definition to be returned.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

