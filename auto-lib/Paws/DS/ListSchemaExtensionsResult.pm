# Generated from json/callresult_class.tt

package Paws::DS::ListSchemaExtensionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DS::Types qw/DS_SchemaExtensionInfo/;
  has NextToken => (is => 'ro', isa => Str);
  has SchemaExtensionsInfo => (is => 'ro', isa => ArrayRef[DS_SchemaExtensionInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SchemaExtensionsInfo' => {
                                           'class' => 'Paws::DS::SchemaExtensionInfo',
                                           'type' => 'ArrayRef[DS_SchemaExtensionInfo]'
                                         },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DS::ListSchemaExtensionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If not null, more results are available. Pass this value for the
C<NextToken> parameter in a subsequent call to C<ListSchemaExtensions>
to retrieve the next set of items.


=head2 SchemaExtensionsInfo => ArrayRef[DS_SchemaExtensionInfo]

Information about the schema extensions applied to the directory.


=head2 _request_id => Str


=cut

1;