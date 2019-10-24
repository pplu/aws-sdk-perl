# Generated from json/callresult_class.tt

package Paws::DirectConnect::DeleteInterconnectResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DirectConnect::Types qw//;
  has InterconnectState => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InterconnectState' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'InterconnectState' => 'interconnectState'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteInterconnectResponse

=head1 ATTRIBUTES


=head2 InterconnectState => Str

The state of the interconnect. The following are the possible values:

=over

=item *

C<requested>: The initial state of an interconnect. The interconnect
stays in the requested state until the Letter of Authorization (LOA) is
sent to the customer.

=item *

C<pending>: The interconnect is approved, and is being initialized.

=item *

C<available>: The network link is up, and the interconnect is ready for
use.

=item *

C<down>: The network link is down.

=item *

C<deleting>: The interconnect is being deleted.

=item *

C<deleted>: The interconnect is deleted.

=item *

C<unknown>: The state of the interconnect is not available.

=back


Valid values are: C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">, C<"unknown">
=head2 _request_id => Str


=cut

1;