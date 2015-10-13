package Paws::Config::ConfigurationRecorderStatus;
  use Moose;
  has lastErrorCode => (is => 'ro', isa => 'Str');
  has lastErrorMessage => (is => 'ro', isa => 'Str');
  has lastStartTime => (is => 'ro', isa => 'Str');
  has lastStatus => (is => 'ro', isa => 'Str');
  has lastStatusChangeTime => (is => 'ro', isa => 'Str');
  has lastStopTime => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
  has recording => (is => 'ro', isa => 'Bool');
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

  $service_obj->Method(Att1 => { lastErrorCode => $value, ..., recording => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigurationRecorderStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->lastErrorCode

=head1 DESCRIPTION

The current status of the configuration recorder.

=head1 ATTRIBUTES

=head2 lastErrorCode => Str

  The error code indicating that the recording failed.

=head2 lastErrorMessage => Str

  The message indicating that the recording failed due to an error.

=head2 lastStartTime => Str

  The time the recorder was last started.

=head2 lastStatus => Str

  The last (previous) status of the recorder.

=head2 lastStatusChangeTime => Str

  The time when the status was last changed.

=head2 lastStopTime => Str

  The time the recorder was last stopped.

=head2 name => Str

  The name of the configuration recorder.

=head2 recording => Bool

  Specifies whether the recorder is currently recording or not.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

