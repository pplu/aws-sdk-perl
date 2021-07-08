
package Paws::GameLift::UpdateFleetCapacity;
  use Moose;
  has DesiredInstances => (is => 'ro', isa => 'Int');
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has Location => (is => 'ro', isa => 'Str');
  has MaxSize => (is => 'ro', isa => 'Int');
  has MinSize => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFleetCapacity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::UpdateFleetCapacityOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateFleetCapacity - Arguments for method UpdateFleetCapacity on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFleetCapacity on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method UpdateFleetCapacity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFleetCapacity.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $UpdateFleetCapacityOutput = $gamelift->UpdateFleetCapacity(
      FleetId          => 'MyFleetIdOrArn',
      DesiredInstances => 1,                          # OPTIONAL
      Location         => 'MyLocationStringModel',    # OPTIONAL
      MaxSize          => 1,                          # OPTIONAL
      MinSize          => 1,                          # OPTIONAL
    );

    # Results:
    my $FleetArn = $UpdateFleetCapacityOutput->FleetArn;
    my $FleetId  = $UpdateFleetCapacityOutput->FleetId;
    my $Location = $UpdateFleetCapacityOutput->Location;

    # Returns a L<Paws::GameLift::UpdateFleetCapacityOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/UpdateFleetCapacity>

=head1 ATTRIBUTES


=head2 DesiredInstances => Int

The number of EC2 instances you want to maintain in the specified fleet
location. This value must fall between the minimum and maximum size
limits.



=head2 B<REQUIRED> FleetId => Str

A unique identifier for the fleet to update capacity settings for. You
can use either the fleet ID or ARN value.



=head2 Location => Str

The name of a remote location to update fleet capacity settings for, in
the form of an AWS Region code such as C<us-west-2>.



=head2 MaxSize => Int

The maximum number of instances that are allowed in the specified fleet
location. If this parameter is not set, the default is 1.



=head2 MinSize => Int

The minimum number of instances that are allowed in the specified fleet
location. If this parameter is not set, the default is 0.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFleetCapacity in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

