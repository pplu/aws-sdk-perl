
package Paws::GameLift::DeleteScalingPolicy;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteScalingPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DeleteScalingPolicy - Arguments for method DeleteScalingPolicy on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteScalingPolicy on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DeleteScalingPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteScalingPolicy.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    $gamelift->DeleteScalingPolicy(
      FleetId => 'MyFleetId',
      Name    => 'MyNonZeroAndMaxString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DeleteScalingPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

Unique identifier for a fleet to be deleted.



=head2 B<REQUIRED> Name => Str

Descriptive label that is associated with a scaling policy. Policy
names do not need to be unique.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteScalingPolicy in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

