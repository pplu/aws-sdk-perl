# Generated from default/object.tt
package Paws::Robomaker::SimulationApplicationSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Robomaker::Types qw/Robomaker_SimulationSoftwareSuite Robomaker_RobotSoftwareSuite/;
  has Arn => (is => 'ro', isa => Str);
  has LastUpdatedAt => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has RobotSoftwareSuite => (is => 'ro', isa => Robomaker_RobotSoftwareSuite);
  has SimulationSoftwareSuite => (is => 'ro', isa => Robomaker_SimulationSoftwareSuite);
  has Version => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RobotSoftwareSuite' => {
                                         'class' => 'Paws::Robomaker::RobotSoftwareSuite',
                                         'type' => 'Robomaker_RobotSoftwareSuite'
                                       },
               'Version' => {
                              'type' => 'Str'
                            },
               'LastUpdatedAt' => {
                                    'type' => 'Str'
                                  },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'SimulationSoftwareSuite' => {
                                              'class' => 'Paws::Robomaker::SimulationSoftwareSuite',
                                              'type' => 'Robomaker_SimulationSoftwareSuite'
                                            }
             },
  'NameInRequest' => {
                       'RobotSoftwareSuite' => 'robotSoftwareSuite',
                       'Version' => 'version',
                       'LastUpdatedAt' => 'lastUpdatedAt',
                       'Arn' => 'arn',
                       'Name' => 'name',
                       'SimulationSoftwareSuite' => 'simulationSoftwareSuite'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::SimulationApplicationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::SimulationApplicationSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::SimulationApplicationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Summary information for a simulation application.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the simulation application.


=head2 LastUpdatedAt => Str

  The time, in milliseconds since the epoch, when the simulation
application was last updated.


=head2 Name => Str

  The name of the simulation application.


=head2 RobotSoftwareSuite => Robomaker_RobotSoftwareSuite

  Information about a robot software suite.


=head2 SimulationSoftwareSuite => Robomaker_SimulationSoftwareSuite

  Information about a simulation software suite.


=head2 Version => Str

  The version of the simulation application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

