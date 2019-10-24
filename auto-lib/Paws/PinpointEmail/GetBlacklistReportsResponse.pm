
package Paws::PinpointEmail::GetBlacklistReportsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_BlacklistReport/;
  has BlacklistReport => (is => 'ro', isa => PinpointEmail_BlacklistReport, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BlacklistReport' => {
                                      'class' => 'Paws::PinpointEmail::BlacklistReport',
                                      'type' => 'PinpointEmail_BlacklistReport'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'BlacklistReport' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetBlacklistReportsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlacklistReport => PinpointEmail_BlacklistReport

An object that contains information about a blacklist that one of your
dedicated IP addresses appears on.


=head2 _request_id => Str


=cut

