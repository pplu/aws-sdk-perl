
package Paws::CloudFront::GetInvalidationResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_Invalidation/;
  has Invalidation => (is => 'ro', isa => CloudFront_Invalidation);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'Invalidation');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Invalidation' => {
                                   'class' => 'Paws::CloudFront::Invalidation',
                                   'type' => 'CloudFront_Invalidation'
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

Paws::CloudFront::GetInvalidationResult

=head1 ATTRIBUTES


=head2 Invalidation => CloudFront_Invalidation

The invalidation's information. For more information, see Invalidation
Complex Type
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/InvalidationDatatype.html).




=cut

