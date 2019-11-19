
package Paws::Lambda::GetLayerVersionPolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lambda::Types qw//;
  has Policy => (is => 'ro', isa => Str);
  has RevisionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Policy' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RevisionId' => {
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

Paws::Lambda::GetLayerVersionPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The policy document.


=head2 RevisionId => Str

A unique identifier for the current revision of the policy.


=head2 _request_id => Str


=cut

