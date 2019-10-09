
package Paws::S3::ListBucketAnalyticsConfigurationsOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::S3::Types qw/S3_AnalyticsConfiguration/;
  has AnalyticsConfigurationList => (is => 'ro', isa => ArrayRef[S3_AnalyticsConfiguration]);
  has ContinuationToken => (is => 'ro', isa => Str);
  has IsTruncated => (is => 'ro', isa => Bool);
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
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ContinuationToken' => {
                                        'type' => 'Str'
                                      },
               'AnalyticsConfigurationList' => {
                                                 'class' => 'Paws::S3::AnalyticsConfiguration',
                                                 'type' => 'ArrayRef[S3_AnalyticsConfiguration]'
                                               }
             },
  'NameInRequest' => {
                       'AnalyticsConfigurationList' => 'AnalyticsConfiguration'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListBucketAnalyticsConfigurationsOutput

=head1 ATTRIBUTES


=head2 AnalyticsConfigurationList => ArrayRef[S3_AnalyticsConfiguration]

The list of analytics configurations for a bucket.



=head2 ContinuationToken => Str

The ContinuationToken that represents where this request began.



=head2 IsTruncated => Bool

Indicates whether the returned list of analytics configurations is
complete. A value of true indicates that the list is not complete and
the NextContinuationToken will be provided for a subsequent request.



=head2 NextContinuationToken => Str

NextContinuationToken is sent when isTruncated is true, which indicates
that there are more analytics configurations to list. The next request
must include this NextContinuationToken. The token is obfuscated and is
not a usable value.




=cut

