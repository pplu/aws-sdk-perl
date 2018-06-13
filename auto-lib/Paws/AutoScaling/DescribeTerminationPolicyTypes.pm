
package Paws::AutoScaling::DescribeTerminationPolicyTypes;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTerminationPolicyTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::DescribeTerminationPolicyTypesAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTerminationPolicyTypesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeTerminationPolicyTypes - Arguments for method DescribeTerminationPolicyTypes on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTerminationPolicyTypes on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DescribeTerminationPolicyTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTerminationPolicyTypes.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To describe termination policy types
    # This example describes the available termination policy types.
    my $DescribeTerminationPolicyTypesAnswer =
      $autoscaling->DescribeTerminationPolicyTypes();

    # Results:
    my $TerminationPolicyTypes =
      $DescribeTerminationPolicyTypesAnswer->TerminationPolicyTypes;

  # Returns a L<Paws::AutoScaling::DescribeTerminationPolicyTypesAnswer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribeTerminationPolicyTypes>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTerminationPolicyTypes in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

