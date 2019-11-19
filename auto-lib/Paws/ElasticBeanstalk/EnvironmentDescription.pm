# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::EnvironmentDescription;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_EnvironmentLink ElasticBeanstalk_EnvironmentTier ElasticBeanstalk_EnvironmentResourcesDescription/;
  has AbortableOperationInProgress => (is => 'ro', isa => Bool);
  has ApplicationName => (is => 'ro', isa => Str);
  has CNAME => (is => 'ro', isa => Str);
  has DateCreated => (is => 'ro', isa => Str);
  has DateUpdated => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has EndpointURL => (is => 'ro', isa => Str);
  has EnvironmentArn => (is => 'ro', isa => Str);
  has EnvironmentId => (is => 'ro', isa => Str);
  has EnvironmentLinks => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_EnvironmentLink]);
  has EnvironmentName => (is => 'ro', isa => Str);
  has Health => (is => 'ro', isa => Str);
  has HealthStatus => (is => 'ro', isa => Str);
  has PlatformArn => (is => 'ro', isa => Str);
  has Resources => (is => 'ro', isa => ElasticBeanstalk_EnvironmentResourcesDescription);
  has SolutionStackName => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has TemplateName => (is => 'ro', isa => Str);
  has Tier => (is => 'ro', isa => ElasticBeanstalk_EnvironmentTier);
  has VersionLabel => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'Resources' => {
                                'class' => 'Paws::ElasticBeanstalk::EnvironmentResourcesDescription',
                                'type' => 'ElasticBeanstalk_EnvironmentResourcesDescription'
                              },
               'HealthStatus' => {
                                   'type' => 'Str'
                                 },
               'SolutionStackName' => {
                                        'type' => 'Str'
                                      },
               'EnvironmentId' => {
                                    'type' => 'Str'
                                  },
               'TemplateName' => {
                                   'type' => 'Str'
                                 },
               'EnvironmentArn' => {
                                     'type' => 'Str'
                                   },
               'VersionLabel' => {
                                   'type' => 'Str'
                                 },
               'Tier' => {
                           'class' => 'Paws::ElasticBeanstalk::EnvironmentTier',
                           'type' => 'ElasticBeanstalk_EnvironmentTier'
                         },
               'DateUpdated' => {
                                  'type' => 'Str'
                                },
               'CNAME' => {
                            'type' => 'Str'
                          },
               'ApplicationName' => {
                                      'type' => 'Str'
                                    },
               'AbortableOperationInProgress' => {
                                                   'type' => 'Bool'
                                                 },
               'EnvironmentName' => {
                                      'type' => 'Str'
                                    },
               'EnvironmentLinks' => {
                                       'class' => 'Paws::ElasticBeanstalk::EnvironmentLink',
                                       'type' => 'ArrayRef[ElasticBeanstalk_EnvironmentLink]'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'Health' => {
                             'type' => 'Str'
                           },
               'DateCreated' => {
                                  'type' => 'Str'
                                },
               'PlatformArn' => {
                                  'type' => 'Str'
                                },
               'EndpointURL' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::EnvironmentDescription

=head1 ATTRIBUTES


=head2 AbortableOperationInProgress => Bool

Indicates if there is an in-progress environment configuration update
or application version deployment that you can cancel.

C<true:> There is an update in progress.

C<false:> There are no updates currently in progress.


=head2 ApplicationName => Str

The name of the application associated with this environment.


=head2 CNAME => Str

The URL to the CNAME for this environment.


=head2 DateCreated => Str

The creation date for this environment.


=head2 DateUpdated => Str

The last modified date for this environment.


=head2 Description => Str

Describes this environment.


=head2 EndpointURL => Str

For load-balanced, autoscaling environments, the URL to the
LoadBalancer. For single-instance environments, the IP address of the
instance.


=head2 EnvironmentArn => Str

The environment's Amazon Resource Name (ARN), which can be used in
other API requests that require an ARN.


=head2 EnvironmentId => Str

The ID of this environment.


=head2 EnvironmentLinks => ArrayRef[ElasticBeanstalk_EnvironmentLink]

A list of links to other environments in the same group.


=head2 EnvironmentName => Str

The name of this environment.


=head2 Health => Str

Describes the health status of the environment. AWS Elastic Beanstalk
indicates the failure levels for a running environment:

=over

=item *

C<Red>: Indicates the environment is not responsive. Occurs when three
or more consecutive failures occur for an environment.

=item *

C<Yellow>: Indicates that something is wrong. Occurs when two
consecutive failures occur for an environment.

=item *

C<Green>: Indicates the environment is healthy and fully functional.

=item *

C<Grey>: Default health for a new environment. The environment is not
fully launched and health checks have not started or health checks are
suspended during an C<UpdateEnvironment> or C<RestartEnvironment>
request.

=back

Default: C<Grey>

Valid values are: C<"Green">, C<"Yellow">, C<"Red">, C<"Grey">
=head2 HealthStatus => Str

Returns the health status of the application running in your
environment. For more information, see Health Colors and Statuses
(https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html).

Valid values are: C<"NoData">, C<"Unknown">, C<"Pending">, C<"Ok">, C<"Info">, C<"Warning">, C<"Degraded">, C<"Severe">, C<"Suspended">
=head2 PlatformArn => Str

The ARN of the platform.


=head2 Resources => ElasticBeanstalk_EnvironmentResourcesDescription

The description of the AWS resources used by this environment.


=head2 SolutionStackName => Str

The name of the C<SolutionStack> deployed with this environment.


=head2 Status => Str

The current operational status of the environment:

=over

=item *

C<Launching>: Environment is in the process of initial deployment.

=item *

C<Updating>: Environment is in the process of updating its
configuration settings or application version.

=item *

C<Ready>: Environment is available to have an action performed on it,
such as update or terminate.

=item *

C<Terminating>: Environment is in the shut-down process.

=item *

C<Terminated>: Environment is not running.

=back


Valid values are: C<"Launching">, C<"Updating">, C<"Ready">, C<"Terminating">, C<"Terminated">
=head2 TemplateName => Str

The name of the configuration template used to originally launch this
environment.


=head2 Tier => ElasticBeanstalk_EnvironmentTier

Describes the current tier of this environment.


=head2 VersionLabel => Str

The application version deployed in this environment.


=head2 _request_id => Str


=cut

