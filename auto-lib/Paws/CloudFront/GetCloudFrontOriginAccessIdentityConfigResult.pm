
package Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfigResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_CloudFrontOriginAccessIdentityConfig/;
  has CloudFrontOriginAccessIdentityConfig => (is => 'ro', isa => CloudFront_CloudFrontOriginAccessIdentityConfig);
  has ETag => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CloudFrontOriginAccessIdentityConfig' => {
                                                           'class' => 'Paws::CloudFront::CloudFrontOriginAccessIdentityConfig',
                                                           'type' => 'CloudFront_CloudFrontOriginAccessIdentityConfig'
                                                         },
               'ETag' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfigResult

=head1 ATTRIBUTES


=head2 CloudFrontOriginAccessIdentityConfig => CloudFront_CloudFrontOriginAccessIdentityConfig

The origin access identity's configuration information.



=head2 ETag => Str

The current version of the configuration. For example:
C<E2QWRUHAPOMQZL>.




=cut

