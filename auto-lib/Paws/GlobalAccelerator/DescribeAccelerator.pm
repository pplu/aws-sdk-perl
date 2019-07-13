
package Paws::GlobalAccelerator::DescribeAccelerator;
  use Moose;
  has AcceleratorArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccelerator');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::DescribeAcceleratorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::DescribeAccelerator - Arguments for method DescribeAccelerator on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccelerator on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method DescribeAccelerator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccelerator.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $DescribeAcceleratorResponse = $globalaccelerator->DescribeAccelerator(
      AcceleratorArn => 'MyGenericString',

    );

    # Results:
    my $Accelerator = $DescribeAcceleratorResponse->Accelerator;

    # Returns a L<Paws::GlobalAccelerator::DescribeAcceleratorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/DescribeAccelerator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AcceleratorArn => Str

The Amazon Resource Name (ARN) of the accelerator to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccelerator in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

