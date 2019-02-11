
package Paws::Amplify::CreateApp;
  use Moose;
  has BasicAuthCredentials => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'basicAuthCredentials');
  has BuildSpec => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'buildSpec');
  has CustomRules => (is => 'ro', isa => 'ArrayRef[Paws::Amplify::CustomRule]', traits => ['NameInRequest'], request_name => 'customRules');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnableBasicAuth => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableBasicAuth');
  has EnableBranchAutoBuild => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableBranchAutoBuild');
  has EnvironmentVariables => (is => 'ro', isa => 'Paws::Amplify::EnvironmentVariables', traits => ['NameInRequest'], request_name => 'environmentVariables');
  has IamServiceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamServiceRoleArn');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OauthToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'oauthToken', required => 1);
  has Platform => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platform', required => 1);
  has Repository => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repository', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Amplify::Tags', traits => ['NameInRequest'], request_name => 'tags');

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
      Name                 => 'MyName',
      OauthToken           => 'MyOauthToken',
      Platform             => 'IOS',
      Repository           => 'MyRepository',
      BasicAuthCredentials => 'MyBasicAuthCredentials',    # OPTIONAL
      BuildSpec            => 'MyBuildSpec',               # OPTIONAL
      CustomRules          => [
        {
          Source    => 'MySource',       # min: 1, max: 2048
          Target    => 'MyTarget',       # min: 1, max: 2048
          Condition => 'MyCondition',    # min: 1, max: 2048; OPTIONAL
          Status    => 'MyStatus',       # min: 3, max: 3; OPTIONAL
        },
        ...
      ],                                 # OPTIONAL
      Description           => 'MyDescription',    # OPTIONAL
      EnableBasicAuth       => 1,                  # OPTIONAL
      EnableBranchAutoBuild => 1,                  # OPTIONAL
      EnvironmentVariables  => {
        'MyEnvKey' => 'MyEnvValue',    # key: max: 255, value: max: 1000
      },    # OPTIONAL
      IamServiceRoleArn => 'MyServiceRoleArn',    # OPTIONAL
      Tags              => {
        'MyTagKey' => 'MyTagValue',    # key: max: 1000, value: max: 1000
      },    # OPTIONAL
    );

    # Results:
    my $App = $CreateAppResult->App;

    # Returns a L<Paws::Amplify::CreateAppResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/CreateApp>

=head1 ATTRIBUTES


=head2 BasicAuthCredentials => Str

Credentials for Basic Authorization for an Amplify App.



=head2 BuildSpec => Str

BuildSpec for an Amplify App



=head2 CustomRules => ArrayRef[L<Paws::Amplify::CustomRule>]

Custom rewrite / redirect rules for an Amplify App.



=head2 Description => Str

Description for an Amplify App



=head2 EnableBasicAuth => Bool

Enable Basic Authorization for an Amplify App, this will apply to all
branches part of this App.



=head2 EnableBranchAutoBuild => Bool

Enable the auto building of branches for an Amplify App.



=head2 EnvironmentVariables => L<Paws::Amplify::EnvironmentVariables>

Environment variables map for an Amplify App.



=head2 IamServiceRoleArn => Str

AWS IAM service role for an Amplify App



=head2 B<REQUIRED> Name => Str

Name for the Amplify App



=head2 B<REQUIRED> OauthToken => Str

OAuth token for 3rd party source control system for an Amplify App,
used to create webhook and read-only deploy key. OAuth token is not
stored.



=head2 B<REQUIRED> Platform => Str

Platform / framework for an Amplify App

Valid values are: C<"IOS">, C<"ANDROID">, C<"WEB">, C<"REACT_NATIVE">

=head2 B<REQUIRED> Repository => Str

Repository for an Amplify App



=head2 Tags => L<Paws::Amplify::Tags>

Tag for an Amplify App




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApp in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

