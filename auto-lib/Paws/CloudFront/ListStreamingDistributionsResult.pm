
package Paws::CloudFront::ListStreamingDistributionsResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_StreamingDistributionList/;
  has StreamingDistributionList => (is => 'ro', isa => CloudFront_StreamingDistributionList);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'StreamingDistributionList');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StreamingDistributionList' => {
                                                'class' => 'Paws::CloudFront::StreamingDistributionList',
                                                'type' => 'CloudFront_StreamingDistributionList'
                                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListStreamingDistributionsResult

=head1 ATTRIBUTES


=head2 StreamingDistributionList => CloudFront_StreamingDistributionList

The C<StreamingDistributionList> type.




=cut

