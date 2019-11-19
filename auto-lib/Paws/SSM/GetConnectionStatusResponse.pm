# Generated from json/callresult_class.tt

package Paws::SSM::GetConnectionStatusResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has Status => (is => 'ro', isa => Str);
  has Target => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'Target' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetConnectionStatusResponse

=head1 ATTRIBUTES


=head2 Status => Str

The status of the connection to the instance. For example, 'Connected'
or 'Not Connected'.

Valid values are: C<"Connected">, C<"NotConnected">
=head2 Target => Str

The ID of the instance to check connection status.


=head2 _request_id => Str


=cut

1;