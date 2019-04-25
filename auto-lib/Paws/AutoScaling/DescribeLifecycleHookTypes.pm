
package Paws::AutoScaling::DescribeLifecycleHookTypes;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLifecycleHookTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::DescribeLifecycleHookTypesAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLifecycleHookTypesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeLifecycleHookTypes - Arguments for method DescribeLifecycleHookTypes on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLifecycleHookTypes on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DescribeLifecycleHookTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLifecycleHookTypes.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To describe the available types of lifecycle hooks
    # This example describes the available lifecycle hook types.
    my $DescribeLifecycleHookTypesAnswer =
      $autoscaling->DescribeLifecycleHookTypes();

    # Results:
    my $LifecycleHookTypes =
      $DescribeLifecycleHookTypesAnswer->LifecycleHookTypes;

    # Returns a L<Paws::AutoScaling::DescribeLifecycleHookTypesAnswer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribeLifecycleHookTypes>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLifecycleHookTypes in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

