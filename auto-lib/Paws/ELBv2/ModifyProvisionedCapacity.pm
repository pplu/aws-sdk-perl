
package Paws::ELBv2::ModifyProvisionedCapacity;
  use Moose;
  has LoadBalancerArn => (is => 'ro', isa => 'Str', required => 1);
  has MinimumLBCapacityUnits => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyProvisionedCapacity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::ModifyProvisionedCapacityOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyProvisionedCapacityResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyProvisionedCapacity - Arguments for method ModifyProvisionedCapacity on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyProvisionedCapacity on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method ModifyProvisionedCapacity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyProvisionedCapacity.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    my $ModifyProvisionedCapacityOutput =
      $elasticloadbalancing->ModifyProvisionedCapacity(
      LoadBalancerArn        => 'MyLoadBalancerArn',
      MinimumLBCapacityUnits => 1,

      );

    # Results:
    my $ProvisionedCapacity =
      $ModifyProvisionedCapacityOutput->ProvisionedCapacity;

    # Returns a L<Paws::ELBv2::ModifyProvisionedCapacityOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/ModifyProvisionedCapacity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerArn => Str





=head2 B<REQUIRED> MinimumLBCapacityUnits => Int






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyProvisionedCapacity in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

