
package Paws::CloudFront::GetStreamingDistributionConfigResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_StreamingDistributionConfig/;
  has ETag => (is => 'ro', isa => Str);
  has StreamingDistributionConfig => (is => 'ro', isa => CloudFront_StreamingDistributionConfig);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'StreamingDistributionConfig');
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
               'StreamingDistributionConfig' => {
                                                  'class' => 'Paws::CloudFront::StreamingDistributionConfig',
                                                  'type' => 'CloudFront_StreamingDistributionConfig'
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

Paws::CloudFront::GetStreamingDistributionConfigResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the configuration. For example:
C<E2QWRUHAPOMQZL>.



=head2 StreamingDistributionConfig => CloudFront_StreamingDistributionConfig

The streaming distribution's configuration information.




=cut

