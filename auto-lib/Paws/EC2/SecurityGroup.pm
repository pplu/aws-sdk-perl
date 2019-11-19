package Paws::EC2::SecurityGroup;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Tag EC2_IpPermission/;
  has Description => (is => 'ro', isa => Str);
  has GroupId => (is => 'ro', isa => Str);
  has GroupName => (is => 'ro', isa => Str);
  has IpPermissions => (is => 'ro', isa => ArrayRef[EC2_IpPermission]);
  has IpPermissionsEgress => (is => 'ro', isa => ArrayRef[EC2_IpPermission]);
  has OwnerId => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has VpcId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GroupId' => {
                              'type' => 'Str'
                            },
               'OwnerId' => {
                              'type' => 'Str'
                            },
               'IpPermissions' => {
                                    'class' => 'Paws::EC2::IpPermission',
                                    'type' => 'ArrayRef[EC2_IpPermission]'
                                  },
               'VpcId' => {
                            'type' => 'Str'
                          },
               'Tags' => {
                           'type' => 'ArrayRef[EC2_Tag]',
                           'class' => 'Paws::EC2::Tag'
                         },
               'GroupName' => {
                                'type' => 'Str'
                              },
               'IpPermissionsEgress' => {
                                          'type' => 'ArrayRef[EC2_IpPermission]',
                                          'class' => 'Paws::EC2::IpPermission'
                                        },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'GroupId' => 'groupId',
                       'OwnerId' => 'ownerId',
                       'IpPermissions' => 'ipPermissions',
                       'VpcId' => 'vpcId',
                       'Tags' => 'tagSet',
                       'GroupName' => 'groupName',
                       'IpPermissionsEgress' => 'ipPermissionsEgress',
                       'Description' => 'groupDescription'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SecurityGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SecurityGroup object:

  $service_obj->Method(Att1 => { Description => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SecurityGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the security group.


=head2 GroupId => Str

  The ID of the security group.


=head2 GroupName => Str

  The name of the security group.


=head2 IpPermissions => ArrayRef[EC2_IpPermission]

  The inbound rules associated with the security group.


=head2 IpPermissionsEgress => ArrayRef[EC2_IpPermission]

  [VPC only] The outbound rules associated with the security group.


=head2 OwnerId => Str

  The AWS account ID of the owner of the security group.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the security group.


=head2 VpcId => Str

  [VPC only] The ID of the VPC for the security group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
