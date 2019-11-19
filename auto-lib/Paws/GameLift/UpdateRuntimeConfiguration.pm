# Generated from json/callargs_class.tt

package Paws::GameLift::UpdateRuntimeConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_RuntimeConfiguration/;
  has FleetId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RuntimeConfiguration => (is => 'ro', isa => GameLift_RuntimeConfiguration, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateRuntimeConfiguration');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GameLift::UpdateRuntimeConfigurationOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RuntimeConfiguration' => {
                                           'type' => 'GameLift_RuntimeConfiguration',
                                           'class' => 'Paws::GameLift::RuntimeConfiguration'
                                         },
               'FleetId' => {
                              'type' => 'Str'
                            }
             },
  'IsRequired' => {
                    'FleetId' => 1,
                    'RuntimeConfiguration' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateRuntimeConfiguration - Arguments for method UpdateRuntimeConfiguration on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRuntimeConfiguration on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method UpdateRuntimeConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRuntimeConfiguration.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $UpdateRuntimeConfigurationOutput =
      $gamelift->UpdateRuntimeConfiguration(
      FleetId              => 'MyFleetId',
      RuntimeConfiguration => {
        GameSessionActivationTimeoutSeconds => 1,   # min: 1, max: 600; OPTIONAL
        MaxConcurrentGameSessionActivations =>
          1,    # min: 1, max: 2147483647; OPTIONAL
        ServerProcesses => [
          {
            ConcurrentExecutions => 1,                       # min: 1
            LaunchPath           => 'MyNonZeroAndMaxString', # min: 1, max: 1024
            Parameters           => 'MyNonZeroAndMaxString', # min: 1, max: 1024
          },
          ...
        ],    # min: 1, max: 50; OPTIONAL
      },

      );

    # Results:
    my $RuntimeConfiguration =
      $UpdateRuntimeConfigurationOutput->RuntimeConfiguration;

    # Returns a L<Paws::GameLift::UpdateRuntimeConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/UpdateRuntimeConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

Unique identifier for a fleet to update run-time configuration for.



=head2 B<REQUIRED> RuntimeConfiguration => GameLift_RuntimeConfiguration

Instructions for launching server processes on each instance in the
fleet. Server processes run either a custom game build executable or a
Realtime Servers script. The run-time configuration lists the types of
server processes to run on an instance and includes the following
configuration settings: the server executable or launch script file,
launch parameters, and the number of processes to run concurrently on
each instance. A CreateFleet request must include a run-time
configuration with at least one server process configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRuntimeConfiguration in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

