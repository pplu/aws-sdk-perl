# Generated from json/callresult_class.tt

package Paws::Glue::GetSecurityConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_SecurityConfiguration/;
  has SecurityConfiguration => (is => 'ro', isa => Glue_SecurityConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SecurityConfiguration' => {
                                            'type' => 'Glue_SecurityConfiguration',
                                            'class' => 'Paws::Glue::SecurityConfiguration'
                                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetSecurityConfigurationResponse

=head1 ATTRIBUTES


=head2 SecurityConfiguration => Glue_SecurityConfiguration

The requested security configuration.


=head2 _request_id => Str


=cut

1;