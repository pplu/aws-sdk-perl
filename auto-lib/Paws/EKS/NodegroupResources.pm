package Paws::EKS::NodegroupResources;
  use Moose;
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Paws::EKS::AutoScalingGroup]', request_name => 'autoScalingGroups', traits => ['NameInRequest']);
  has RemoteAccessSecurityGroup => (is => 'ro', isa => 'Str', request_name => 'remoteAccessSecurityGroup', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::NodegroupResources

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::NodegroupResources object:

  $service_obj->Method(Att1 => { AutoScalingGroups => $value, ..., RemoteAccessSecurityGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::NodegroupResources object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingGroups

=head1 DESCRIPTION

An object representing the resources associated with the node group,
such as Auto Scaling groups and security groups for remote access.

=head1 ATTRIBUTES


=head2 AutoScalingGroups => ArrayRef[L<Paws::EKS::AutoScalingGroup>]

  The Auto Scaling groups associated with the node group.


=head2 RemoteAccessSecurityGroup => Str

  The remote access security group associated with the node group. This
security group controls SSH access to the worker nodes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

