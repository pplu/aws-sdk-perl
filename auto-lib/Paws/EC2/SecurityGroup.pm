package Paws::EC2::SecurityGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'groupDescription', traits => ['NameInRequest']);
  has GroupId => (is => 'ro', isa => 'Str', request_name => 'groupId', traits => ['NameInRequest']);
  has GroupName => (is => 'ro', isa => 'Str', request_name => 'groupName', traits => ['NameInRequest']);
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpPermission]', request_name => 'ipPermissions', traits => ['NameInRequest']);
  has IpPermissionsEgress => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpPermission]', request_name => 'ipPermissionsEgress', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
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


=head2 IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]

  One or more inbound rules associated with the security group.


=head2 IpPermissionsEgress => ArrayRef[L<Paws::EC2::IpPermission>]

  [EC2-VPC] One or more outbound rules associated with the security
group.


=head2 OwnerId => Str

  The AWS account ID of the owner of the security group.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the security group.


=head2 VpcId => Str

  [EC2-VPC] The ID of the VPC for the security group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
