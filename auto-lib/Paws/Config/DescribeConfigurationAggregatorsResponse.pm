# Generated from json/callresult_class.tt

package Paws::Config::DescribeConfigurationAggregatorsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ConfigurationAggregator/;
  has ConfigurationAggregators => (is => 'ro', isa => ArrayRef[Config_ConfigurationAggregator]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConfigurationAggregators' => {
                                               'class' => 'Paws::Config::ConfigurationAggregator',
                                               'type' => 'ArrayRef[Config_ConfigurationAggregator]'
                                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigurationAggregatorsResponse

=head1 ATTRIBUTES


=head2 ConfigurationAggregators => ArrayRef[Config_ConfigurationAggregator]

Returns a ConfigurationAggregators object.


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;