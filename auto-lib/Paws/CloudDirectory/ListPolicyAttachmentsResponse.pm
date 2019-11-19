
package Paws::CloudDirectory::ListPolicyAttachmentsResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::CloudDirectory::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has ObjectIdentifiers => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ObjectIdentifiers' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::CloudDirectory::ListPolicyAttachmentsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 ObjectIdentifiers => ArrayRef[Str|Undef]

A list of C<ObjectIdentifiers> to which the policy is attached.


=head2 _request_id => Str


=cut

