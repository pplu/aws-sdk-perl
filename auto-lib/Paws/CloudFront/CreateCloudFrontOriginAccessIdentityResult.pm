
package Paws::CloudFront::CreateCloudFrontOriginAccessIdentityResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_CloudFrontOriginAccessIdentity/;
  has CloudFrontOriginAccessIdentity => (is => 'ro', isa => CloudFront_CloudFrontOriginAccessIdentity);
  has ETag => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'ETag' => 'ETag',
                       'Location' => 'Location'
                     },
  'types' => {
               'ETag' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Location' => {
                               'type' => 'Str'
                             },
               'CloudFrontOriginAccessIdentity' => {
                                                     'class' => 'Paws::CloudFront::CloudFrontOriginAccessIdentity',
                                                     'type' => 'CloudFront_CloudFrontOriginAccessIdentity'
                                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateCloudFrontOriginAccessIdentityResult

=head1 ATTRIBUTES


=head2 CloudFrontOriginAccessIdentity => CloudFront_CloudFrontOriginAccessIdentity

The origin access identity's information.



=head2 ETag => Str

The current version of the origin access identity created.



=head2 Location => Str

The fully qualified URI of the new origin access identity just created.
For example:
C<https://cloudfront.amazonaws.com/2010-11-01/origin-access-identity/cloudfront/E74FTE3AJFJ256A>.




=cut

