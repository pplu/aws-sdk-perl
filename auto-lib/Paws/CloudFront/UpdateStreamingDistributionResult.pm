
package Paws::CloudFront::UpdateStreamingDistributionResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_StreamingDistribution/;
  has ETag => (is => 'ro', isa => Str);
  has StreamingDistribution => (is => 'ro', isa => CloudFront_StreamingDistribution);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'StreamingDistribution');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StreamingDistribution' => {
                                            'class' => 'Paws::CloudFront::StreamingDistribution',
                                            'type' => 'CloudFront_StreamingDistribution'
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

Paws::CloudFront::UpdateStreamingDistributionResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the configuration. For example:
C<E2QWRUHAPOMQZL>.



=head2 StreamingDistribution => CloudFront_StreamingDistribution

The streaming distribution's information.




=cut

