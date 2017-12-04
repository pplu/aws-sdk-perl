package Paws::ELBv2::LoadBalancerAddress;
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str');
  has IpAddress => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::LoadBalancerAddress

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::LoadBalancerAddress object:

  $service_obj->Method(Att1 => { AllocationId => $value, ..., IpAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::LoadBalancerAddress object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationId

=head1 DESCRIPTION

Information about a static IP address for a load balancer.

=head1 ATTRIBUTES


=head2 AllocationId => Str

  [Network Load Balancers] The allocation ID of the Elastic IP address.


=head2 IpAddress => Str

  The static IP address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

