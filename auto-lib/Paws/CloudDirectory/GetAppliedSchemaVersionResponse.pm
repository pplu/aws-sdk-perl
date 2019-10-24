
package Paws::CloudDirectory::GetAppliedSchemaVersionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw//;
  has AppliedSchemaArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AppliedSchemaArn' => {
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

Paws::CloudDirectory::GetAppliedSchemaVersionResponse

=head1 ATTRIBUTES


=head2 AppliedSchemaArn => Str

Current applied schema ARN, including the minor version in use if one
was provided.


=head2 _request_id => Str


=cut

