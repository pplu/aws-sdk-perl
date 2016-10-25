
package Paws::ELBv2::SetSubnets;
  use Moose;
  has LoadBalancerArn => (is => 'ro', isa => 'Str', required => 1);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetSubnets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::SetSubnetsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetSubnetsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SetSubnets - Arguments for method SetSubnets on Paws::ELBv2

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetSubnets on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method SetSubnets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetSubnets.

As an example:

  $service_obj->SetSubnets(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerArn => Str

The Amazon Resource Name (ARN) of the load balancer.



=head2 B<REQUIRED> Subnets => ArrayRef[Str|Undef]

The IDs of the subnets. You must specify at least two subnets. You can
add only one subnet per Availability Zone.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetSubnets in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

