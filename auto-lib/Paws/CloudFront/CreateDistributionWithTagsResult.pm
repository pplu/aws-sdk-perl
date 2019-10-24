
package Paws::CloudFront::CreateDistributionWithTagsResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_Distribution/;
  has Distribution => (is => 'ro', isa => CloudFront_Distribution);
  has ETag => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Distribution' => {
                                   'class' => 'Paws::CloudFront::Distribution',
                                   'type' => 'CloudFront_Distribution'
                                 },
               'ETag' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Location' => {
                               'type' => 'Str'
                             }
             },
  'ParamInHeader' => {
                       'ETag' => 'ETag',
                       'Location' => 'Location'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateDistributionWithTagsResult

=head1 ATTRIBUTES


=head2 Distribution => CloudFront_Distribution

The distribution's information.



=head2 ETag => Str

The current version of the distribution created.



=head2 Location => Str

The fully qualified URI of the new distribution resource just created.
For example:
C<https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5>.




=cut

