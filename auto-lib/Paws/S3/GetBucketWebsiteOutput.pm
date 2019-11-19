
package Paws::S3::GetBucketWebsiteOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_RedirectAllRequestsTo S3_ErrorDocument S3_IndexDocument S3_RoutingRule/;
  has ErrorDocument => (is => 'ro', isa => S3_ErrorDocument);
  has IndexDocument => (is => 'ro', isa => S3_IndexDocument);
  has RedirectAllRequestsTo => (is => 'ro', isa => S3_RedirectAllRequestsTo);
  has RoutingRules => (is => 'ro', isa => ArrayRef[S3_RoutingRule]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoutingRules' => {
                                   'type' => 'ArrayRef[S3_RoutingRule]',
                                   'class' => 'Paws::S3::RoutingRule'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ErrorDocument' => {
                                    'type' => 'S3_ErrorDocument',
                                    'class' => 'Paws::S3::ErrorDocument'
                                  },
               'IndexDocument' => {
                                    'type' => 'S3_IndexDocument',
                                    'class' => 'Paws::S3::IndexDocument'
                                  },
               'RedirectAllRequestsTo' => {
                                            'class' => 'Paws::S3::RedirectAllRequestsTo',
                                            'type' => 'S3_RedirectAllRequestsTo'
                                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketWebsiteOutput

=head1 ATTRIBUTES


=head2 ErrorDocument => S3_ErrorDocument

The name of the error document for the website.



=head2 IndexDocument => S3_IndexDocument

The name of the index document for the website.



=head2 RedirectAllRequestsTo => S3_RedirectAllRequestsTo

Specifies the redirect behavior of all requests to a website endpoint
of an Amazon S3 bucket.



=head2 RoutingRules => ArrayRef[S3_RoutingRule]

Rules that define when a redirect is applied and the redirect behavior.




=cut

