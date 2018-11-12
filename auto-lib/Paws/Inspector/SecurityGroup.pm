package Paws::Inspector::SecurityGroup;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', request_name => 'groupId', traits => ['NameInRequest']);
  has GroupName => (is => 'ro', isa => 'Str', request_name => 'groupName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::SecurityGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::SecurityGroup object:

  $service_obj->Method(Att1 => { GroupId => $value, ..., GroupName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::SecurityGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupId

=head1 DESCRIPTION

Contains information about a security group associated with a network
interface. This data type is used as one of the elements of the
NetworkInterface data type.

=head1 ATTRIBUTES


=head2 GroupId => Str

  The ID of the security group.


=head2 GroupName => Str

  The name of the security group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

