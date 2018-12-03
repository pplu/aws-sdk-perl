
package Paws::SageMaker::CreateWorkteam;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has MemberDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MemberDefinition]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
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
            ClientId  => 'MyCognitoClientId',     # min: 1, max: 128
            UserGroup => 'MyCognitoUserGroup',    # min: 1, max: 128
            UserPool  => 'MyCognitoUserPool',     # min: 1, max: 55

          },    # OPTIONAL
        },
        ...
      ],
      WorkteamName => 'MyWorkteamName',
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],                            # OPTIONAL
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
identify the Amazon Cognito user pool that makes up the work team. For
more information, see Amazon Cognito User Pools
(http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html).

All of the C<CognitoMemberDefinition> objects that make up the member
definition must have the same C<ClientId> and C<UserPool> values.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]





=head2 B<REQUIRED> WorkteamName => Str

The name of the work team. Use this name to identify the work team.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkteam in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

