
package Paws::AppRunner::DescribeAutoScalingConfiguration;
  use Moose;
  has AutoScalingConfigurationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::DescribeAutoScalingConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::DescribeAutoScalingConfiguration - Arguments for method DescribeAutoScalingConfiguration on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAutoScalingConfiguration on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method DescribeAutoScalingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAutoScalingConfiguration.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $DescribeAutoScalingConfigurationResponse =
      $apprunner->DescribeAutoScalingConfiguration(
      AutoScalingConfigurationArn => 'MyAppRunnerResourceArn',

      );

    # Results:
    my $AutoScalingConfiguration =
      $DescribeAutoScalingConfigurationResponse->AutoScalingConfiguration;

# Returns a L<Paws::AppRunner::DescribeAutoScalingConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/DescribeAutoScalingConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingConfigurationArn => Str

The Amazon Resource Name (ARN) of the App Runner auto scaling
configuration that you want a description for.

The ARN can be a full auto scaling configuration ARN, or a partial ARN
ending with either C<.../I<name> > or C<.../I<name>/I<revision> >. If a
revision isn't specified, the latest active revision is described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAutoScalingConfiguration in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

