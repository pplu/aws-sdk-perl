# Generated from json/callresult_class.tt

package Paws::GameLift::GetGameSessionLogUrlOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw//;
  has PreSignedUrl => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PreSignedUrl' => {
                                   'type' => 'Str'
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

Paws::GameLift::GetGameSessionLogUrlOutput

=head1 ATTRIBUTES


=head2 PreSignedUrl => Str

Location of the requested game session logs, available for download.
This URL is valid for 15 minutes, after which S3 will reject any
download request using this URL. You can request a new URL any time
within the 14-day period that the logs are retained.


=head2 _request_id => Str


=cut

1;