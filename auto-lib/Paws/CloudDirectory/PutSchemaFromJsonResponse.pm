
package Paws::CloudDirectory::PutSchemaFromJsonResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw//;
  has Arn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
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

Paws::CloudDirectory::PutSchemaFromJsonResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the schema to update.


=head2 _request_id => Str


=cut

