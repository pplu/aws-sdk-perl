
package Paws::SESv2::GetBlacklistReportsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SESv2::Types qw/SESv2_BlacklistReport/;
  has BlacklistReport => (is => 'ro', isa => SESv2_BlacklistReport, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'BlacklistReport' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BlacklistReport' => {
                                      'class' => 'Paws::SESv2::BlacklistReport',
                                      'type' => 'SESv2_BlacklistReport'
                                    }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetBlacklistReportsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlacklistReport => SESv2_BlacklistReport

An object that contains information about a blacklist that one of your
dedicated IP addresses appears on.


=head2 _request_id => Str


=cut

