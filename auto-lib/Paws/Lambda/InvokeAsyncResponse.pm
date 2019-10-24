
package Paws::Lambda::InvokeAsyncResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Lambda::Types qw//;
  has Status => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Int'
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

Paws::Lambda::InvokeAsyncResponse

=head1 ATTRIBUTES


=head2 Status => Int

The status code.


=head2 _request_id => Str


=cut

