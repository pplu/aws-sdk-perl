package Paws::CodeStar::TeamMember;
  use Moose;
  has ProjectRole => (is => 'ro', isa => 'Str', request_name => 'projectRole', traits => ['NameInRequest'], required => 1);
  has RemoteAccessAllowed => (is => 'ro', isa => 'Bool', request_name => 'remoteAccessAllowed', traits => ['NameInRequest']);
  has UserArn => (is => 'ro', isa => 'Str', request_name => 'userArn', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::TeamMember

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStar::TeamMember object:

  $service_obj->Method(Att1 => { ProjectRole => $value, ..., UserArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStar::TeamMember object:

  $result = $service_obj->Method(...);
  $result->Att1->ProjectRole

=head1 DESCRIPTION

Information about a team member in a project.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectRole => Str

  The role assigned to the user in the project. Project roles have
different levels of access. For more information, see Working with
Teams
(http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html)
in the I<AWS CodeStar User Guide>.


=head2 RemoteAccessAllowed => Bool

  Whether the user is allowed to remotely access project resources using
an SSH public/private key pair.


=head2 B<REQUIRED> UserArn => Str

  The Amazon Resource Name (ARN) of the user in IAM.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

