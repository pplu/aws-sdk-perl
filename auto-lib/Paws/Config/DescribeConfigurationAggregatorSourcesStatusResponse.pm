# Generated from json/callresult_class.tt

package Paws::Config::DescribeConfigurationAggregatorSourcesStatusResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_AggregatedSourceStatus/;
  has AggregatedSourceStatusList => (is => 'ro', isa => ArrayRef[Config_AggregatedSourceStatus]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AggregatedSourceStatusList' => {
                                                 'type' => 'ArrayRef[Config_AggregatedSourceStatus]',
                                                 'class' => 'Paws::Config::AggregatedSourceStatus'
                                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigurationAggregatorSourcesStatusResponse

=head1 ATTRIBUTES


=head2 AggregatedSourceStatusList => ArrayRef[Config_AggregatedSourceStatus]

Returns an AggregatedSourceStatus object.


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;