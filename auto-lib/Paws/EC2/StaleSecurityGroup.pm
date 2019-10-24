package Paws::EC2::StaleSecurityGroup;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_StaleIpPermission/;
  has Description => (is => 'ro', isa => Str);
  has GroupId => (is => 'ro', isa => Str);
  has GroupName => (is => 'ro', isa => Str);
  has StaleIpPermissions => (is => 'ro', isa => ArrayRef[EC2_StaleIpPermission]);
  has StaleIpPermissionsEgress => (is => 'ro', isa => ArrayRef[EC2_StaleIpPermission]);
  has VpcId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcId' => {
                            'type' => 'Str'
                          },
               'GroupId' => {
                              'type' => 'Str'
                            },
               'StaleIpPermissionsEgress' => {
                                               'class' => 'Paws::EC2::StaleIpPermission',
                                               'type' => 'ArrayRef[EC2_StaleIpPermission]'
                                             },
               'GroupName' => {
                                'type' => 'Str'
                              },
               'StaleIpPermissions' => {
                                         'class' => 'Paws::EC2::StaleIpPermission',
                                         'type' => 'ArrayRef[EC2_StaleIpPermission]'
                                       },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'VpcId' => 'vpcId',
                       'GroupId' => 'groupId',
                       'StaleIpPermissionsEgress' => 'staleIpPermissionsEgress',
                       'GroupName' => 'groupName',
                       'StaleIpPermissions' => 'staleIpPermissions',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::StaleSecurityGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::StaleSecurityGroup object:

  $service_obj->Method(Att1 => { Description => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::StaleSecurityGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the security group.


=head2 GroupId => Str

  The ID of the security group.


=head2 GroupName => Str

  The name of the security group.


=head2 StaleIpPermissions => ArrayRef[EC2_StaleIpPermission]

  Information about the stale inbound rules in the security group.


=head2 StaleIpPermissionsEgress => ArrayRef[EC2_StaleIpPermission]

  Information about the stale outbound rules in the security group.


=head2 VpcId => Str

  The ID of the VPC for the security group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
