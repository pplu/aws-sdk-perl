# Generated from json/callresult_class.tt

package Paws::EMR::CreateSecurityConfigurationOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EMR::Types qw//;
  has CreationDateTime => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);

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
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'Name' => 1,
                    'CreationDateTime' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::EMR::CreateSecurityConfigurationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDateTime => Str

The date and time the security configuration was created.


=head2 B<REQUIRED> Name => Str

The name of the security configuration.


=head2 _request_id => Str


=cut

1;