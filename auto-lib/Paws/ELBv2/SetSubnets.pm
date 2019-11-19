# Generated from callargs_class.tt

package Paws::ELBv2::SetSubnets;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ELBv2::Types qw/ELBv2_SubnetMapping/;
  has LoadBalancerArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SubnetMappings => (is => 'ro', isa => ArrayRef[ELBv2_SubnetMapping], predicate => 1);
  has Subnets => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SetSubnets');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ELBv2::SetSubnetsOutput');
  class_has _result_key => (isa => Str, is => 'ro', default => 'SetSubnetsResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LoadBalancerArn' => {
                                      'type' => 'Str'
                                    },
               'Subnets' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'SubnetMappings' => {
                                     'type' => 'ArrayRef[ELBv2_SubnetMapping]',
                                     'class' => 'Paws::ELBv2::SubnetMapping'
                                   }
             },
  'IsRequired' => {
                    'LoadBalancerArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SetSubnets - Arguments for method SetSubnets on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetSubnets on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method SetSubnets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetSubnets.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To enable Availability Zones for a load balancer
    # This example enables the Availability Zones for the specified subnets for
    # the specified load balancer.
    my $SetSubnetsOutput = $elasticloadbalancing->SetSubnets(
      'LoadBalancerArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188',
      'Subnets' => [ 'subnet-8360a9e7', 'subnet-b7d581c0' ]
    );

    # Results:
    my $AvailabilityZones = $SetSubnetsOutput->AvailabilityZones;

    # Returns a L<Paws::ELBv2::SetSubnetsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/SetSubnets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerArn => Str

The Amazon Resource Name (ARN) of the load balancer.



=head2 SubnetMappings => ArrayRef[ELBv2_SubnetMapping]

The IDs of the public subnets. You must specify subnets from at least
two Availability Zones. You can specify only one subnet per
Availability Zone. You must specify either subnets or subnet mappings.

You cannot specify Elastic IP addresses for your subnets.



=head2 Subnets => ArrayRef[Str|Undef]

The IDs of the public subnets. You must specify subnets from at least
two Availability Zones. You can specify only one subnet per
Availability Zone. You must specify either subnets or subnet mappings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetSubnets in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

