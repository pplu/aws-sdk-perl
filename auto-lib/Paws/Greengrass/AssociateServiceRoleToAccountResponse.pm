
package Paws::Greengrass::AssociateServiceRoleToAccountResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw//;
  has AssociatedAt => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AssociatedAt' => {
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

Paws::Greengrass::AssociateServiceRoleToAccountResponse

=head1 ATTRIBUTES


=head2 AssociatedAt => Str

The time when the service role was associated with the account.


=head2 _request_id => Str


=cut

