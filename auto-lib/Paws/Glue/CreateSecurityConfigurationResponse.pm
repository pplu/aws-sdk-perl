# Generated from json/callresult_class.tt

package Paws::Glue::CreateSecurityConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has CreatedTimestamp => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'CreatedTimestamp' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateSecurityConfigurationResponse

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The time at which the new security configuration was created.


=head2 Name => Str

The name assigned to the new security configuration.


=head2 _request_id => Str


=cut

1;