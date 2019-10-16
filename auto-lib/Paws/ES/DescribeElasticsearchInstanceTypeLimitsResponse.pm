
package Paws::ES::DescribeElasticsearchInstanceTypeLimitsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ES::Types qw/ES_LimitsByRole/;
  has LimitsByRole => (is => 'ro', isa => ES_LimitsByRole);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LimitsByRole' => {
                                   'class' => 'Paws::ES::LimitsByRole',
                                   'type' => 'ES_LimitsByRole'
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

Paws::ES::DescribeElasticsearchInstanceTypeLimitsResponse

=head1 ATTRIBUTES


=head2 LimitsByRole => ES_LimitsByRole




=head2 _request_id => Str


=cut

