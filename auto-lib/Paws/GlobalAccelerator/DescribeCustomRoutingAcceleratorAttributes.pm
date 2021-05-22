
package Paws::GlobalAccelerator::DescribeCustomRoutingAcceleratorAttributes;
  use Moose;
  has AcceleratorArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCustomRoutingAcceleratorAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::DescribeCustomRoutingAcceleratorAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::DescribeCustomRoutingAcceleratorAttributes - Arguments for method DescribeCustomRoutingAcceleratorAttributes on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCustomRoutingAcceleratorAttributes on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method DescribeCustomRoutingAcceleratorAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCustomRoutingAcceleratorAttributes.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $DescribeCustomRoutingAcceleratorAttributesResponse =
      $globalaccelerator->DescribeCustomRoutingAcceleratorAttributes(
      AcceleratorArn => 'MyGenericString',

      );

    # Results:
    my $AcceleratorAttributes =
      $DescribeCustomRoutingAcceleratorAttributesResponse
      ->AcceleratorAttributes;

# Returns a L<Paws::GlobalAccelerator::DescribeCustomRoutingAcceleratorAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/DescribeCustomRoutingAcceleratorAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AcceleratorArn => Str

The Amazon Resource Name (ARN) of the custom routing accelerator to
describe the attributes for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCustomRoutingAcceleratorAttributes in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

