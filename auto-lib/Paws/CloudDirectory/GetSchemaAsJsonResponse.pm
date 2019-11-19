
package Paws::CloudDirectory::GetSchemaAsJsonResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw//;
  has Document => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Document' => {
                               'type' => 'Str'
                             },
               'Name' => {
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

Paws::CloudDirectory::GetSchemaAsJsonResponse

=head1 ATTRIBUTES


=head2 Document => Str

The JSON representation of the schema document.


=head2 Name => Str

The name of the retrieved schema.


=head2 _request_id => Str


=cut

