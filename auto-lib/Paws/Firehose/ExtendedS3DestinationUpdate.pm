# Generated from default/object.tt
package Paws::Firehose::ExtendedS3DestinationUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Firehose::Types qw/Firehose_ProcessingConfiguration Firehose_DataFormatConversionConfiguration Firehose_S3DestinationUpdate Firehose_CloudWatchLoggingOptions Firehose_BufferingHints Firehose_EncryptionConfiguration/;
  has BucketARN => (is => 'ro', isa => Str);
  has BufferingHints => (is => 'ro', isa => Firehose_BufferingHints);
  has CloudWatchLoggingOptions => (is => 'ro', isa => Firehose_CloudWatchLoggingOptions);
  has CompressionFormat => (is => 'ro', isa => Str);
  has DataFormatConversionConfiguration => (is => 'ro', isa => Firehose_DataFormatConversionConfiguration);
  has EncryptionConfiguration => (is => 'ro', isa => Firehose_EncryptionConfiguration);
  has ErrorOutputPrefix => (is => 'ro', isa => Str);
  has Prefix => (is => 'ro', isa => Str);
  has ProcessingConfiguration => (is => 'ro', isa => Firehose_ProcessingConfiguration);
  has RoleARN => (is => 'ro', isa => Str);
  has S3BackupMode => (is => 'ro', isa => Str);
  has S3BackupUpdate => (is => 'ro', isa => Firehose_S3DestinationUpdate);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CompressionFormat' => {
                                        'type' => 'Str'
                                      },
               'ProcessingConfiguration' => {
                                              'class' => 'Paws::Firehose::ProcessingConfiguration',
                                              'type' => 'Firehose_ProcessingConfiguration'
                                            },
               'CloudWatchLoggingOptions' => {
                                               'class' => 'Paws::Firehose::CloudWatchLoggingOptions',
                                               'type' => 'Firehose_CloudWatchLoggingOptions'
                                             },
               'S3BackupMode' => {
                                   'type' => 'Str'
                                 },
               'BufferingHints' => {
                                     'class' => 'Paws::Firehose::BufferingHints',
                                     'type' => 'Firehose_BufferingHints'
                                   },
               'DataFormatConversionConfiguration' => {
                                                        'class' => 'Paws::Firehose::DataFormatConversionConfiguration',
                                                        'type' => 'Firehose_DataFormatConversionConfiguration'
                                                      },
               'Prefix' => {
                             'type' => 'Str'
                           },
               'S3BackupUpdate' => {
                                     'class' => 'Paws::Firehose::S3DestinationUpdate',
                                     'type' => 'Firehose_S3DestinationUpdate'
                                   },
               'EncryptionConfiguration' => {
                                              'class' => 'Paws::Firehose::EncryptionConfiguration',
                                              'type' => 'Firehose_EncryptionConfiguration'
                                            },
               'RoleARN' => {
                              'type' => 'Str'
                            },
               'ErrorOutputPrefix' => {
                                        'type' => 'Str'
                                      },
               'BucketARN' => {
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

Paws::Firehose::ExtendedS3DestinationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::ExtendedS3DestinationUpdate object:

  $service_obj->Method(Att1 => { BucketARN => $value, ..., S3BackupUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::ExtendedS3DestinationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketARN

=head1 DESCRIPTION

Describes an update for a destination in Amazon S3.

=head1 ATTRIBUTES


=head2 BucketARN => Str

  The ARN of the S3 bucket. For more information, see Amazon Resource
Names (ARNs) and AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


=head2 BufferingHints => Firehose_BufferingHints

  The buffering option.


=head2 CloudWatchLoggingOptions => Firehose_CloudWatchLoggingOptions

  The Amazon CloudWatch logging options for your delivery stream.


=head2 CompressionFormat => Str

  The compression format. If no value is specified, the default is
C<UNCOMPRESSED>.


=head2 DataFormatConversionConfiguration => Firehose_DataFormatConversionConfiguration

  The serializer, deserializer, and schema for converting data from the
JSON format to the Parquet or ORC format before writing it to Amazon
S3.


=head2 EncryptionConfiguration => Firehose_EncryptionConfiguration

  The encryption configuration. If no value is specified, the default is
no encryption.


=head2 ErrorOutputPrefix => Str

  A prefix that Kinesis Data Firehose evaluates and adds to failed
records before writing them to S3. This prefix appears immediately
following the bucket name.


=head2 Prefix => Str

  The "YYYY/MM/DD/HH" time format prefix is automatically used for
delivered Amazon S3 files. You can specify an extra prefix to be added
in front of the time format prefix. If the prefix ends with a slash, it
appears as a folder in the S3 bucket. For more information, see Amazon
S3 Object Name Format
(http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#s3-object-name)
in the I<Amazon Kinesis Data Firehose Developer Guide>.


=head2 ProcessingConfiguration => Firehose_ProcessingConfiguration

  The data processing configuration.


=head2 RoleARN => Str

  The Amazon Resource Name (ARN) of the AWS credentials. For more
information, see Amazon Resource Names (ARNs) and AWS Service
Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


=head2 S3BackupMode => Str

  Enables or disables Amazon S3 backup mode.


=head2 S3BackupUpdate => Firehose_S3DestinationUpdate

  The Amazon S3 destination for backup.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

