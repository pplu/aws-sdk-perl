
package Paws::CodeStar::DisassociateTeamMember;
  use Moose;
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId' , required => 1);
  has UserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateTeamMember');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStar::DisassociateTeamMemberResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::DisassociateTeamMember - Arguments for method DisassociateTeamMember on L<Paws::CodeStar>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateTeamMember on the
L<AWS CodeStar|Paws::CodeStar> service. Use the attributes of this class
as arguments to method DisassociateTeamMember.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateTeamMember.

=head1 SYNOPSIS

    my $codestar = Paws->service('CodeStar');
    my $DisassociateTeamMemberResult = $codestar->DisassociateTeamMember(
      ProjectId => 'MyProjectId',
      UserArn   => 'MyUserArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar/DisassociateTeamMember>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectId => Str

The ID of the AWS CodeStar project from which you want to remove a team
member.



=head2 B<REQUIRED> UserArn => Str

The Amazon Resource Name (ARN) of the IAM user or group whom you want
to remove from the project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateTeamMember in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

