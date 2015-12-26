
package Paws::DeviceFarm::ScheduleRun;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn' );
  has Configuration => (is => 'ro', isa => 'Paws::DeviceFarm::ScheduleRunConfiguration', traits => ['NameInRequest'], request_name => 'configuration' );
  has DevicePoolArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'devicePoolArn' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' , required => 1);
  has Test => (is => 'ro', isa => 'Paws::DeviceFarm::ScheduleRunTest', traits => ['NameInRequest'], request_name => 'test' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ScheduleRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::ScheduleRunResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ScheduleRun - Arguments for method ScheduleRun on Paws::DeviceFarm

=head1 DESCRIPTION

This class represents the parameters used for calling the method ScheduleRun on the 
AWS Device Farm service. Use the attributes of this class
as arguments to method ScheduleRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ScheduleRun.

As an example:

  $service_obj->ScheduleRun(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AppArn => Str

The ARN of the app to schedule a run.



=head2 Configuration => L<Paws::DeviceFarm::ScheduleRunConfiguration>

Information about the settings for the run to be scheduled.



=head2 B<REQUIRED> DevicePoolArn => Str

The ARN of the device pool for the run to be scheduled.



=head2 Name => Str

The name for the run to be scheduled.



=head2 B<REQUIRED> ProjectArn => Str

The ARN of the project for the run to be scheduled.



=head2 B<REQUIRED> Test => L<Paws::DeviceFarm::ScheduleRunTest>

Information about the test for the run to be scheduled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ScheduleRun in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

