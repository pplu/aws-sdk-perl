
package Paws::CloudFront::ListDistributionsResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_DistributionList/;
  has DistributionList => (is => 'ro', isa => CloudFront_DistributionList);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'DistributionList');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DistributionList' => {
                                       'class' => 'Paws::CloudFront::DistributionList',
                                       'type' => 'CloudFront_DistributionList'
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

Paws::CloudFront::ListDistributionsResult

=head1 ATTRIBUTES


=head2 DistributionList => CloudFront_DistributionList

The C<DistributionList> type.




=cut

