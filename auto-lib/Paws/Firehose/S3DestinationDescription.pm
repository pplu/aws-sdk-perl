# Generated from default/object.tt
package Paws::Firehose::S3DestinationDescription;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Firehose::Types qw/Firehose_EncryptionConfiguration Firehose_CloudWatchLoggingOptions Firehose_BufferingHints/;
  has BucketARN => (is => 'ro', isa => Str, required => 1);
  has BufferingHints => (is => 'ro', isa => Firehose_BufferingHints, required => 1);
  has CloudWatchLoggingOptions => (is => 'ro', isa => Firehose_CloudWatchLoggingOptions);
  has CompressionFormat => (is => 'ro', isa => Str, required => 1);
  has EncryptionConfiguration => (is => 'ro', isa => Firehose_EncryptionConfiguration, required => 1);
  has ErrorOutputPrefix => (is => 'ro', isa => Str);
  has Prefix => (is => 'ro', isa => Str);
  has RoleARN => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EncryptionConfiguration' => {
                                              'class' => 'Paws::Firehose::EncryptionConfiguration',
                                              'type' => 'Firehose_EncryptionConfiguration'
                                            },
               'CompressionFormat' => {
                                        'type' => 'Str'
                                      },
               'Prefix' => {
                             'type' => 'Str'
                           },
               'RoleARN' => {
                              'type' => 'Str'
                            },
               'ErrorOutputPrefix' => {
                                        'type' => 'Str'
                                      },
               'BucketARN' => {
                                'type' => 'Str'
                              },
               'CloudWatchLoggingOptions' => {
                                               'type' => 'Firehose_CloudWatchLoggingOptions',
                                               'class' => 'Paws::Firehose::CloudWatchLoggingOptions'
                                             },
               'BufferingHints' => {
                                     'type' => 'Firehose_BufferingHints',
                                     'class' => 'Paws::Firehose::BufferingHints'
                                   }
             },
  'IsRequired' => {
                    'RoleARN' => 1,
                    'BufferingHints' => 1,
                    'CompressionFormat' => 1,
                    'BucketARN' => 1,
                    'EncryptionConfiguration' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::S3DestinationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::S3DestinationDescription object:

  $service_obj->Method(Att1 => { BucketARN => $value, ..., RoleARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::S3DestinationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketARN

=head1 DESCRIPTION

Describes a destination in Amazon S3.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketARN => Str

  The ARN of the S3 bucket. For more information, see Amazon Resource
Names (ARNs) and AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


=head2 B<REQUIRED> BufferingHints => Firehose_BufferingHints

  The buffering option. If no value is specified, C<BufferingHints>
object default values are used.


=head2 CloudWatchLoggingOptions => Firehose_CloudWatchLoggingOptions

  The Amazon CloudWatch logging options for your delivery stream.


=head2 B<REQUIRED> CompressionFormat => Str

  The compression format. If no value is specified, the default is
C<UNCOMPRESSED>.


=head2 B<REQUIRED> EncryptionConfiguration => Firehose_EncryptionConfiguration

  The encryption configuration. If no value is specified, the default is
no encryption.


=head2 ErrorOutputPrefix => Str

  A prefix that Kinesis Data Firehose evaluates and adds to failed
records before writing them to S3. This prefix appears immediately
following the bucket name. For information about how to specify this
prefix, see Custom Prefixes for Amazon S3 Objects
(https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html).


=head2 Prefix => Str

  The "YYYY/MM/DD/HH" time format prefix is automatically used for
delivered Amazon S3 files. You can also specify a custom prefix, as
described in Custom Prefixes for Amazon S3 Objects
(https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html).


=head2 B<REQUIRED> RoleARN => Str

  The Amazon Resource Name (ARN) of the AWS credentials. For more
information, see Amazon Resource Names (ARNs) and AWS Service
Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

