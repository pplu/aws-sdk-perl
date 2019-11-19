
package Paws::CloudFront::CreateStreamingDistributionResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_StreamingDistribution/;
  has ETag => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => Str);
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
               'ETag' => {
                           'type' => 'Str'
                         },
               'Location' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInHeader' => {
                       'Location' => 'Location',
                       'ETag' => 'ETag'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateStreamingDistributionResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the streaming distribution created.



=head2 Location => Str

The fully qualified URI of the new streaming distribution resource just
created. For example:
C<https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8>.



=head2 StreamingDistribution => CloudFront_StreamingDistribution

The streaming distribution's information.




=cut

