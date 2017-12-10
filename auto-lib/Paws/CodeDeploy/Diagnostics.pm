package Paws::CodeDeploy::Diagnostics;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str', request_name => 'errorCode', traits => ['NameInRequest']);
  has LogTail => (is => 'ro', isa => 'Str', request_name => 'logTail', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
  has ScriptName => (is => 'ro', isa => 'Str', request_name => 'scriptName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::Diagnostics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::Diagnostics object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., ScriptName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::Diagnostics object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Diagnostic information about executable scripts that are part of a
deployment.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The associated error code:

=over

=item *

Success: The specified script ran.

=item *

ScriptMissing: The specified script was not found in the specified
location.

=item *

ScriptNotExecutable: The specified script is not a recognized
executable file type.

=item *

ScriptTimedOut: The specified script did not finish running in the
specified time period.

=item *

ScriptFailed: The specified script failed to run as expected.

=item *

UnknownError: The specified script did not run for an unknown reason.

=back



=head2 LogTail => Str

  The last portion of the diagnostic log.

If available, AWS CodeDeploy returns up to the last 4 KB of the
diagnostic log.


=head2 Message => Str

  The message associated with the error.


=head2 ScriptName => Str

  The name of the script.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

