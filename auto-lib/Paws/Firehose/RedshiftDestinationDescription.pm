# Generated from default/object.tt
package Paws::Firehose::RedshiftDestinationDescription;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Firehose::Types qw/Firehose_S3DestinationDescription Firehose_RedshiftRetryOptions Firehose_CopyCommand Firehose_ProcessingConfiguration Firehose_CloudWatchLoggingOptions/;
  has CloudWatchLoggingOptions => (is => 'ro', isa => Firehose_CloudWatchLoggingOptions);
  has ClusterJDBCURL => (is => 'ro', isa => Str, required => 1);
  has CopyCommand => (is => 'ro', isa => Firehose_CopyCommand, required => 1);
  has ProcessingConfiguration => (is => 'ro', isa => Firehose_ProcessingConfiguration);
  has RetryOptions => (is => 'ro', isa => Firehose_RedshiftRetryOptions);
  has RoleARN => (is => 'ro', isa => Str, required => 1);
  has S3BackupDescription => (is => 'ro', isa => Firehose_S3DestinationDescription);
  has S3BackupMode => (is => 'ro', isa => Str);
  has S3DestinationDescription => (is => 'ro', isa => Firehose_S3DestinationDescription, required => 1);
  has Username => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CopyCommand' => {
                                  'type' => 'Firehose_CopyCommand',
                                  'class' => 'Paws::Firehose::CopyCommand'
                                },
               'CloudWatchLoggingOptions' => {
                                               'class' => 'Paws::Firehose::CloudWatchLoggingOptions',
                                               'type' => 'Firehose_CloudWatchLoggingOptions'
                                             },
               'RetryOptions' => {
                                   'class' => 'Paws::Firehose::RedshiftRetryOptions',
                                   'type' => 'Firehose_RedshiftRetryOptions'
                                 },
               'S3BackupMode' => {
                                   'type' => 'Str'
                                 },
               'ProcessingConfiguration' => {
                                              'class' => 'Paws::Firehose::ProcessingConfiguration',
                                              'type' => 'Firehose_ProcessingConfiguration'
                                            },
               'S3DestinationDescription' => {
                                               'type' => 'Firehose_S3DestinationDescription',
                                               'class' => 'Paws::Firehose::S3DestinationDescription'
                                             },
               'S3BackupDescription' => {
                                          'type' => 'Firehose_S3DestinationDescription',
                                          'class' => 'Paws::Firehose::S3DestinationDescription'
                                        },
               'RoleARN' => {
                              'type' => 'Str'
                            },
               'ClusterJDBCURL' => {
                                     'type' => 'Str'
                                   },
               'Username' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'RoleARN' => 1,
                    'ClusterJDBCURL' => 1,
                    'Username' => 1,
                    'CopyCommand' => 1,
                    'S3DestinationDescription' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::RedshiftDestinationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::RedshiftDestinationDescription object:

  $service_obj->Method(Att1 => { CloudWatchLoggingOptions => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::RedshiftDestinationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLoggingOptions

=head1 DESCRIPTION

Describes a destination in Amazon Redshift.

=head1 ATTRIBUTES


=head2 CloudWatchLoggingOptions => Firehose_CloudWatchLoggingOptions

  The Amazon CloudWatch logging options for your delivery stream.


=head2 B<REQUIRED> ClusterJDBCURL => Str

  The database connection string.


=head2 B<REQUIRED> CopyCommand => Firehose_CopyCommand

  The C<COPY> command.


=head2 ProcessingConfiguration => Firehose_ProcessingConfiguration

  The data processing configuration.


=head2 RetryOptions => Firehose_RedshiftRetryOptions

  The retry behavior in case Kinesis Data Firehose is unable to deliver
documents to Amazon Redshift. Default value is 3600 (60 minutes).


=head2 B<REQUIRED> RoleARN => Str

  The Amazon Resource Name (ARN) of the AWS credentials. For more
information, see Amazon Resource Names (ARNs) and AWS Service
Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


=head2 S3BackupDescription => Firehose_S3DestinationDescription

  The configuration for backup in Amazon S3.


=head2 S3BackupMode => Str

  The Amazon S3 backup mode.


=head2 B<REQUIRED> S3DestinationDescription => Firehose_S3DestinationDescription

  The Amazon S3 destination.


=head2 B<REQUIRED> Username => Str

  The name of the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

