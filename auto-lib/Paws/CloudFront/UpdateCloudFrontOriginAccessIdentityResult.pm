
package Paws::CloudFront::UpdateCloudFrontOriginAccessIdentityResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_CloudFrontOriginAccessIdentity/;
  has CloudFrontOriginAccessIdentity => (is => 'ro', isa => CloudFront_CloudFrontOriginAccessIdentity);
  has ETag => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ETag' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CloudFrontOriginAccessIdentity' => {
                                                     'type' => 'CloudFront_CloudFrontOriginAccessIdentity',
                                                     'class' => 'Paws::CloudFront::CloudFrontOriginAccessIdentity'
                                                   }
             },
  'ParamInHeader' => {
                       'ETag' => 'ETag'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateCloudFrontOriginAccessIdentityResult

=head1 ATTRIBUTES


=head2 CloudFrontOriginAccessIdentity => CloudFront_CloudFrontOriginAccessIdentity

The origin access identity's information.



=head2 ETag => Str

The current version of the configuration. For example:
C<E2QWRUHAPOMQZL>.




=cut

