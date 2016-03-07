package Paws::EC2::UserIdGroupPair;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', xmlname => 'groupId', traits => ['Unwrapped']);
  has GroupName => (is => 'ro', isa => 'Str', xmlname => 'groupName', traits => ['Unwrapped']);
  has PeeringStatus => (is => 'ro', isa => 'Str', xmlname => 'peeringStatus', traits => ['Unwrapped']);
  has UserId => (is => 'ro', isa => 'Str', xmlname => 'userId', traits => ['Unwrapped']);
  has VpcId => (is => 'ro', isa => 'Str', xmlname => 'vpcId', traits => ['Unwrapped']);
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', xmlname => 'vpcPeeringConnectionId', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::UserIdGroupPair

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::UserIdGroupPair object:

  $service_obj->Method(Att1 => { GroupId => $value, ..., VpcPeeringConnectionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::UserIdGroupPair object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 GroupId => Str

  The ID of the security group.


=head2 GroupName => Str

  The name of the security group. In a request, use this parameter for a
security group in EC2-Classic or a default VPC only. For a security
group in a nondefault VPC, use C<GroupId>.


=head2 PeeringStatus => Str

  The status of a VPC peering connection, if applicable.


=head2 UserId => Str

  The ID of an AWS account.


=head2 VpcId => Str

  The ID of the VPC for the referenced security group, if applicable.


=head2 VpcPeeringConnectionId => Str

  The ID of the VPC peering connection, if applicable.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
