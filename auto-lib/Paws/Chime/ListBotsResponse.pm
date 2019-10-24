
package Paws::Chime::ListBotsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_Bot/;
  has Bots => (is => 'ro', isa => ArrayRef[Chime_Bot]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Bots' => {
                           'class' => 'Paws::Chime::Bot',
                           'type' => 'ArrayRef[Chime_Bot]'
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

Paws::Chime::ListBotsResponse

=head1 ATTRIBUTES


=head2 Bots => ArrayRef[Chime_Bot]

List of bots and bot details.


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 _request_id => Str


=cut

