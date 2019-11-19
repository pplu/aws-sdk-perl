# Generated from default/object.tt
package Paws::Amplify::Branch;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef Bool/;
  use Paws::Amplify::Types qw/Amplify_TagMap Amplify_EnvironmentVariables/;
  has ActiveJobId => (is => 'ro', isa => Str, required => 1);
  has AssociatedResources => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has BackendEnvironmentArn => (is => 'ro', isa => Str);
  has BasicAuthCredentials => (is => 'ro', isa => Str);
  has BranchArn => (is => 'ro', isa => Str, required => 1);
  has BranchName => (is => 'ro', isa => Str, required => 1);
  has BuildSpec => (is => 'ro', isa => Str);
  has CreateTime => (is => 'ro', isa => Str, required => 1);
  has CustomDomains => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has Description => (is => 'ro', isa => Str, required => 1);
  has DestinationBranch => (is => 'ro', isa => Str);
  has DisplayName => (is => 'ro', isa => Str, required => 1);
  has EnableAutoBuild => (is => 'ro', isa => Bool, required => 1);
  has EnableBasicAuth => (is => 'ro', isa => Bool, required => 1);
  has EnableNotification => (is => 'ro', isa => Bool, required => 1);
  has EnablePullRequestPreview => (is => 'ro', isa => Bool, required => 1);
  has EnvironmentVariables => (is => 'ro', isa => Amplify_EnvironmentVariables, required => 1);
  has Framework => (is => 'ro', isa => Str, required => 1);
  has PullRequestEnvironmentName => (is => 'ro', isa => Str);
  has SourceBranch => (is => 'ro', isa => Str);
  has Stage => (is => 'ro', isa => Str, required => 1);
  has Tags => (is => 'ro', isa => Amplify_TagMap);
  has ThumbnailUrl => (is => 'ro', isa => Str);
  has TotalNumberOfJobs => (is => 'ro', isa => Str, required => 1);
  has Ttl => (is => 'ro', isa => Str, required => 1);
  has UpdateTime => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'EnableNotification' => 1,
                    'EnvironmentVariables' => 1,
                    'Ttl' => 1,
                    'TotalNumberOfJobs' => 1,
                    'DisplayName' => 1,
                    'CustomDomains' => 1,
                    'EnableBasicAuth' => 1,
                    'BranchName' => 1,
                    'ActiveJobId' => 1,
                    'Framework' => 1,
                    'BranchArn' => 1,
                    'UpdateTime' => 1,
                    'Stage' => 1,
                    'CreateTime' => 1,
                    'EnableAutoBuild' => 1,
                    'EnablePullRequestPreview' => 1,
                    'Description' => 1
                  },
  'NameInRequest' => {
                       'BackendEnvironmentArn' => 'backendEnvironmentArn',
                       'Ttl' => 'ttl',
                       'TotalNumberOfJobs' => 'totalNumberOfJobs',
                       'DisplayName' => 'displayName',
                       'CustomDomains' => 'customDomains',
                       'BranchName' => 'branchName',
                       'ActiveJobId' => 'activeJobId',
                       'BuildSpec' => 'buildSpec',
                       'DestinationBranch' => 'destinationBranch',
                       'Framework' => 'framework',
                       'Tags' => 'tags',
                       'CreateTime' => 'createTime',
                       'Description' => 'description',
                       'EnableNotification' => 'enableNotification',
                       'EnvironmentVariables' => 'environmentVariables',
                       'SourceBranch' => 'sourceBranch',
                       'AssociatedResources' => 'associatedResources',
                       'BasicAuthCredentials' => 'basicAuthCredentials',
                       'EnableBasicAuth' => 'enableBasicAuth',
                       'PullRequestEnvironmentName' => 'pullRequestEnvironmentName',
                       'BranchArn' => 'branchArn',
                       'Stage' => 'stage',
                       'UpdateTime' => 'updateTime',
                       'EnableAutoBuild' => 'enableAutoBuild',
                       'EnablePullRequestPreview' => 'enablePullRequestPreview',
                       'ThumbnailUrl' => 'thumbnailUrl'
                     },
  'types' => {
               'Ttl' => {
                          'type' => 'Str'
                        },
               'BackendEnvironmentArn' => {
                                            'type' => 'Str'
                                          },
               'BranchName' => {
                                 'type' => 'Str'
                               },
               'CustomDomains' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'TotalNumberOfJobs' => {
                                        'type' => 'Str'
                                      },
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'Framework' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'class' => 'Paws::Amplify::TagMap',
                           'type' => 'Amplify_TagMap'
                         },
               'BuildSpec' => {
                                'type' => 'Str'
                              },
               'DestinationBranch' => {
                                        'type' => 'Str'
                                      },
               'ActiveJobId' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'type' => 'Str'
                                },
               'CreateTime' => {
                                 'type' => 'Str'
                               },
               'AssociatedResources' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'EnvironmentVariables' => {
                                           'class' => 'Paws::Amplify::EnvironmentVariables',
                                           'type' => 'Amplify_EnvironmentVariables'
                                         },
               'SourceBranch' => {
                                   'type' => 'Str'
                                 },
               'EnableNotification' => {
                                         'type' => 'Bool'
                                       },
               'PullRequestEnvironmentName' => {
                                                 'type' => 'Str'
                                               },
               'EnableBasicAuth' => {
                                      'type' => 'Bool'
                                    },
               'BasicAuthCredentials' => {
                                           'type' => 'Str'
                                         },
               'BranchArn' => {
                                'type' => 'Str'
                              },
               'EnablePullRequestPreview' => {
                                               'type' => 'Bool'
                                             },
               'ThumbnailUrl' => {
                                   'type' => 'Str'
                                 },
               'UpdateTime' => {
                                 'type' => 'Str'
                               },
               'Stage' => {
                            'type' => 'Str'
                          },
               'EnableAutoBuild' => {
                                      'type' => 'Bool'
                                    }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::Branch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::Branch object:

  $service_obj->Method(Att1 => { ActiveJobId => $value, ..., UpdateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::Branch object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveJobId

=head1 DESCRIPTION

Branch for an Amplify App, which maps to a 3rd party repository branch.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActiveJobId => Str

  Id of the active job for a branch, part of an Amplify App.


=head2 AssociatedResources => ArrayRef[Str|Undef]

  List of custom resources that are linked to this branch.


=head2 BackendEnvironmentArn => Str

  ARN for a Backend Environment, part of an Amplify App.


=head2 BasicAuthCredentials => Str

  Basic Authorization credentials for a branch, part of an Amplify App.


=head2 B<REQUIRED> BranchArn => Str

  ARN for a branch, part of an Amplify App.


=head2 B<REQUIRED> BranchName => Str

  Name for a branch, part of an Amplify App.


=head2 BuildSpec => Str

  BuildSpec content for branch for Amplify App.


=head2 B<REQUIRED> CreateTime => Str

  Creation date and time for a branch, part of an Amplify App.


=head2 B<REQUIRED> CustomDomains => ArrayRef[Str|Undef]

  Custom domains for a branch, part of an Amplify App.


=head2 B<REQUIRED> Description => Str

  Description for a branch, part of an Amplify App.


=head2 DestinationBranch => Str

  The destination branch if the branch is a pull request branch.


=head2 B<REQUIRED> DisplayName => Str

  Display name for a branch, will use as the default domain prefix.


=head2 B<REQUIRED> EnableAutoBuild => Bool

  Enables auto-building on push for a branch, part of an Amplify App.


=head2 B<REQUIRED> EnableBasicAuth => Bool

  Enables Basic Authorization for a branch, part of an Amplify App.


=head2 B<REQUIRED> EnableNotification => Bool

  Enables notifications for a branch, part of an Amplify App.


=head2 B<REQUIRED> EnablePullRequestPreview => Bool

  Enables Pull Request Preview for this branch.


=head2 B<REQUIRED> EnvironmentVariables => Amplify_EnvironmentVariables

  Environment Variables specific to a branch, part of an Amplify App.


=head2 B<REQUIRED> Framework => Str

  Framework for a branch, part of an Amplify App.


=head2 PullRequestEnvironmentName => Str

  The Amplify Environment name for the pull request.


=head2 SourceBranch => Str

  The source branch if the branch is a pull request branch.


=head2 B<REQUIRED> Stage => Str

  Stage for a branch, part of an Amplify App.


=head2 Tags => Amplify_TagMap

  Tag for branch for Amplify App.


=head2 ThumbnailUrl => Str

  Thumbnail URL for the branch.


=head2 B<REQUIRED> TotalNumberOfJobs => Str

  Total number of Jobs part of an Amplify App.


=head2 B<REQUIRED> Ttl => Str

  The content TTL for the website in seconds.


=head2 B<REQUIRED> UpdateTime => Str

  Last updated date and time for a branch, part of an Amplify App.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

