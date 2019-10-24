# Generated from default/object.tt
package Paws::CodeBuild::LogsLocation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeBuild::Types qw/CodeBuild_S3LogsConfig CodeBuild_CloudWatchLogsConfig/;
  has CloudWatchLogs => (is => 'ro', isa => CodeBuild_CloudWatchLogsConfig);
  has DeepLink => (is => 'ro', isa => Str);
  has GroupName => (is => 'ro', isa => Str);
  has S3DeepLink => (is => 'ro', isa => Str);
  has S3Logs => (is => 'ro', isa => CodeBuild_S3LogsConfig);
  has StreamName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3DeepLink' => {
                                 'type' => 'Str'
                               },
               'S3Logs' => {
                             'class' => 'Paws::CodeBuild::S3LogsConfig',
                             'type' => 'CodeBuild_S3LogsConfig'
                           },
               'GroupName' => {
                                'type' => 'Str'
                              },
               'CloudWatchLogs' => {
                                     'class' => 'Paws::CodeBuild::CloudWatchLogsConfig',
                                     'type' => 'CodeBuild_CloudWatchLogsConfig'
                                   },
               'StreamName' => {
                                 'type' => 'Str'
                               },
               'DeepLink' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'S3DeepLink' => 's3DeepLink',
                       'S3Logs' => 's3Logs',
                       'GroupName' => 'groupName',
                       'CloudWatchLogs' => 'cloudWatchLogs',
                       'StreamName' => 'streamName',
                       'DeepLink' => 'deepLink'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::LogsLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::LogsLocation object:

  $service_obj->Method(Att1 => { CloudWatchLogs => $value, ..., StreamName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::LogsLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLogs

=head1 DESCRIPTION

Information about build logs in Amazon CloudWatch Logs.

=head1 ATTRIBUTES


=head2 CloudWatchLogs => CodeBuild_CloudWatchLogsConfig

  Information about Amazon CloudWatch Logs for a build project.


=head2 DeepLink => Str

  The URL to an individual build log in Amazon CloudWatch Logs.


=head2 GroupName => Str

  The name of the Amazon CloudWatch Logs group for the build logs.


=head2 S3DeepLink => Str

  The URL to a build log in an S3 bucket.


=head2 S3Logs => CodeBuild_S3LogsConfig

  Information about S3 logs for a build project.


=head2 StreamName => Str

  The name of the Amazon CloudWatch Logs stream for the build logs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

