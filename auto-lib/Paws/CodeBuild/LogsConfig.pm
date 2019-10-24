# Generated from default/object.tt
package Paws::CodeBuild::LogsConfig;
  use Moo;
  use Types::Standard qw//;
  use Paws::CodeBuild::Types qw/CodeBuild_S3LogsConfig CodeBuild_CloudWatchLogsConfig/;
  has CloudWatchLogs => (is => 'ro', isa => CodeBuild_CloudWatchLogsConfig);
  has S3Logs => (is => 'ro', isa => CodeBuild_S3LogsConfig);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3Logs' => {
                             'class' => 'Paws::CodeBuild::S3LogsConfig',
                             'type' => 'CodeBuild_S3LogsConfig'
                           },
               'CloudWatchLogs' => {
                                     'class' => 'Paws::CodeBuild::CloudWatchLogsConfig',
                                     'type' => 'CodeBuild_CloudWatchLogsConfig'
                                   }
             },
  'NameInRequest' => {
                       'S3Logs' => 's3Logs',
                       'CloudWatchLogs' => 'cloudWatchLogs'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::LogsConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::LogsConfig object:

  $service_obj->Method(Att1 => { CloudWatchLogs => $value, ..., S3Logs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::LogsConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLogs

=head1 DESCRIPTION

Information about logs for a build project. These can be logs in Amazon
CloudWatch Logs, built in a specified S3 bucket, or both.

=head1 ATTRIBUTES


=head2 CloudWatchLogs => CodeBuild_CloudWatchLogsConfig

  Information about Amazon CloudWatch Logs for a build project. Amazon
CloudWatch Logs are enabled by default.


=head2 S3Logs => CodeBuild_S3LogsConfig

  Information about logs built to an S3 bucket for a build project. S3
logs are not enabled by default.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

