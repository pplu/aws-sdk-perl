
package Paws::GlobalAccelerator::DescribeEndpointGroup;
  use Moose;
  has EndpointGroupArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEndpointGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::DescribeEndpointGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::DescribeEndpointGroup - Arguments for method DescribeEndpointGroup on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEndpointGroup on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method DescribeEndpointGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEndpointGroup.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $DescribeEndpointGroupResponse =
      $globalaccelerator->DescribeEndpointGroup(
      EndpointGroupArn => 'MyGenericString',

      );

    # Results:
    my $EndpointGroup = $DescribeEndpointGroupResponse->EndpointGroup;

   # Returns a L<Paws::GlobalAccelerator::DescribeEndpointGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/DescribeEndpointGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointGroupArn => Str

The Amazon Resource Name (ARN) of the endpoint group to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEndpointGroup in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

