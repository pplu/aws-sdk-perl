
package Paws::AppSync::GetSchemaCreationStatusResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw//;
  has Details => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Details' => {
                              'type' => 'Str'
                            },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Details' => 'details',
                       'Status' => 'status'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GetSchemaCreationStatusResponse

=head1 ATTRIBUTES


=head2 Details => Str

Detailed information about the status of the schema creation operation.


=head2 Status => Str

The current state of the schema (PROCESSING, FAILED, SUCCESS, or
NOT_APPLICABLE). When the schema is in the ACTIVE state, you can add
data.

Valid values are: C<"PROCESSING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">, C<"SUCCESS">, C<"NOT_APPLICABLE">
=head2 _request_id => Str


=cut

