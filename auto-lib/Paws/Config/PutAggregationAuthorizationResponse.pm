# Generated from json/callresult_class.tt

package Paws::Config::PutAggregationAuthorizationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw/Config_AggregationAuthorization/;
  has AggregationAuthorization => (is => 'ro', isa => Config_AggregationAuthorization);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AggregationAuthorization' => {
                                               'class' => 'Paws::Config::AggregationAuthorization',
                                               'type' => 'Config_AggregationAuthorization'
                                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::PutAggregationAuthorizationResponse

=head1 ATTRIBUTES


=head2 AggregationAuthorization => Config_AggregationAuthorization

Returns an AggregationAuthorization object.


=head2 _request_id => Str


=cut

1;