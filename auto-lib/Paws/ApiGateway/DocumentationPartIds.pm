
package Paws::ApiGateway::DocumentationPartIds;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ApiGateway::Types qw//;
  has Ids => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Warnings => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Ids' => {
                          'type' => 'ArrayRef[Str|Undef]'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Warnings' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             }
             },
  'NameInRequest' => {
                       'Ids' => 'ids',
                       'Warnings' => 'warnings'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DocumentationPartIds

=head1 ATTRIBUTES


=head2 Ids => ArrayRef[Str|Undef]

A list of the returned documentation part identifiers.


=head2 Warnings => ArrayRef[Str|Undef]

A list of warning messages reported during import of documentation
parts.


=head2 _request_id => Str


=cut

