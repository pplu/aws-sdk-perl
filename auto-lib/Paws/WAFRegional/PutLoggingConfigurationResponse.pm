# Generated from json/callresult_class.tt

package Paws::WAFRegional::PutLoggingConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_LoggingConfiguration/;
  has LoggingConfiguration => (is => 'ro', isa => WAFRegional_LoggingConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LoggingConfiguration' => {
                                           'class' => 'Paws::WAFRegional::LoggingConfiguration',
                                           'type' => 'WAFRegional_LoggingConfiguration'
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

Paws::WAFRegional::PutLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 LoggingConfiguration => WAFRegional_LoggingConfiguration

The LoggingConfiguration that you submitted in the request.


=head2 _request_id => Str


=cut

1;