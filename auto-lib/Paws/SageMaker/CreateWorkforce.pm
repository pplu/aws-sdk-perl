
package Paws::SageMaker::CreateWorkforce;
  use Moose;
  has CognitoConfig => (is => 'ro', isa => 'Paws::SageMaker::CognitoConfig');
  has OidcConfig => (is => 'ro', isa => 'Paws::SageMaker::OidcConfig');
  has SourceIpConfig => (is => 'ro', isa => 'Paws::SageMaker::SourceIpConfig');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has WorkforceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkforce');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateWorkforceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateWorkforce - Arguments for method CreateWorkforce on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkforce on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateWorkforce.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkforce.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateWorkforceResponse = $api . sagemaker->CreateWorkforce(
      WorkforceName => 'MyWorkforceName',
      CognitoConfig => {
        ClientId => 'MyClientId',           # min: 1, max: 1024
        UserPool => 'MyCognitoUserPool',    # min: 1, max: 55

      },    # OPTIONAL
      OidcConfig => {
        AuthorizationEndpoint => 'MyOidcEndpoint',    # max: 500
        ClientId              => 'MyClientId',        # min: 1, max: 1024
        ClientSecret          => 'MyClientSecret',    # min: 1, max: 1024
        Issuer                => 'MyOidcEndpoint',    # max: 500
        JwksUri               => 'MyOidcEndpoint',    # max: 500
        LogoutEndpoint        => 'MyOidcEndpoint',    # max: 500
        TokenEndpoint         => 'MyOidcEndpoint',    # max: 500
        UserInfoEndpoint      => 'MyOidcEndpoint',    # max: 500

      },    # OPTIONAL
      SourceIpConfig => {
        Cidrs => [
          'MyCidr', ...    # min: 4, max: 64
        ],

      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $WorkforceArn = $CreateWorkforceResponse->WorkforceArn;

    # Returns a L<Paws::SageMaker::CreateWorkforceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateWorkforce>

=head1 ATTRIBUTES


=head2 CognitoConfig => L<Paws::SageMaker::CognitoConfig>

Use this parameter to configure an Amazon Cognito private workforce. A
single Cognito workforce is created using and corresponds to a single
Amazon Cognito user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html).

Do not use C<OidcConfig> if you specify values for C<CognitoConfig>.



=head2 OidcConfig => L<Paws::SageMaker::OidcConfig>

Use this parameter to configure a private workforce using your own OIDC
Identity Provider.

Do not use C<CognitoConfig> if you specify values for C<OidcConfig>.



=head2 SourceIpConfig => L<Paws::SageMaker::SourceIpConfig>





=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs that contain metadata to help you
categorize and organize our workforce. Each tag consists of a key and a
value, both of which you define.



=head2 B<REQUIRED> WorkforceName => Str

The name of the private workforce.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkforce in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

