# Generated from default/object.tt
package Paws::Firehose::ElasticsearchDestinationDescription;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Firehose::Types qw/Firehose_S3DestinationDescription Firehose_ElasticsearchRetryOptions Firehose_ElasticsearchBufferingHints Firehose_CloudWatchLoggingOptions Firehose_ProcessingConfiguration/;
  has BufferingHints => (is => 'ro', isa => Firehose_ElasticsearchBufferingHints);
  has CloudWatchLoggingOptions => (is => 'ro', isa => Firehose_CloudWatchLoggingOptions);
  has ClusterEndpoint => (is => 'ro', isa => Str);
  has DomainARN => (is => 'ro', isa => Str);
  has IndexName => (is => 'ro', isa => Str);
  has IndexRotationPeriod => (is => 'ro', isa => Str);
  has ProcessingConfiguration => (is => 'ro', isa => Firehose_ProcessingConfiguration);
  has RetryOptions => (is => 'ro', isa => Firehose_ElasticsearchRetryOptions);
  has RoleARN => (is => 'ro', isa => Str);
  has S3BackupMode => (is => 'ro', isa => Str);
  has S3DestinationDescription => (is => 'ro', isa => Firehose_S3DestinationDescription);
  has TypeName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TypeName' => {
                               'type' => 'Str'
                             },
               'ClusterEndpoint' => {
                                      'type' => 'Str'
                                    },
               'S3BackupMode' => {
                                   'type' => 'Str'
                                 },
               'RetryOptions' => {
                                   'type' => 'Firehose_ElasticsearchRetryOptions',
                                   'class' => 'Paws::Firehose::ElasticsearchRetryOptions'
                                 },
               'S3DestinationDescription' => {
                                               'type' => 'Firehose_S3DestinationDescription',
                                               'class' => 'Paws::Firehose::S3DestinationDescription'
                                             },
               'DomainARN' => {
                                'type' => 'Str'
                              },
               'CloudWatchLoggingOptions' => {
                                               'type' => 'Firehose_CloudWatchLoggingOptions',
                                               'class' => 'Paws::Firehose::CloudWatchLoggingOptions'
                                             },
               'IndexRotationPeriod' => {
                                          'type' => 'Str'
                                        },
               'BufferingHints' => {
                                     'class' => 'Paws::Firehose::ElasticsearchBufferingHints',
                                     'type' => 'Firehose_ElasticsearchBufferingHints'
                                   },
               'ProcessingConfiguration' => {
                                              'class' => 'Paws::Firehose::ProcessingConfiguration',
                                              'type' => 'Firehose_ProcessingConfiguration'
                                            },
               'RoleARN' => {
                              'type' => 'Str'
                            },
               'IndexName' => {
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

Paws::Firehose::ElasticsearchDestinationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::ElasticsearchDestinationDescription object:

  $service_obj->Method(Att1 => { BufferingHints => $value, ..., TypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::ElasticsearchDestinationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->BufferingHints

=head1 DESCRIPTION

The destination description in Amazon ES.

=head1 ATTRIBUTES


=head2 BufferingHints => Firehose_ElasticsearchBufferingHints

  The buffering options.


=head2 CloudWatchLoggingOptions => Firehose_CloudWatchLoggingOptions

  The Amazon CloudWatch logging options.


=head2 ClusterEndpoint => Str

  The endpoint to use when communicating with the cluster. Kinesis Data
Firehose uses either this C<ClusterEndpoint> or the C<DomainARN> field
to send data to Amazon ES.


=head2 DomainARN => Str

  The ARN of the Amazon ES domain. For more information, see Amazon
Resource Names (ARNs) and AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).

Kinesis Data Firehose uses either C<ClusterEndpoint> or C<DomainARN> to
send data to Amazon ES.


=head2 IndexName => Str

  The Elasticsearch index name.


=head2 IndexRotationPeriod => Str

  The Elasticsearch index rotation period


=head2 ProcessingConfiguration => Firehose_ProcessingConfiguration

  The data processing configuration.


=head2 RetryOptions => Firehose_ElasticsearchRetryOptions

  The Amazon ES retry options.


=head2 RoleARN => Str

  The Amazon Resource Name (ARN) of the AWS credentials. For more
information, see Amazon Resource Names (ARNs) and AWS Service
Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


=head2 S3BackupMode => Str

  The Amazon S3 backup mode.


=head2 S3DestinationDescription => Firehose_S3DestinationDescription

  The Amazon S3 destination.


=head2 TypeName => Str

  The Elasticsearch type name. This applies to Elasticsearch 6.x and
lower versions. For Elasticsearch 7.x, there's no value for
C<TypeName>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

