
package Paws::CodeStar::UpdateTeamMember;
  use Moose;
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId' , required => 1);
  has ProjectRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectRole' );
  has RemoteAccessAllowed => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'remoteAccessAllowed' );
  has UserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTeamMember');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStar::UpdateTeamMemberResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::UpdateTeamMember - Arguments for method UpdateTeamMember on L<Paws::CodeStar>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTeamMember on the 
AWS CodeStar service. Use the attributes of this class
as arguments to method UpdateTeamMember.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTeamMember.

As an example:

  $service_obj->UpdateTeamMember(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectId => Str

The ID of the project.



=head2 ProjectRole => Str

The role assigned to the user in the project. Project roles have
different levels of access. For more information, see Working with
Teams
(http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html)
in the I<AWS CodeStar User Guide>.



=head2 RemoteAccessAllowed => Bool

Whether a team member is allowed to remotely access project resources
using the SSH public key associated with the user's profile. Even if
this is set to True, the user must associate a public key with their
profile before the user can access resources.



=head2 B<REQUIRED> UserArn => Str

The Amazon Resource Name (ARN) of the user for whom you want to change
team membership attributes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTeamMember in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

