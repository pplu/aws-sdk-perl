
package Paws::CloudDirectory::LookupPolicyResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_PolicyToPath/;
  has NextToken => (is => 'ro', isa => Str);
  has PolicyToPathList => (is => 'ro', isa => ArrayRef[CloudDirectory_PolicyToPath]);

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
               'PolicyToPathList' => {
                                       'class' => 'Paws::CloudDirectory::PolicyToPath',
                                       'type' => 'ArrayRef[CloudDirectory_PolicyToPath]'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::LookupPolicyResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 PolicyToPathList => ArrayRef[CloudDirectory_PolicyToPath]

Provides list of path to policies. Policies contain C<PolicyId>,
C<ObjectIdentifier>, and C<PolicyType>. For more information, see
Policies
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies).


=head2 _request_id => Str


=cut

