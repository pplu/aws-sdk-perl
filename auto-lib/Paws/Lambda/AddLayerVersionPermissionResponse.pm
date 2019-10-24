
package Paws::Lambda::AddLayerVersionPermissionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lambda::Types qw//;
  has RevisionId => (is => 'ro', isa => Str);
  has Statement => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RevisionId' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Statement' => {
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

Paws::Lambda::AddLayerVersionPermissionResponse

=head1 ATTRIBUTES


=head2 RevisionId => Str

A unique identifier for the current revision of the policy.


=head2 Statement => Str

The permission statement.


=head2 _request_id => Str


=cut

