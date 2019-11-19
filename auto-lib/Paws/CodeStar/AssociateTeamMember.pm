# Generated from json/callargs_class.tt

package Paws::CodeStar::AssociateTeamMember;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CodeStar::Types qw//;
  has ClientRequestToken => (is => 'ro', isa => Str, predicate => 1);
  has ProjectId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ProjectRole => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RemoteAccessAllowed => (is => 'ro', isa => Bool, predicate => 1);
  has UserArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AssociateTeamMember');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeStar::AssociateTeamMemberResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'ProjectId' => {
                                'type' => 'Str'
                              },
               'RemoteAccessAllowed' => {
                                          'type' => 'Bool'
                                        },
               'ProjectRole' => {
                                  'type' => 'Str'
                                },
               'UserArn' => {
                              'type' => 'Str'
                            }
             },
  'IsRequired' => {
                    'ProjectRole' => 1,
                    'ProjectId' => 1,
                    'UserArn' => 1
                  },
  'NameInRequest' => {
                       'ClientRequestToken' => 'clientRequestToken',
                       'ProjectRole' => 'projectRole',
                       'RemoteAccessAllowed' => 'remoteAccessAllowed',
                       'ProjectId' => 'projectId',
                       'UserArn' => 'userArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::AssociateTeamMember - Arguments for method AssociateTeamMember on L<Paws::CodeStar>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateTeamMember on the
L<AWS CodeStar|Paws::CodeStar> service. Use the attributes of this class
as arguments to method AssociateTeamMember.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateTeamMember.

=head1 SYNOPSIS

    my $codestar = Paws->service('CodeStar');
    my $AssociateTeamMemberResult = $codestar->AssociateTeamMember(
      ProjectId           => 'MyProjectId',
      ProjectRole         => 'MyRole',
      UserArn             => 'MyUserArn',
      ClientRequestToken  => 'MyClientRequestToken',    # OPTIONAL
      RemoteAccessAllowed => 1,                         # OPTIONAL
    );

    # Results:
    my $ClientRequestToken = $AssociateTeamMemberResult->ClientRequestToken;

    # Returns a L<Paws::CodeStar::AssociateTeamMemberResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar/AssociateTeamMember>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A user- or system-generated token that identifies the entity that
requested the team member association to the project. This token can be
used to repeat the request.



=head2 B<REQUIRED> ProjectId => Str

The ID of the project to which you will add the IAM user.



=head2 B<REQUIRED> ProjectRole => Str

The AWS CodeStar project role that will apply to this user. This role
determines what actions a user can take in an AWS CodeStar project.



=head2 RemoteAccessAllowed => Bool

Whether the team member is allowed to use an SSH public/private key
pair to remotely access project resources, for example Amazon EC2
instances.



=head2 B<REQUIRED> UserArn => Str

The Amazon Resource Name (ARN) for the IAM user you want to add to the
AWS CodeStar project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateTeamMember in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

