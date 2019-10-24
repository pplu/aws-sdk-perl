# Generated from default/object.tt
package Paws::Firehose::ElasticsearchDestinationUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Firehose::Types qw/Firehose_ProcessingConfiguration Firehose_S3DestinationUpdate Firehose_CloudWatchLoggingOptions Firehose_ElasticsearchBufferingHints Firehose_ElasticsearchRetryOptions/;
  has BufferingHints => (is => 'ro', isa => Firehose_ElasticsearchBufferingHints);
  has CloudWatchLoggingOptions => (is => 'ro', isa => Firehose_CloudWatchLoggingOptions);
  has DomainARN => (is => 'ro', isa => Str);
  has IndexName => (is => 'ro', isa => Str);
  has IndexRotationPeriod => (is => 'ro', isa => Str);
  has ProcessingConfiguration => (is => 'ro', isa => Firehose_ProcessingConfiguration);
  has RetryOptions => (is => 'ro', isa => Firehose_ElasticsearchRetryOptions);
  has RoleARN => (is => 'ro', isa => Str);
  has S3Update => (is => 'ro', isa => Firehose_S3DestinationUpdate);
  has TypeName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3Update' => {
                               'class' => 'Paws::Firehose::S3DestinationUpdate',
                               'type' => 'Firehose_S3DestinationUpdate'
                             },
               'ProcessingConfiguration' => {
                                              'class' => 'Paws::Firehose::ProcessingConfiguration',
                                              'type' => 'Firehose_ProcessingConfiguration'
                                            },
               'CloudWatchLoggingOptions' => {
                                               'class' => 'Paws::Firehose::CloudWatchLoggingOptions',
                                               'type' => 'Firehose_CloudWatchLoggingOptions'
                                             },
               'BufferingHints' => {
                                     'class' => 'Paws::Firehose::ElasticsearchBufferingHints',
                                     'type' => 'Firehose_ElasticsearchBufferingHints'
                                   },
               'RetryOptions' => {
                                   'class' => 'Paws::Firehose::ElasticsearchRetryOptions',
                                   'type' => 'Firehose_ElasticsearchRetryOptions'
                                 },
               'IndexRotationPeriod' => {
                                          'type' => 'Str'
                                        },
               'DomainARN' => {
                                'type' => 'Str'
                              },
               'IndexName' => {
                                'type' => 'Str'
                              },
               'RoleARN' => {
                              'type' => 'Str'
                            },
               'TypeName' => {
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

Paws::Firehose::ElasticsearchDestinationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::ElasticsearchDestinationUpdate object:

  $service_obj->Method(Att1 => { BufferingHints => $value, ..., TypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::ElasticsearchDestinationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->BufferingHints

=head1 DESCRIPTION

Describes an update for a destination in Amazon ES.

=head1 ATTRIBUTES


=head2 BufferingHints => Firehose_ElasticsearchBufferingHints

  The buffering options. If no value is specified,
C<ElasticsearchBufferingHints> object default values are used.


=head2 CloudWatchLoggingOptions => Firehose_CloudWatchLoggingOptions

  The CloudWatch logging options for your delivery stream.


=head2 DomainARN => Str

  The ARN of the Amazon ES domain. The IAM role must have permissions for
C<DescribeElasticsearchDomain>, C<DescribeElasticsearchDomains>, and
C<DescribeElasticsearchDomainConfig> after assuming the IAM role
specified in C<RoleARN>. For more information, see Amazon Resource
Names (ARNs) and AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


=head2 IndexName => Str

  The Elasticsearch index name.


=head2 IndexRotationPeriod => Str

  The Elasticsearch index rotation period. Index rotation appends a
timestamp to C<IndexName> to facilitate the expiration of old data. For
more information, see Index Rotation for the Amazon ES Destination
(http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation).
Default value is C<OneDay>.


=head2 ProcessingConfiguration => Firehose_ProcessingConfiguration

  The data processing configuration.


=head2 RetryOptions => Firehose_ElasticsearchRetryOptions

  The retry behavior in case Kinesis Data Firehose is unable to deliver
documents to Amazon ES. The default value is 300 (5 minutes).


=head2 RoleARN => Str

  The Amazon Resource Name (ARN) of the IAM role to be assumed by Kinesis
Data Firehose for calling the Amazon ES Configuration API and for
indexing documents. For more information, see Grant Kinesis Data
Firehose Access to an Amazon S3 Destination
(http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3)
and Amazon Resource Names (ARNs) and AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


=head2 S3Update => Firehose_S3DestinationUpdate

  The Amazon S3 destination.


=head2 TypeName => Str

  The Elasticsearch type name. For Elasticsearch 6.x, there can be only
one type per index. If you try to specify a new type for an existing
index that already has another type, Kinesis Data Firehose returns an
error during runtime.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

