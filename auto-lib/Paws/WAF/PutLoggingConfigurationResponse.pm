# Generated from json/callresult_class.tt

package Paws::WAF::PutLoggingConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_LoggingConfiguration/;
  has LoggingConfiguration => (is => 'ro', isa => WAF_LoggingConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LoggingConfiguration' => {
                                           'type' => 'WAF_LoggingConfiguration',
                                           'class' => 'Paws::WAF::LoggingConfiguration'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::PutLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 LoggingConfiguration => WAF_LoggingConfiguration

The LoggingConfiguration that you submitted in the request.


=head2 _request_id => Str


=cut

1;