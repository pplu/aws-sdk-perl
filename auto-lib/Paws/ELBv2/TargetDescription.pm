package Paws::ELBv2::TargetDescription;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Port => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::TargetDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::TargetDescription object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Port => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::TargetDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

Information about a target.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  An Availability Zone or C<all>. This determines whether the target
receives traffic from the load balancer nodes in the specified
Availability Zone or from all enabled Availability Zones for the load
balancer.

This parameter is not supported if the target type of the target group
is C<instance>.

If the target type is C<ip> and the IP address is in a subnet of the
VPC for the target group, the Availability Zone is automatically
detected and this parameter is optional. If the IP address is outside
the VPC, this parameter is required.

With an Application Load Balancer, if the target type is C<ip> and the
IP address is outside the VPC for the target group, the only supported
value is C<all>.

If the target type is C<lambda>, this parameter is optional and the
only supported value is C<all>.


=head2 B<REQUIRED> Id => Str

  The ID of the target. If the target type of the target group is
C<instance>, specify an instance ID. If the target type is C<ip>,
specify an IP address. If the target type is C<lambda>, specify the ARN
of the Lambda function.


=head2 Port => Int

  The port on which the target is listening.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

