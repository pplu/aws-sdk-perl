package Paws::CodeBuild::CloudWatchLogsConfig;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', request_name => 'groupName', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has StreamName => (is => 'ro', isa => 'Str', request_name => 'streamName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::CloudWatchLogsConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::CloudWatchLogsConfig object:

  $service_obj->Method(Att1 => { GroupName => $value, ..., StreamName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::CloudWatchLogsConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupName

=head1 DESCRIPTION

Information about Amazon CloudWatch Logs for a build project.

=head1 ATTRIBUTES


=head2 GroupName => Str

  The group name of the logs in Amazon CloudWatch Logs. For more
information, see Working with Log Groups and Log Streams
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html).


=head2 B<REQUIRED> Status => Str

  The current status of the logs in Amazon CloudWatch Logs for a build
project. Valid values are:

=over

=item *

C<ENABLED>: Amazon CloudWatch Logs are enabled for this build project.

=item *

C<DISABLED>: Amazon CloudWatch Logs are not enabled for this build
project.

=back



=head2 StreamName => Str

  The prefix of the stream name of the Amazon CloudWatch Logs. For more
information, see Working with Log Groups and Log Streams
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

