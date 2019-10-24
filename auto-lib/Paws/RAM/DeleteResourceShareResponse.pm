
package Paws::RAM::DeleteResourceShareResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::RAM::Types qw//;
  has ClientToken => (is => 'ro', isa => Str);
  has ReturnValue => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'ReturnValue' => {
                                  'type' => 'Bool'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ClientToken' => 'clientToken',
                       'ReturnValue' => 'returnValue'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::DeleteResourceShareResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 ReturnValue => Bool

Indicates whether the request succeeded.


=head2 _request_id => Str


=cut

