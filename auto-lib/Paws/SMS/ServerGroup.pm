package Paws::SMS::ServerGroup;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ServerGroupId => (is => 'ro', isa => 'Str', request_name => 'serverGroupId', traits => ['NameInRequest']);
  has ServerList => (is => 'ro', isa => 'ArrayRef[Paws::SMS::Server]', request_name => 'serverList', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::ServerGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::ServerGroup object:

  $service_obj->Method(Att1 => { Name => $value, ..., ServerList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::ServerGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A logical grouping of servers.

=head1 ATTRIBUTES


=head2 Name => Str

  Name of a server group.


=head2 ServerGroupId => Str

  Identifier of a server group.


=head2 ServerList => ArrayRef[L<Paws::SMS::Server>]

  List of servers belonging to a server group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

