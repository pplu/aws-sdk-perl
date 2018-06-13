
package Paws::GameLift::DescribeRuntimeConfiguration;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRuntimeConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeRuntimeConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeRuntimeConfiguration - Arguments for method DescribeRuntimeConfiguration on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRuntimeConfiguration on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeRuntimeConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRuntimeConfiguration.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeRuntimeConfigurationOutput =
      $gamelift->DescribeRuntimeConfiguration(
      FleetId => 'MyFleetId',

      );

    # Results:
    my $RuntimeConfiguration =
      $DescribeRuntimeConfigurationOutput->RuntimeConfiguration;

    # Returns a L<Paws::GameLift::DescribeRuntimeConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeRuntimeConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

Unique identifier for a fleet to get the run-time configuration for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRuntimeConfiguration in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

