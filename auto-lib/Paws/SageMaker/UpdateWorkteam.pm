
package Paws::SageMaker::UpdateWorkteam;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has MemberDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MemberDefinition]');
  has NotificationConfiguration => (is => 'ro', isa => 'Paws::SageMaker::NotificationConfiguration');
  has WorkteamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkteam');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateWorkteamResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateWorkteam - Arguments for method UpdateWorkteam on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkteam on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateWorkteam.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkteam.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateWorkteamResponse = $api . sagemaker->UpdateWorkteam(
      WorkteamName      => 'MyWorkteamName',
      Description       => 'MyString200',      # OPTIONAL
      MemberDefinitions => [
        {
          CognitoMemberDefinition => {
            ClientId  => 'MyClientId',            # min: 1, max: 1024
            UserGroup => 'MyCognitoUserGroup',    # min: 1, max: 128
            UserPool  => 'MyCognitoUserPool',     # min: 1, max: 55

          },    # OPTIONAL
          OidcMemberDefinition => {
            Groups => [
              'MyGroup', ...    # min: 1, max: 63
            ],    # min: 1, max: 10

          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      NotificationConfiguration => {
        NotificationTopicArn => 'MyNotificationTopicArn',    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Workteam = $UpdateWorkteamResponse->Workteam;

    # Returns a L<Paws::SageMaker::UpdateWorkteamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateWorkteam>

=head1 ATTRIBUTES


=head2 Description => Str

An updated description for the work team.



=head2 MemberDefinitions => ArrayRef[L<Paws::SageMaker::MemberDefinition>]

A list of C<MemberDefinition> objects that contains objects that
identify the workers that make up the work team.

Workforces can be created using Amazon Cognito or your own OIDC
Identity Provider (IdP). For private workforces created using Amazon
Cognito use C<CognitoMemberDefinition>. For workforces created using
your own OIDC identity provider (IdP) use C<OidcMemberDefinition>. You
should not provide input for both of these parameters in a single
request.

For workforces created using Amazon Cognito, private work teams
correspond to Amazon Cognito I<user groups> within the user pool used
to create a workforce. All of the C<CognitoMemberDefinition> objects
that make up the member definition must have the same C<ClientId> and
C<UserPool> values. To add a Amazon Cognito user group to an existing
worker pool, see Adding groups to a User Pool. For more information
about user pools, see Amazon Cognito User Pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html).

For workforces created using your own OIDC IdP, specify the user groups
that you want to include in your private work team in
C<OidcMemberDefinition> by listing those groups in C<Groups>. Be aware
that user groups that are already in the work team must also be listed
in C<Groups> when you make this request to remain on the work team. If
you do not include these user groups, they will no longer be associated
with the work team you update.



=head2 NotificationConfiguration => L<Paws::SageMaker::NotificationConfiguration>

Configures SNS topic notifications for available or expiring work items



=head2 B<REQUIRED> WorkteamName => Str

The name of the work team to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkteam in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

