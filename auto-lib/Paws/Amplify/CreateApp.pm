
package Paws::Amplify::CreateApp;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef Bool/;
  use Paws::Amplify::Types qw/Amplify_EnvironmentVariables Amplify_TagMap Amplify_AutoBranchCreationConfig Amplify_CustomRule/;
  has AccessToken => (is => 'ro', isa => Str, predicate => 1);
  has AutoBranchCreationConfig => (is => 'ro', isa => Amplify_AutoBranchCreationConfig, predicate => 1);
  has AutoBranchCreationPatterns => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has BasicAuthCredentials => (is => 'ro', isa => Str, predicate => 1);
  has BuildSpec => (is => 'ro', isa => Str, predicate => 1);
  has CustomRules => (is => 'ro', isa => ArrayRef[Amplify_CustomRule], predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has EnableAutoBranchCreation => (is => 'ro', isa => Bool, predicate => 1);
  has EnableBasicAuth => (is => 'ro', isa => Bool, predicate => 1);
  has EnableBranchAutoBuild => (is => 'ro', isa => Bool, predicate => 1);
  has EnvironmentVariables => (is => 'ro', isa => Amplify_EnvironmentVariables, predicate => 1);
  has IamServiceRoleArn => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has OauthToken => (is => 'ro', isa => Str, predicate => 1);
  has Platform => (is => 'ro', isa => Str, predicate => 1);
  has Repository => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => Amplify_TagMap, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateApp');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/apps');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Amplify::CreateAppResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AutoBranchCreationConfig' => {
                                               'type' => 'Amplify_AutoBranchCreationConfig',
                                               'class' => 'Paws::Amplify::AutoBranchCreationConfig'
                                             },
               'EnvironmentVariables' => {
                                           'class' => 'Paws::Amplify::EnvironmentVariables',
                                           'type' => 'Amplify_EnvironmentVariables'
                                         },
               'Repository' => {
                                 'type' => 'Str'
                               },
               'IamServiceRoleArn' => {
                                        'type' => 'Str'
                                      },
               'OauthToken' => {
                                 'type' => 'Str'
                               },
               'Platform' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'EnableAutoBranchCreation' => {
                                               'type' => 'Bool'
                                             },
               'EnableBasicAuth' => {
                                      'type' => 'Bool'
                                    },
               'CustomRules' => {
                                  'class' => 'Paws::Amplify::CustomRule',
                                  'type' => 'ArrayRef[Amplify_CustomRule]'
                                },
               'AutoBranchCreationPatterns' => {
                                                 'type' => 'ArrayRef[Str|Undef]'
                                               },
               'AccessToken' => {
                                  'type' => 'Str'
                                },
               'BasicAuthCredentials' => {
                                           'type' => 'Str'
                                         },
               'Tags' => {
                           'type' => 'Amplify_TagMap',
                           'class' => 'Paws::Amplify::TagMap'
                         },
               'BuildSpec' => {
                                'type' => 'Str'
                              },
               'EnableBranchAutoBuild' => {
                                            'type' => 'Bool'
                                          },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Name' => 1
                  },
  'NameInRequest' => {
                       'Name' => 'name',
                       'OauthToken' => 'oauthToken',
                       'Repository' => 'repository',
                       'IamServiceRoleArn' => 'iamServiceRoleArn',
                       'Platform' => 'platform',
                       'EnvironmentVariables' => 'environmentVariables',
                       'AutoBranchCreationConfig' => 'autoBranchCreationConfig',
                       'AutoBranchCreationPatterns' => 'autoBranchCreationPatterns',
                       'AccessToken' => 'accessToken',
                       'BasicAuthCredentials' => 'basicAuthCredentials',
                       'CustomRules' => 'customRules',
                       'EnableBasicAuth' => 'enableBasicAuth',
                       'EnableAutoBranchCreation' => 'enableAutoBranchCreation',
                       'EnableBranchAutoBuild' => 'enableBranchAutoBuild',
                       'BuildSpec' => 'buildSpec',
                       'Tags' => 'tags',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

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
        BasicAuthCredentials => 'MyBasicAuthCredentials',  # max: 2000; OPTIONAL
        BuildSpec       => 'MyBuildSpec',    # min: 1, max: 25000; OPTIONAL
        EnableAutoBuild => 1,                # OPTIONAL
        EnableBasicAuth => 1,                # OPTIONAL
        EnablePullRequestPreview => 1,       # OPTIONAL
        EnvironmentVariables     => {
          'MyEnvKey' => 'MyEnvValue',        # key: max: 255, value: max: 1000
        },    # OPTIONAL
        Framework => 'MyFramework',    # max: 255; OPTIONAL
        PullRequestEnvironmentName =>
          'MyPullRequestEnvironmentName',    # max: 20; OPTIONAL
        Stage => 'PRODUCTION'
        , # values: PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST; OPTIONAL
      },    # OPTIONAL
      AutoBranchCreationPatterns => [
        'MyAutoBranchCreationPattern', ...    # min: 1, max: 2048
      ],                                      # OPTIONAL
      BasicAuthCredentials => 'MyBasicAuthCredentials',    # OPTIONAL
      BuildSpec            => 'MyBuildSpec',               # OPTIONAL
      CustomRules          => [
        {
          Source    => 'MySource',       # min: 1, max: 2048
          Target    => 'MyTarget',       # min: 1, max: 2048
          Condition => 'MyCondition',    # min: 1, max: 2048; OPTIONAL
          Status    => 'MyStatus',       # min: 3, max: 7; OPTIONAL
        },
        ...
      ],                                 # OPTIONAL
      Description              => 'MyDescription',    # OPTIONAL
      EnableAutoBranchCreation => 1,                  # OPTIONAL
      EnableBasicAuth          => 1,                  # OPTIONAL
      EnableBranchAutoBuild    => 1,                  # OPTIONAL
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

Personal Access token for 3rd party source control system for an
Amplify App, used to create webhook and read-only deploy key. Token is
not stored.



=head2 AutoBranchCreationConfig => Amplify_AutoBranchCreationConfig

Automated branch creation config for the Amplify App.



=head2 AutoBranchCreationPatterns => ArrayRef[Str|Undef]

Automated branch creation glob patterns for the Amplify App.



=head2 BasicAuthCredentials => Str

Credentials for Basic Authorization for an Amplify App.



=head2 BuildSpec => Str

BuildSpec for an Amplify App



=head2 CustomRules => ArrayRef[Amplify_CustomRule]

Custom rewrite / redirect rules for an Amplify App.



=head2 Description => Str

Description for an Amplify App



=head2 EnableAutoBranchCreation => Bool

Enables automated branch creation for the Amplify App.



=head2 EnableBasicAuth => Bool

Enable Basic Authorization for an Amplify App, this will apply to all
branches part of this App.



=head2 EnableBranchAutoBuild => Bool

Enable the auto building of branches for an Amplify App.



=head2 EnvironmentVariables => Amplify_EnvironmentVariables

Environment variables map for an Amplify App.



=head2 IamServiceRoleArn => Str

AWS IAM service role for an Amplify App



=head2 B<REQUIRED> Name => Str

Name for the Amplify App



=head2 OauthToken => Str

OAuth token for 3rd party source control system for an Amplify App,
used to create webhook and read-only deploy key. OAuth token is not
stored.



=head2 Platform => Str

Platform / framework for an Amplify App

Valid values are: C<"WEB">

=head2 Repository => Str

Repository for an Amplify App



=head2 Tags => Amplify_TagMap

Tag for an Amplify App




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApp in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

