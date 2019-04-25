package Paws::GlobalAccelerator::EndpointConfiguration;
  use Moose;
  has EndpointId => (is => 'ro', isa => 'Str');
  has Weight => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::EndpointConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GlobalAccelerator::EndpointConfiguration object:

  $service_obj->Method(Att1 => { EndpointId => $value, ..., Weight => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GlobalAccelerator::EndpointConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->EndpointId

=head1 DESCRIPTION

A complex type for endpoints.

=head1 ATTRIBUTES


=head2 EndpointId => Str

  An ID for the endpoint. If the endpoint is a Network Load Balancer or
Application Load Balancer, this is the Amazon Resource Name (ARN) of
the resource. If the endpoint is an Elastic IP address, this is the
Elastic IP address allocation ID.


=head2 Weight => Int

  The weight associated with the endpoint. When you add weights to
endpoints, you configure AWS Global Accelerator to route traffic based
on proportions that you specify. For example, you might specify
endpoint weights of 4, 5, 5, and 6 (sum=20). The result is that 4/20 of
your traffic, on average, is routed to the first endpoint, 5/20 is
routed both to the second and third endpoints, and 6/20 is routed to
the last endpoint. For more information, see Endpoint Weights
(https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints-endpoint-weights.html)
in the I<AWS Global Accelerator Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

