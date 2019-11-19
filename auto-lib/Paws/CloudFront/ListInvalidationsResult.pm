
package Paws::CloudFront::ListInvalidationsResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_InvalidationList/;
  has InvalidationList => (is => 'ro', isa => CloudFront_InvalidationList);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'InvalidationList');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InvalidationList' => {
                                       'type' => 'CloudFront_InvalidationList',
                                       'class' => 'Paws::CloudFront::InvalidationList'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListInvalidationsResult

=head1 ATTRIBUTES


=head2 InvalidationList => CloudFront_InvalidationList

Information about invalidation batches.




=cut

