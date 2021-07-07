
package Paws::Amplify::CreateApp;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessToken');
  has AutoBranchCreationConfig => (is => 'ro', isa => 'Paws::Amplify::AutoBranchCreationConfig', traits => ['NameInRequest'], request_name => 'autoBranchCreationConfig');
  has AutoBranchCreationPatterns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'autoBranchCreationPatterns');
  has BasicAuthCredentials => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'basicAuthCredentials');
  has BuildSpec => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'buildSpec');
  has CustomHeaders => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customHeaders');
  has CustomRules => (is => 'ro', isa => 'ArrayRef[Paws::Amplify::CustomRule]', traits => ['NameInRequest'], request_name => 'customRules');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnableAutoBranchCreation => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableAutoBranchCreation');
  has EnableBasicAuth => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableBasicAuth');
  has EnableBranchAutoBuild => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableBranchAutoBuild');
  has EnableBranchAutoDeletion => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableBranchAutoDeletion');
  has EnvironmentVariables => (is => 'ro', isa => 'Paws::Amplify::EnvironmentVariables', traits => ['NameInRequest'], request_name => 'environmentVariables');
  has IamServiceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamServiceRoleArn');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OauthToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'oauthToken');
  has Platform => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platform');
  has Repository => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repository');
  has Tags => (is => 'ro', isa => 'Paws::Amplify::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApp');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::CreateAppResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::CreateApp - Arguments for method CreateApp on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApp on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method CreateApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApp.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $CreateAppResult = $amplify->CreateApp(
      Name                     => 'MyName',
      AccessToken              => 'MyAccessToken',    # OPTIONAL
      AutoBranchCreationConfig => {
        BasicAuthCredentials  => 'MyBasicAuthCredentials', # max: 2000; OPTIONAL
        BuildSpec             => 'MyBuildSpec',   # min: 1, max: 25000; OPTIONAL
        EnableAutoBuild       => 1,               # OPTIONAL
        EnableBasicAuth       => 1,               # OPTIONAL
        EnablePerformanceMode => 1,               # OPTIONAL
        EnablePullRequestPreview => 1,            # OPTIONAL
        EnvironmentVariables     => {
          'MyEnvKey' => 'MyEnvValue',    # key: max: 255, value: max: 1000
        },    # OPTIONAL
        Framework                  => 'MyFramework',    # max: 255; OPTIONAL
        PullRequestEnvironmentName =>
          'MyPullRequestEnvironmentName',               # max: 20; OPTIONAL
        Stage => 'PRODUCTION'
        , # values: PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST; OPTIONAL
      },    # OPTIONAL
      AutoBranchCreationPatterns => [
        'MyAutoBranchCreationPattern', ...    # min: 1, max: 2048
      ],    # OPTIONAL
      BasicAuthCredentials => 'MyBasicAuthCredentials',    # OPTIONAL
      BuildSpec            => 'MyBuildSpec',               # OPTIONAL
      CustomHeaders        => 'MyCustomHeaders',           # OPTIONAL
      CustomRules          => [
        {
          Source    => 'MySource',       # min: 1, max: 2048
          Target    => 'MyTarget',       # min: 1, max: 2048
          Condition => 'MyCondition',    # min: 1, max: 2048; OPTIONAL
          Status    => 'MyStatus',       # min: 3, max: 7; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Description              => 'MyDescription',    # OPTIONAL
      EnableAutoBranchCreation => 1,                  # OPTIONAL
      EnableBasicAuth          => 1,                  # OPTIONAL
      EnableBranchAutoBuild    => 1,                  # OPTIONAL
      EnableBranchAutoDeletion => 1,                  # OPTIONAL
      EnvironmentVariables     => {
        'MyEnvKey' => 'MyEnvValue',    # key: max: 255, value: max: 1000
      },    # OPTIONAL
      IamServiceRoleArn => 'MyServiceRoleArn',    # OPTIONAL
      OauthToken        => 'MyOauthToken',        # OPTIONAL
      Platform          => 'WEB',                 # OPTIONAL
      Repository        => 'MyRepository',        # OPTIONAL
      Tags              => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $App = $CreateAppResult->App;

    # Returns a L<Paws::Amplify::CreateAppResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/CreateApp>

=head1 ATTRIBUTES


=head2 AccessToken => Str

The personal access token for a third-party source control system for
an Amplify app. The personal access token is used to create a webhook
and a read-only deploy key. The token is not stored.



=head2 AutoBranchCreationConfig => L<Paws::Amplify::AutoBranchCreationConfig>

The automated branch creation configuration for an Amplify app.



=head2 AutoBranchCreationPatterns => ArrayRef[Str|Undef]

The automated branch creation glob patterns for an Amplify app.



=head2 BasicAuthCredentials => Str

The credentials for basic authorization for an Amplify app.



=head2 BuildSpec => Str

The build specification (build spec) for an Amplify app.



=head2 CustomHeaders => Str

The custom HTTP headers for an Amplify app.



=head2 CustomRules => ArrayRef[L<Paws::Amplify::CustomRule>]

The custom rewrite and redirect rules for an Amplify app.



=head2 Description => Str

The description for an Amplify app.



=head2 EnableAutoBranchCreation => Bool

Enables automated branch creation for an Amplify app.



=head2 EnableBasicAuth => Bool

Enables basic authorization for an Amplify app. This will apply to all
branches that are part of this app.



=head2 EnableBranchAutoBuild => Bool

Enables the auto building of branches for an Amplify app.



=head2 EnableBranchAutoDeletion => Bool

Automatically disconnects a branch in the Amplify Console when you
delete a branch from your Git repository.



=head2 EnvironmentVariables => L<Paws::Amplify::EnvironmentVariables>

The environment variables map for an Amplify app.



=head2 IamServiceRoleArn => Str

The AWS Identity and Access Management (IAM) service role for an
Amplify app.



=head2 B<REQUIRED> Name => Str

The name for an Amplify app.



=head2 OauthToken => Str

The OAuth token for a third-party source control system for an Amplify
app. The OAuth token is used to create a webhook and a read-only deploy
key. The OAuth token is not stored.



=head2 Platform => Str

The platform or framework for an Amplify app.

Valid values are: C<"WEB">

=head2 Repository => Str

The repository for an Amplify app.



=head2 Tags => L<Paws::Amplify::TagMap>

The tag for an Amplify app.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApp in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

