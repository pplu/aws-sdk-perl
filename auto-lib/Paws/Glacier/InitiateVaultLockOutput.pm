
package Paws::Glacier::InitiateVaultLockOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glacier::Types qw//;
  has LockId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LockId' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInHeader' => {
                       'LockId' => 'x-amz-lock-id'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::InitiateVaultLockOutput

=head1 ATTRIBUTES


=head2 LockId => Str

The lock ID, which is used to complete the vault locking process.


=head2 _request_id => Str


=cut

