
package Paws::ManagedBlockchain::ListMembersOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ManagedBlockchain::Types qw/ManagedBlockchain_MemberSummary/;
  has Members => (is => 'ro', isa => ArrayRef[ManagedBlockchain_MemberSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Members' => {
                              'class' => 'Paws::ManagedBlockchain::MemberSummary',
                              'type' => 'ArrayRef[ManagedBlockchain_MemberSummary]'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListMembersOutput

=head1 ATTRIBUTES


=head2 Members => ArrayRef[ManagedBlockchain_MemberSummary]

An array of C<MemberSummary> objects. Each object contains details
about a network member.


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

