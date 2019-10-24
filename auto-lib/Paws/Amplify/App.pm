# Generated from default/object.tt
package Paws::Amplify::App;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::Amplify::Types qw/Amplify_CustomRule Amplify_AutoBranchCreationConfig Amplify_TagMap Amplify_ProductionBranch Amplify_EnvironmentVariables/;
  has AppArn => (is => 'ro', isa => Str, required => 1);
  has AppId => (is => 'ro', isa => Str, required => 1);
  has AutoBranchCreationConfig => (is => 'ro', isa => Amplify_AutoBranchCreationConfig);
  has AutoBranchCreationPatterns => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has BasicAuthCredentials => (is => 'ro', isa => Str);
  has BuildSpec => (is => 'ro', isa => Str);
  has CreateTime => (is => 'ro', isa => Str, required => 1);
  has CustomRules => (is => 'ro', isa => ArrayRef[Amplify_CustomRule]);
  has DefaultDomain => (is => 'ro', isa => Str, required => 1);
  has Description => (is => 'ro', isa => Str, required => 1);
  has EnableAutoBranchCreation => (is => 'ro', isa => Bool);
  has EnableBasicAuth => (is => 'ro', isa => Bool, required => 1);
  has EnableBranchAutoBuild => (is => 'ro', isa => Bool, required => 1);
  has EnvironmentVariables => (is => 'ro', isa => Amplify_EnvironmentVariables, required => 1);
  has IamServiceRoleArn => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);
  has Platform => (is => 'ro', isa => Str, required => 1);
  has ProductionBranch => (is => 'ro', isa => Amplify_ProductionBranch);
  has Repository => (is => 'ro', isa => Str, required => 1);
  has Tags => (is => 'ro', isa => Amplify_TagMap);
  has UpdateTime => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BuildSpec' => {
                                'type' => 'Str'
                              },
               'BasicAuthCredentials' => {
                                           'type' => 'Str'
                                         },
               'Platform' => {
                               'type' => 'Str'
                             },
               'CustomRules' => {
                                  'class' => 'Paws::Amplify::CustomRule',
                                  'type' => 'ArrayRef[Amplify_CustomRule]'
                                },
               'Repository' => {
                                 'type' => 'Str'
                               },
               'AppArn' => {
                             'type' => 'Str'
                           },
               'EnvironmentVariables' => {
                                           'class' => 'Paws::Amplify::EnvironmentVariables',
                                           'type' => 'Amplify_EnvironmentVariables'
                                         },
               'UpdateTime' => {
                                 'type' => 'Str'
                               },
               'AutoBranchCreationConfig' => {
                                               'class' => 'Paws::Amplify::AutoBranchCreationConfig',
                                               'type' => 'Amplify_AutoBranchCreationConfig'
                                             },
               'ProductionBranch' => {
                                       'class' => 'Paws::Amplify::ProductionBranch',
                                       'type' => 'Amplify_ProductionBranch'
                                     },
               'AppId' => {
                            'type' => 'Str'
                          },
               'CreateTime' => {
                                 'type' => 'Str'
                               },
               'EnableAutoBranchCreation' => {
                                               'type' => 'Bool'
                                             },
               'IamServiceRoleArn' => {
                                        'type' => 'Str'
                                      },
               'AutoBranchCreationPatterns' => {
                                                 'type' => 'ArrayRef[Str|Undef]'
                                               },
               'EnableBranchAutoBuild' => {
                                            'type' => 'Bool'
                                          },
               'EnableBasicAuth' => {
                                      'type' => 'Bool'
                                    },
               'Tags' => {
                           'class' => 'Paws::Amplify::TagMap',
                           'type' => 'Amplify_TagMap'
                         },
               'DefaultDomain' => {
                                    'type' => 'Str'
                                  },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'BuildSpec' => 'buildSpec',
                       'BasicAuthCredentials' => 'basicAuthCredentials',
                       'Platform' => 'platform',
                       'CustomRules' => 'customRules',
                       'Repository' => 'repository',
                       'AppArn' => 'appArn',
                       'EnvironmentVariables' => 'environmentVariables',
                       'UpdateTime' => 'updateTime',
                       'AutoBranchCreationConfig' => 'autoBranchCreationConfig',
                       'ProductionBranch' => 'productionBranch',
                       'AppId' => 'appId',
                       'CreateTime' => 'createTime',
                       'EnableAutoBranchCreation' => 'enableAutoBranchCreation',
                       'IamServiceRoleArn' => 'iamServiceRoleArn',
                       'AutoBranchCreationPatterns' => 'autoBranchCreationPatterns',
                       'EnableBranchAutoBuild' => 'enableBranchAutoBuild',
                       'EnableBasicAuth' => 'enableBasicAuth',
                       'Tags' => 'tags',
                       'DefaultDomain' => 'defaultDomain',
                       'Description' => 'description',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'Platform' => 1,
                    'CreateTime' => 1,
                    'Repository' => 1,
                    'AppArn' => 1,
                    'EnableBranchAutoBuild' => 1,
                    'EnvironmentVariables' => 1,
                    'UpdateTime' => 1,
                    'EnableBasicAuth' => 1,
                    'Name' => 1,
                    'DefaultDomain' => 1,
                    'Description' => 1,
                    'AppId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::App

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::App object:

  $service_obj->Method(Att1 => { AppArn => $value, ..., UpdateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::App object:

  $result = $service_obj->Method(...);
  $result->Att1->AppArn

=head1 DESCRIPTION

Amplify App represents different branches of a repository for building,
deploying, and hosting.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

  ARN for the Amplify App.


=head2 B<REQUIRED> AppId => Str

  Unique Id for the Amplify App.


=head2 AutoBranchCreationConfig => Amplify_AutoBranchCreationConfig

  Automated branch creation config for the Amplify App.


=head2 AutoBranchCreationPatterns => ArrayRef[Str|Undef]

  Automated branch creation glob patterns for the Amplify App.


=head2 BasicAuthCredentials => Str

  Basic Authorization credentials for branches for the Amplify App.


=head2 BuildSpec => Str

  BuildSpec content for Amplify App.


=head2 B<REQUIRED> CreateTime => Str

  Create date / time for the Amplify App.


=head2 CustomRules => ArrayRef[Amplify_CustomRule]

  Custom redirect / rewrite rules for the Amplify App.


=head2 B<REQUIRED> DefaultDomain => Str

  Default domain for the Amplify App.


=head2 B<REQUIRED> Description => Str

  Description for the Amplify App.


=head2 EnableAutoBranchCreation => Bool

  Enables automated branch creation for the Amplify App.


=head2 B<REQUIRED> EnableBasicAuth => Bool

  Enables Basic Authorization for branches for the Amplify App.


=head2 B<REQUIRED> EnableBranchAutoBuild => Bool

  Enables auto-building of branches for the Amplify App.


=head2 B<REQUIRED> EnvironmentVariables => Amplify_EnvironmentVariables

  Environment Variables for the Amplify App.


=head2 IamServiceRoleArn => Str

  IAM service role ARN for the Amplify App.


=head2 B<REQUIRED> Name => Str

  Name for the Amplify App.


=head2 B<REQUIRED> Platform => Str

  Platform for the Amplify App.


=head2 ProductionBranch => Amplify_ProductionBranch

  Structure with Production Branch information.


=head2 B<REQUIRED> Repository => Str

  Repository for the Amplify App.


=head2 Tags => Amplify_TagMap

  Tag for Amplify App.


=head2 B<REQUIRED> UpdateTime => Str

  Update date / time for the Amplify App.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

