# Generated by default/object.tt
package Paws::CodeBuild::DebugSession;
  use Moose;
  has SessionEnabled => (is => 'ro', isa => 'Bool', request_name => 'sessionEnabled', traits => ['NameInRequest']);
  has SessionTarget => (is => 'ro', isa => 'Str', request_name => 'sessionTarget', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::DebugSession

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::DebugSession object:

  $service_obj->Method(Att1 => { SessionEnabled => $value, ..., SessionTarget => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::DebugSession object:

  $result = $service_obj->Method(...);
  $result->Att1->SessionEnabled

=head1 DESCRIPTION

Contains information about the debug session for a build. For more
information, see Viewing a running build in Session Manager
(https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html).

=head1 ATTRIBUTES


=head2 SessionEnabled => Bool

Specifies if session debugging is enabled for this build.


=head2 SessionTarget => Str

Contains the identifier of the Session Manager session used for the
build. To work with the paused build, you open this session to examine,
control, and resume the build.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

