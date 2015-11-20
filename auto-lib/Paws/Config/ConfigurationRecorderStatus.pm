package Paws::Config::ConfigurationRecorderStatus;
  use Moose;
  has LastErrorCode => (is => 'ro', isa => 'Str', xmlname => 'lastErrorCode', request_name => 'lastErrorCode', traits => ['Unwrapped','NameInRequest']);
  has LastErrorMessage => (is => 'ro', isa => 'Str', xmlname => 'lastErrorMessage', request_name => 'lastErrorMessage', traits => ['Unwrapped','NameInRequest']);
  has LastStartTime => (is => 'ro', isa => 'Str', xmlname => 'lastStartTime', request_name => 'lastStartTime', traits => ['Unwrapped','NameInRequest']);
  has LastStatus => (is => 'ro', isa => 'Str', xmlname => 'lastStatus', request_name => 'lastStatus', traits => ['Unwrapped','NameInRequest']);
  has LastStatusChangeTime => (is => 'ro', isa => 'Str', xmlname => 'lastStatusChangeTime', request_name => 'lastStatusChangeTime', traits => ['Unwrapped','NameInRequest']);
  has LastStopTime => (is => 'ro', isa => 'Str', xmlname => 'lastStopTime', request_name => 'lastStopTime', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has Recording => (is => 'ro', isa => 'Bool', xmlname => 'recording', request_name => 'recording', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConfigurationRecorderStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConfigurationRecorderStatus object:

  $service_obj->Method(Att1 => { LastErrorCode => $value, ..., Recording => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigurationRecorderStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->LastErrorCode

=head1 DESCRIPTION

The current status of the configuration recorder.

=head1 ATTRIBUTES


=head2 LastErrorCode => Str

  The error code indicating that the recording failed.


=head2 LastErrorMessage => Str

  The message indicating that the recording failed due to an error.


=head2 LastStartTime => Str

  The time the recorder was last started.


=head2 LastStatus => Str

  The last (previous) status of the recorder.


=head2 LastStatusChangeTime => Str

  The time when the status was last changed.


=head2 LastStopTime => Str

  The time the recorder was last stopped.


=head2 Name => Str

  The name of the configuration recorder.


=head2 Recording => Bool

  Specifies whether the recorder is currently recording or not.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

