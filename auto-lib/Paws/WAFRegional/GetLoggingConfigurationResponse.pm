# Generated from json/callresult_class.tt

package Paws::WAFRegional::GetLoggingConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_LoggingConfiguration/;
  has LoggingConfiguration => (is => 'ro', isa => WAFRegional_LoggingConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LoggingConfiguration' => {
                                           'class' => 'Paws::WAFRegional::LoggingConfiguration',
                                           'type' => 'WAFRegional_LoggingConfiguration'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 LoggingConfiguration => WAFRegional_LoggingConfiguration

The LoggingConfiguration for the specified web ACL.


=head2 _request_id => Str


=cut

1;