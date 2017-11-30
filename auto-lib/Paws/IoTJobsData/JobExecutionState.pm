package Paws::IoTJobsData::JobExecutionState;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusDetails => (is => 'ro', isa => 'Paws::IoTJobsData::DetailsMap', request_name => 'statusDetails', traits => ['NameInRequest']);
  has VersionNumber => (is => 'ro', isa => 'Int', request_name => 'versionNumber', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::JobExecutionState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTJobsData::JobExecutionState object:

  $service_obj->Method(Att1 => { Status => $value, ..., VersionNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTJobsData::JobExecutionState object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

Contains data about the state of a job execution.

=head1 ATTRIBUTES


=head2 Status => Str

  The status of the job execution. Can be one of: "QUEUED",
"IN_PROGRESS", "FAILED", "SUCCESS", "CANCELED", "REJECTED", or
"REMOVED".


=head2 StatusDetails => L<Paws::IoTJobsData::DetailsMap>

  A collection of name/value pairs that describe the status of the job
execution.


=head2 VersionNumber => Int

  The version of the job execution. Job execution versions are
incremented each time they are updated by a device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTJobsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

