package Paws::WorkSpaces::WorkspaceConnectionStatus;
  use Moose;
  has ConnectionState => (is => 'ro', isa => 'Str');
  has ConnectionStateCheckTimestamp => (is => 'ro', isa => 'Str');
  has LastKnownUserConnectionTimestamp => (is => 'ro', isa => 'Str');
  has WorkspaceId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::WorkspaceConnectionStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::WorkspaceConnectionStatus object:

  $service_obj->Method(Att1 => { ConnectionState => $value, ..., WorkspaceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::WorkspaceConnectionStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionState

=head1 DESCRIPTION

Describes the connection status of a WorkSpace.

=head1 ATTRIBUTES


=head2 ConnectionState => Str

  The connection state of the WorkSpace. The connection state is unknown
if the WorkSpace is stopped.


=head2 ConnectionStateCheckTimestamp => Str

  The timestamp of the connection status check.


=head2 LastKnownUserConnectionTimestamp => Str

  The timestamp of the last known user connection.


=head2 WorkspaceId => Str

  The identifier of the WorkSpace.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

