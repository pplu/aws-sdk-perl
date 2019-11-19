
package Paws::CloudFront::GetCloudFrontOriginAccessIdentityResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_CloudFrontOriginAccessIdentity/;
  has CloudFrontOriginAccessIdentity => (is => 'ro', isa => CloudFront_CloudFrontOriginAccessIdentity);
  has ETag => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'ETag' => 'ETag'
                     },
  'types' => {
               'ETag' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
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

Paws::CloudFront::GetCloudFrontOriginAccessIdentityResult

=head1 ATTRIBUTES


=head2 CloudFrontOriginAccessIdentity => CloudFront_CloudFrontOriginAccessIdentity

The origin access identity's information.



=head2 ETag => Str

The current version of the origin access identity's information. For
example: C<E2QWRUHAPOMQZL>.




=cut

