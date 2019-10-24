# Generated from json/callresult_class.tt

package Paws::Config::PutRetentionConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw/Config_RetentionConfiguration/;
  has RetentionConfiguration => (is => 'ro', isa => Config_RetentionConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RetentionConfiguration' => {
                                             'class' => 'Paws::Config::RetentionConfiguration',
                                             'type' => 'Config_RetentionConfiguration'
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

Paws::Config::PutRetentionConfigurationResponse

=head1 ATTRIBUTES


=head2 RetentionConfiguration => Config_RetentionConfiguration

Returns a retention configuration object.


=head2 _request_id => Str


=cut

1;