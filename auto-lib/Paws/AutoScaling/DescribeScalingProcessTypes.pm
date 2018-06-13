
package Paws::AutoScaling::DescribeScalingProcessTypes;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingProcessTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::ProcessesType');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScalingProcessTypesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeScalingProcessTypes - Arguments for method DescribeScalingProcessTypes on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScalingProcessTypes on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DescribeScalingProcessTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScalingProcessTypes.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To describe the Auto Scaling process types
    # This example describes the Auto Scaling process types.
    my $ProcessesType = $autoscaling->DescribeScalingProcessTypes();

    # Results:
    my $Processes = $ProcessesType->Processes;

    # Returns a L<Paws::AutoScaling::ProcessesType> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribeScalingProcessTypes>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScalingProcessTypes in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

