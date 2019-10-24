
package Paws::CloudFront::ListCloudFrontOriginAccessIdentitiesResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_CloudFrontOriginAccessIdentityList/;
  has CloudFrontOriginAccessIdentityList => (is => 'ro', isa => CloudFront_CloudFrontOriginAccessIdentityList);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'CloudFrontOriginAccessIdentityList');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CloudFrontOriginAccessIdentityList' => {
                                                         'class' => 'Paws::CloudFront::CloudFrontOriginAccessIdentityList',
                                                         'type' => 'CloudFront_CloudFrontOriginAccessIdentityList'
                                                       }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListCloudFrontOriginAccessIdentitiesResult

=head1 ATTRIBUTES


=head2 CloudFrontOriginAccessIdentityList => CloudFront_CloudFrontOriginAccessIdentityList

The C<CloudFrontOriginAccessIdentityList> type.




=cut

