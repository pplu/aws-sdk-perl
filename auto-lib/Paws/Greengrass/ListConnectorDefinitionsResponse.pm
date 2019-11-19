
package Paws::Greengrass::ListConnectorDefinitionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_DefinitionInformation/;
  has Definitions => (is => 'ro', isa => ArrayRef[Greengrass_DefinitionInformation]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Definitions' => {
                                  'class' => 'Paws::Greengrass::DefinitionInformation',
                                  'type' => 'ArrayRef[Greengrass_DefinitionInformation]'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListConnectorDefinitionsResponse

=head1 ATTRIBUTES


=head2 Definitions => ArrayRef[Greengrass_DefinitionInformation]

Information about a definition.


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.


=head2 _request_id => Str


=cut

