package Paws::CodeDeploy::Diagnostics;
  use Moose;
  has errorCode => (is => 'ro', isa => 'Str');
  has logTail => (is => 'ro', isa => 'Str');
  has message => (is => 'ro', isa => 'Str');
  has scriptName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::Diagnostics

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::Diagnostics object:

  $service_obj->Method(Att1 => { errorCode => $value, ..., scriptName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::Diagnostics object:

  $result = $service_obj->Method(...);
  $result->Att1->errorCode

=head1 ATTRIBUTES

=head2 errorCode => Str

  

The associated error code:

=over

=item * Success: The specified script ran.

=item * ScriptMissing: The specified script was not found in the
specified location.

=item * ScriptNotExecutable: The specified script is not a recognized
executable file type.

=item * ScriptTimedOut: The specified script did not finish running in
the specified time period.

=item * ScriptFailed: The specified script failed to run as expected.

=item * UnknownError: The specified script did not run for an unknown
reason.

=back










=head2 logTail => Str

  

The last portion of the associated diagnostic log.










=head2 message => Str

  

The message associated with the error.










=head2 scriptName => Str

  

The name of the script.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

