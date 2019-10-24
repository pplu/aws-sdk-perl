
package Paws::SecurityHub::ListMembersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SecurityHub::Types qw/SecurityHub_Member/;
  has Members => (is => 'ro', isa => ArrayRef[SecurityHub_Member]);
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
                              'class' => 'Paws::SecurityHub::Member',
                              'type' => 'ArrayRef[SecurityHub_Member]'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListMembersResponse

=head1 ATTRIBUTES


=head2 Members => ArrayRef[SecurityHub_Member]

Member details returned by the operation.


=head2 NextToken => Str

The token that is required for pagination.


=head2 _request_id => Str


=cut

