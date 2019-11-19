# Generated from default/object.tt
package Paws::WorkSpaces::WorkspacesIpGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_IpRuleItem/;
  has GroupDesc => (is => 'ro', isa => Str);
  has GroupId => (is => 'ro', isa => Str);
  has GroupName => (is => 'ro', isa => Str);
  has UserRules => (is => 'ro', isa => ArrayRef[WorkSpaces_IpRuleItem]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GroupName' => {
                                'type' => 'Str'
                              },
               'UserRules' => {
                                'class' => 'Paws::WorkSpaces::IpRuleItem',
                                'type' => 'ArrayRef[WorkSpaces_IpRuleItem]'
                              },
               'GroupDesc' => {
                                'type' => 'Str'
                              },
               'GroupId' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'GroupId' => 'groupId',
                       'GroupDesc' => 'groupDesc',
                       'GroupName' => 'groupName',
                       'UserRules' => 'userRules'
                     }
}
;
    return $Params_map;
  }


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


=head2 UserRules => ArrayRef[WorkSpaces_IpRuleItem]

  The rules.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

