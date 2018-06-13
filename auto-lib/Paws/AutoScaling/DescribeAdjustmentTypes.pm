
package Paws::AutoScaling::DescribeAdjustmentTypes;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAdjustmentTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::DescribeAdjustmentTypesAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAdjustmentTypesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeAdjustmentTypes - Arguments for method DescribeAdjustmentTypes on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAdjustmentTypes on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DescribeAdjustmentTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAdjustmentTypes.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To describe the Auto Scaling adjustment types
    # This example describes the available adjustment types.
    my $DescribeAdjustmentTypesAnswer = $autoscaling->DescribeAdjustmentTypes();

    # Results:
    my $AdjustmentTypes = $DescribeAdjustmentTypesAnswer->AdjustmentTypes;

    # Returns a L<Paws::AutoScaling::DescribeAdjustmentTypesAnswer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribeAdjustmentTypes>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAdjustmentTypes in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

