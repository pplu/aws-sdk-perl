package Paws::WorkSpaces::FailedWorkspaceChangeRequest;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has WorkspaceId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::FailedWorkspaceChangeRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::FailedWorkspaceChangeRequest object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., WorkspaceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::FailedWorkspaceChangeRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Describes a WorkSpace that could not be rebooted. (RebootWorkspaces),
rebuilt (RebuildWorkspaces), terminated (TerminateWorkspaces), started
(StartWorkspaces), or stopped (StopWorkspaces).

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code that is returned if the WorkSpace cannot be rebooted.


=head2 ErrorMessage => Str

  The text of the error message that is returned if the WorkSpace cannot
be rebooted.


=head2 WorkspaceId => Str

  The identifier of the WorkSpace.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

