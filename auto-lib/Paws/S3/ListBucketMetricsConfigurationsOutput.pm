
package Paws::S3::ListBucketMetricsConfigurationsOutput;
  use Moo;

  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::S3::Types qw/S3_MetricsConfiguration/;
  has ContinuationToken => (is => 'ro', isa => Str);
  has IsTruncated => (is => 'ro', isa => Bool);
  has MetricsConfigurationList => (is => 'ro', isa => ArrayRef[S3_MetricsConfiguration]);
  has NextContinuationToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'NextContinuationToken' => {
                                            'type' => 'Str'
                                          },
               'MetricsConfigurationList' => {
                                               'class' => 'Paws::S3::MetricsConfiguration',
                                               'type' => 'ArrayRef[S3_MetricsConfiguration]'
                                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ContinuationToken' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'MetricsConfigurationList' => 'MetricsConfiguration'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListBucketMetricsConfigurationsOutput

=head1 ATTRIBUTES


=head2 ContinuationToken => Str

The marker that is used as a starting point for this metrics
configuration list response. This value is present if it was sent in
the request.



=head2 IsTruncated => Bool

Indicates whether the returned list of metrics configurations is
complete. A value of true indicates that the list is not complete and
the NextContinuationToken will be provided for a subsequent request.



=head2 MetricsConfigurationList => ArrayRef[S3_MetricsConfiguration]

The list of metrics configurations for a bucket.



=head2 NextContinuationToken => Str

The marker used to continue a metrics configuration listing that has
been truncated. Use the NextContinuationToken from a previously
truncated list response to continue the listing. The continuation token
is an opaque value that Amazon S3 understands.




=cut

