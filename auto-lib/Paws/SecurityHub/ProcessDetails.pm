package Paws::SecurityHub::ProcessDetails;
  use Moose;
  has LaunchedAt => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ParentPid => (is => 'ro', isa => 'Int');
  has Path => (is => 'ro', isa => 'Str');
  has Pid => (is => 'ro', isa => 'Int');
  has TerminatedAt => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ProcessDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::ProcessDetails object:

  $service_obj->Method(Att1 => { LaunchedAt => $value, ..., TerminatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::ProcessDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->LaunchedAt

=head1 DESCRIPTION

The details of process-related information about a finding.

=head1 ATTRIBUTES


=head2 LaunchedAt => Str

  The date/time that the process was launched.


=head2 Name => Str

  The name of the process.


=head2 ParentPid => Int

  The parent process ID.


=head2 Path => Str

  The path to the process executable.


=head2 Pid => Int

  The process ID.


=head2 TerminatedAt => Str

  The date/time that the process was terminated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

