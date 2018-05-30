package Paws::Firehose::RedshiftDestinationConfiguration;
  use Moose;
  has CloudWatchLoggingOptions => (is => 'ro', isa => 'Paws::Firehose::CloudWatchLoggingOptions');
  has ClusterJDBCURL => (is => 'ro', isa => 'Str', required => 1);
  has CopyCommand => (is => 'ro', isa => 'Paws::Firehose::CopyCommand', required => 1);
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has ProcessingConfiguration => (is => 'ro', isa => 'Paws::Firehose::ProcessingConfiguration');
  has RetryOptions => (is => 'ro', isa => 'Paws::Firehose::RedshiftRetryOptions');
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
  has S3BackupConfiguration => (is => 'ro', isa => 'Paws::Firehose::S3DestinationConfiguration');
  has S3BackupMode => (is => 'ro', isa => 'Str');
  has S3Configuration => (is => 'ro', isa => 'Paws::Firehose::S3DestinationConfiguration', required => 1);
  has Username => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::RedshiftDestinationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::RedshiftDestinationConfiguration object:

  $service_obj->Method(Att1 => { CloudWatchLoggingOptions => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::RedshiftDestinationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLoggingOptions

=head1 DESCRIPTION

Describes the configuration of a destination in Amazon Redshift.

=head1 ATTRIBUTES


=head2 CloudWatchLoggingOptions => L<Paws::Firehose::CloudWatchLoggingOptions>

  The CloudWatch logging options for your delivery stream.


=head2 B<REQUIRED> ClusterJDBCURL => Str

  The database connection string.


=head2 B<REQUIRED> CopyCommand => L<Paws::Firehose::CopyCommand>

  The C<COPY> command.


=head2 B<REQUIRED> Password => Str

  The user password.


=head2 ProcessingConfiguration => L<Paws::Firehose::ProcessingConfiguration>

  The data processing configuration.


=head2 RetryOptions => L<Paws::Firehose::RedshiftRetryOptions>

  The retry behavior in case Kinesis Data Firehose is unable to deliver
documents to Amazon Redshift. Default value is 3600 (60 minutes).


=head2 B<REQUIRED> RoleARN => Str

  The Amazon Resource Name (ARN) of the AWS credentials. For more
information, see Amazon Resource Names (ARNs) and AWS Service
Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


=head2 S3BackupConfiguration => L<Paws::Firehose::S3DestinationConfiguration>

  The configuration for backup in Amazon S3.


=head2 S3BackupMode => Str

  The Amazon S3 backup mode.


=head2 B<REQUIRED> S3Configuration => L<Paws::Firehose::S3DestinationConfiguration>

  The configuration for the intermediate Amazon S3 location from which
Amazon Redshift obtains data. Restrictions are described in the topic
for CreateDeliveryStream.

The compression formats C<SNAPPY> or C<ZIP> cannot be specified in
C<RedshiftDestinationConfiguration.S3Configuration> because the Amazon
Redshift C<COPY> operation that reads from the S3 bucket doesn't
support these compression formats.


=head2 B<REQUIRED> Username => Str

  The name of the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

