
package Paws::WorkLink::DescribeDevicePolicyConfiguration;
  use Moose;
  has FleetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDevicePolicyConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeDevicePolicyConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkLink::DescribeDevicePolicyConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DescribeDevicePolicyConfiguration - Arguments for method DescribeDevicePolicyConfiguration on L<Paws::WorkLink>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDevicePolicyConfiguration on the
L<Amazon WorkLink|Paws::WorkLink> service. Use the attributes of this class
as arguments to method DescribeDevicePolicyConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDevicePolicyConfiguration.

=head1 SYNOPSIS

    my $worklink = Paws->service('WorkLink');
    my $DescribeDevicePolicyConfigurationResponse =
      $worklink->DescribeDevicePolicyConfiguration(
      FleetArn => 'MyFleetArn',

      );

    # Results:
    my $DeviceCaCertificate =
      $DescribeDevicePolicyConfigurationResponse->DeviceCaCertificate;

# Returns a L<Paws::WorkLink::DescribeDevicePolicyConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/worklink/DescribeDevicePolicyConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetArn => Str

The ARN of the fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDevicePolicyConfiguration in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

