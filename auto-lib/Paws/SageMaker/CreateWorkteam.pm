
package Paws::SageMaker::CreateWorkteam;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has MemberDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MemberDefinition]', required => 1);
  has NotificationConfiguration => (is => 'ro', isa => 'Paws::SageMaker::NotificationConfiguration');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has WorkforceName => (is => 'ro', isa => 'Str');
  has WorkteamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkteam');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateWorkteamResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateWorkteam - Arguments for method CreateWorkteam on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkteam on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateWorkteam.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkteam.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateWorkteamResponse = $api . sagemaker->CreateWorkteam(
      Description       => 'MyString200',
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
      ],
      WorkteamName              => 'MyWorkteamName',
      NotificationConfiguration => {
        NotificationTopicArn => 'MyNotificationTopicArn',    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      WorkforceName => 'MyWorkforceName',    # OPTIONAL
    );

    # Results:
    my $WorkteamArn = $CreateWorkteamResponse->WorkteamArn;

    # Returns a L<Paws::SageMaker::CreateWorkteamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateWorkteam>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Description => Str

A description of the work team.



=head2 B<REQUIRED> MemberDefinitions => ArrayRef[L<Paws::SageMaker::MemberDefinition>]

A list of C<MemberDefinition> objects that contains objects that
identify the workers that make up the work team.

Workforces can be created using Amazon Cognito or your own OIDC
Identity Provider (IdP). For private workforces created using Amazon
Cognito use C<CognitoMemberDefinition>. For workforces created using
your own OIDC identity provider (IdP) use C<OidcMemberDefinition>. Do
not provide input for both of these parameters in a single request.

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
C<OidcMemberDefinition> by listing those groups in C<Groups>.



=head2 NotificationConfiguration => L<Paws::SageMaker::NotificationConfiguration>

Configures notification of workers regarding available or expiring work
items.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs.

For more information, see Resource Tag
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html)
and Using Cost Allocation Tags
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)
in the I< Amazon Web Services Billing and Cost Management User Guide>.



=head2 WorkforceName => Str

The name of the workforce.



=head2 B<REQUIRED> WorkteamName => Str

The name of the work team. Use this name to identify the work team.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkteam in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

