package Paws::Robomaker::SimulationJobRequest;
  use Moose;
  has DataSources => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::DataSourceConfig]', request_name => 'dataSources', traits => ['NameInRequest']);
  has FailureBehavior => (is => 'ro', isa => 'Str', request_name => 'failureBehavior', traits => ['NameInRequest']);
  has IamRole => (is => 'ro', isa => 'Str', request_name => 'iamRole', traits => ['NameInRequest']);
  has LoggingConfig => (is => 'ro', isa => 'Paws::Robomaker::LoggingConfig', request_name => 'loggingConfig', traits => ['NameInRequest']);
  has MaxJobDurationInSeconds => (is => 'ro', isa => 'Int', request_name => 'maxJobDurationInSeconds', traits => ['NameInRequest'], required => 1);
  has OutputLocation => (is => 'ro', isa => 'Paws::Robomaker::OutputLocation', request_name => 'outputLocation', traits => ['NameInRequest']);
  has RobotApplications => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::RobotApplicationConfig]', request_name => 'robotApplications', traits => ['NameInRequest']);
  has SimulationApplications => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::SimulationApplicationConfig]', request_name => 'simulationApplications', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', request_name => 'tags', traits => ['NameInRequest']);
  has UseDefaultApplications => (is => 'ro', isa => 'Bool', request_name => 'useDefaultApplications', traits => ['NameInRequest']);
  has VpcConfig => (is => 'ro', isa => 'Paws::Robomaker::VPCConfig', request_name => 'vpcConfig', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::SimulationJobRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::SimulationJobRequest object:

  $service_obj->Method(Att1 => { DataSources => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::SimulationJobRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->DataSources

=head1 DESCRIPTION

Information about a simulation job request.

=head1 ATTRIBUTES


=head2 DataSources => ArrayRef[L<Paws::Robomaker::DataSourceConfig>]

  Specify data sources to mount read-only files from S3 into your
simulation. These files are available under
C</opt/robomaker/datasources/data_source_name>.

There is a limit of 100 files and a combined size of 25GB for all
C<DataSourceConfig> objects.


=head2 FailureBehavior => Str

  The failure behavior the simulation job.

=over

=item Continue

Restart the simulation job in the same host instance.

=item Fail

Stop the simulation job and terminate the instance.

=back



=head2 IamRole => Str

  The IAM role name that allows the simulation instance to call the AWS
APIs that are specified in its associated policies on your behalf. This
is how credentials are passed in to your simulation job.


=head2 LoggingConfig => L<Paws::Robomaker::LoggingConfig>

  


=head2 B<REQUIRED> MaxJobDurationInSeconds => Int

  The maximum simulation job duration in seconds. The value must be 8
days (691,200 seconds) or less.


=head2 OutputLocation => L<Paws::Robomaker::OutputLocation>

  


=head2 RobotApplications => ArrayRef[L<Paws::Robomaker::RobotApplicationConfig>]

  The robot applications to use in the simulation job.


=head2 SimulationApplications => ArrayRef[L<Paws::Robomaker::SimulationApplicationConfig>]

  The simulation applications to use in the simulation job.


=head2 Tags => L<Paws::Robomaker::TagMap>

  A map that contains tag keys and tag values that are attached to the
simulation job request.


=head2 UseDefaultApplications => Bool

  Boolean indicating whether to use default simulation tool applications.


=head2 VpcConfig => L<Paws::Robomaker::VPCConfig>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

