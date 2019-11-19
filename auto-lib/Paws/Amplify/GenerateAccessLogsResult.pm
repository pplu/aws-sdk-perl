
package Paws::Amplify::GenerateAccessLogsResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw//;
  has LogUrl => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'LogUrl' => 'logUrl'
                     },
  'types' => {
               'LogUrl' => {
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GenerateAccessLogsResult

=head1 ATTRIBUTES


=head2 LogUrl => Str

Pre-signed URL for the requested access logs.


=head2 _request_id => Str


=cut

