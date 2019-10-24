
package Paws::CloudDirectory::ListObjectPoliciesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CloudDirectory::Types qw//;
  has AttachedPolicyIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AttachedPolicyIds' => {
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

Paws::CloudDirectory::ListObjectPoliciesResponse

=head1 ATTRIBUTES


=head2 AttachedPolicyIds => ArrayRef[Str|Undef]

A list of policy C<ObjectIdentifiers>, that are attached to the object.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

