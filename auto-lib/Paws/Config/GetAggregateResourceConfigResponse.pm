# Generated from json/callresult_class.tt

package Paws::Config::GetAggregateResourceConfigResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw/Config_ConfigurationItem/;
  has ConfigurationItem => (is => 'ro', isa => Config_ConfigurationItem);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfigurationItem' => {
                                        'class' => 'Paws::Config::ConfigurationItem',
                                        'type' => 'Config_ConfigurationItem'
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

Paws::Config::GetAggregateResourceConfigResponse

=head1 ATTRIBUTES


=head2 ConfigurationItem => Config_ConfigurationItem

Returns a C<ConfigurationItem> object.


=head2 _request_id => Str


=cut

1;