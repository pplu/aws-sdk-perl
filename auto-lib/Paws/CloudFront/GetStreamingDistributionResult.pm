
package Paws::CloudFront::GetStreamingDistributionResult;
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
                                            'type' => 'CloudFront_StreamingDistribution',
                                            'class' => 'Paws::CloudFront::StreamingDistribution'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ETag' => {
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

Paws::CloudFront::GetStreamingDistributionResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the streaming distribution's information. For
example: C<E2QWRUHAPOMQZL>.



=head2 StreamingDistribution => CloudFront_StreamingDistribution

The streaming distribution's information.




=cut

