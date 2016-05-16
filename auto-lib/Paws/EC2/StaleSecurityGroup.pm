package Paws::EC2::StaleSecurityGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', traits => ['Unwrapped']);
  has GroupId => (is => 'ro', isa => 'Str', xmlname => 'groupId', traits => ['Unwrapped'], required => 1);
  has GroupName => (is => 'ro', isa => 'Str', xmlname => 'groupName', traits => ['Unwrapped']);
  has StaleIpPermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::StaleIpPermission]', xmlname => 'staleIpPermissions', traits => ['Unwrapped']);
  has StaleIpPermissionsEgress => (is => 'ro', isa => 'ArrayRef[Paws::EC2::StaleIpPermission]', xmlname => 'staleIpPermissionsEgress', traits => ['Unwrapped']);
  has VpcId => (is => 'ro', isa => 'Str', xmlname => 'vpcId', traits => ['Unwrapped']);
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


=head2 B<REQUIRED> GroupId => Str

  The ID of the security group.


=head2 GroupName => Str

  The name of the security group.


=head2 StaleIpPermissions => ArrayRef[L<Paws::EC2::StaleIpPermission>]

  Information about the stale inbound rules in the security group.


=head2 StaleIpPermissionsEgress => ArrayRef[L<Paws::EC2::StaleIpPermission>]

  Information about the stale outbound rules in the security group.


=head2 VpcId => Str

  The ID of the VPC for the security group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
