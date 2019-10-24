# Generated from json/callresult_class.tt

package Paws::Config::PutConfigurationAggregatorResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw/Config_ConfigurationAggregator/;
  has ConfigurationAggregator => (is => 'ro', isa => Config_ConfigurationAggregator);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfigurationAggregator' => {
                                              'class' => 'Paws::Config::ConfigurationAggregator',
                                              'type' => 'Config_ConfigurationAggregator'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::PutConfigurationAggregatorResponse

=head1 ATTRIBUTES


=head2 ConfigurationAggregator => Config_ConfigurationAggregator

Returns a ConfigurationAggregator object.


=head2 _request_id => Str


=cut

1;