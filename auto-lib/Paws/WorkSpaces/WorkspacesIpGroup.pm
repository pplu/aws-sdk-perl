package Paws::WorkSpaces::WorkspacesIpGroup;
  use Moose;
  has GroupDesc => (is => 'ro', isa => 'Str', request_name => 'groupDesc', traits => ['NameInRequest']);
  has GroupId => (is => 'ro', isa => 'Str', request_name => 'groupId', traits => ['NameInRequest']);
  has GroupName => (is => 'ro', isa => 'Str', request_name => 'groupName', traits => ['NameInRequest']);
  has UserRules => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::IpRuleItem]', request_name => 'userRules', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::WorkspacesIpGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::WorkspacesIpGroup object:

  $service_obj->Method(Att1 => { GroupDesc => $value, ..., UserRules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::WorkspacesIpGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupDesc

=head1 DESCRIPTION

Describes an IP access control group.

=head1 ATTRIBUTES


=head2 GroupDesc => Str

  The description of the group.


=head2 GroupId => Str

  The identifier of the group.


=head2 GroupName => Str

  The name of the group.


=head2 UserRules => ArrayRef[L<Paws::WorkSpaces::IpRuleItem>]

  The rules.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

