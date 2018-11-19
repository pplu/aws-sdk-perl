package Paws::CodeBuild::LogsConfig;
  use Moose;
  has CloudWatchLogs => (is => 'ro', isa => 'Paws::CodeBuild::CloudWatchLogsConfig', request_name => 'cloudWatchLogs', traits => ['NameInRequest']);
  has S3Logs => (is => 'ro', isa => 'Paws::CodeBuild::S3LogsConfig', request_name => 's3Logs', traits => ['NameInRequest']);
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


=head2 CloudWatchLogs => L<Paws::CodeBuild::CloudWatchLogsConfig>

  Information about Amazon CloudWatch Logs for a build project. Amazon
CloudWatch Logs are enabled by default.


=head2 S3Logs => L<Paws::CodeBuild::S3LogsConfig>

  Information about logs built to an S3 bucket for a build project. S3
logs are not enabled by default.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

