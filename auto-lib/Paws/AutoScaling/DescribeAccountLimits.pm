
package Paws::AutoScaling::DescribeAccountLimits;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountLimits');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::DescribeAccountLimitsAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAccountLimitsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeAccountLimits - Arguments for method DescribeAccountLimits on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccountLimits on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DescribeAccountLimits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccountLimits.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To describe your Auto Scaling account limits
    # This example describes the Auto Scaling limits for your AWS account.
    my $DescribeAccountLimitsAnswer = $autoscaling->DescribeAccountLimits();

    # Results:
    my $MaxNumberOfAutoScalingGroups =
      $DescribeAccountLimitsAnswer->MaxNumberOfAutoScalingGroups;
    my $MaxNumberOfLaunchConfigurations =
      $DescribeAccountLimitsAnswer->MaxNumberOfLaunchConfigurations;
    my $NumberOfAutoScalingGroups =
      $DescribeAccountLimitsAnswer->NumberOfAutoScalingGroups;
    my $NumberOfLaunchConfigurations =
      $DescribeAccountLimitsAnswer->NumberOfLaunchConfigurations;

    # Returns a L<Paws::AutoScaling::DescribeAccountLimitsAnswer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribeAccountLimits>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccountLimits in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

