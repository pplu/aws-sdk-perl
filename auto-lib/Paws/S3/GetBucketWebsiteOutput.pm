
package Paws::S3::GetBucketWebsiteOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_ErrorDocument S3_RoutingRule S3_RedirectAllRequestsTo S3_IndexDocument/;
  has ErrorDocument => (is => 'ro', isa => S3_ErrorDocument);
  has IndexDocument => (is => 'ro', isa => S3_IndexDocument);
  has RedirectAllRequestsTo => (is => 'ro', isa => S3_RedirectAllRequestsTo);
  has RoutingRules => (is => 'ro', isa => ArrayRef[S3_RoutingRule]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RedirectAllRequestsTo' => {
                                            'class' => 'Paws::S3::RedirectAllRequestsTo',
                                            'type' => 'S3_RedirectAllRequestsTo'
                                          },
               'IndexDocument' => {
                                    'class' => 'Paws::S3::IndexDocument',
                                    'type' => 'S3_IndexDocument'
                                  },
               'ErrorDocument' => {
                                    'class' => 'Paws::S3::ErrorDocument',
                                    'type' => 'S3_ErrorDocument'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RoutingRules' => {
                                   'class' => 'Paws::S3::RoutingRule',
                                   'type' => 'ArrayRef[S3_RoutingRule]'
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





=head2 IndexDocument => S3_IndexDocument





=head2 RedirectAllRequestsTo => S3_RedirectAllRequestsTo





=head2 RoutingRules => ArrayRef[S3_RoutingRule]






=cut

