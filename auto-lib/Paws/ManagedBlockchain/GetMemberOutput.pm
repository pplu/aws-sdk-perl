
package Paws::ManagedBlockchain::GetMemberOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ManagedBlockchain::Types qw/ManagedBlockchain_Member/;
  has Member => (is => 'ro', isa => ManagedBlockchain_Member);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Member' => {
                             'class' => 'Paws::ManagedBlockchain::Member',
                             'type' => 'ManagedBlockchain_Member'
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

Paws::ManagedBlockchain::GetMemberOutput

=head1 ATTRIBUTES


=head2 Member => ManagedBlockchain_Member

The properties of a member.


=head2 _request_id => Str


=cut

