
package Paws::CloudFront::GetDistributionConfigResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_DistributionConfig/;
  has DistributionConfig => (is => 'ro', isa => CloudFront_DistributionConfig);
  has ETag => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DistributionConfig' => {
                                         'class' => 'Paws::CloudFront::DistributionConfig',
                                         'type' => 'CloudFront_DistributionConfig'
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

Paws::CloudFront::GetDistributionConfigResult

=head1 ATTRIBUTES


=head2 DistributionConfig => CloudFront_DistributionConfig

The distribution's configuration information.



=head2 ETag => Str

The current version of the configuration. For example:
C<E2QWRUHAPOMQZL>.




=cut

