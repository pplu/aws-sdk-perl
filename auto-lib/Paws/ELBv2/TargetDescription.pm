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

  The Availability Zone where the IP address is to be registered. Specify
C<all> to register an IP address outside the target group VPC with all
Availability Zones that are enabled for the load balancer.

If the IP address is in a subnet of the VPC for the target group, the
Availability Zone is automatically detected and this parameter is
optional.

This parameter is not supported if the target type of the target group
is C<instance>.


=head2 B<REQUIRED> Id => Str

  The ID of the target. If the target type of the target group is
C<instance>, specify an instance ID. If the target type is C<ip>,
specify an IP address.


=head2 Port => Int

  The port on which the target is listening.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

