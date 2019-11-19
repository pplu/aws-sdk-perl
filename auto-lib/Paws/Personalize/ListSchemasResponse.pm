# Generated from json/callresult_class.tt

package Paws::Personalize::ListSchemasResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Personalize::Types qw/Personalize_DatasetSchemaSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Schemas => (is => 'ro', isa => ArrayRef[Personalize_DatasetSchemaSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Schemas' => {
                              'class' => 'Paws::Personalize::DatasetSchemaSummary',
                              'type' => 'ArrayRef[Personalize_DatasetSchemaSummary]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Schemas' => 'schemas',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListSchemasResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token used to get the next set of schemas (if they exist).


=head2 Schemas => ArrayRef[Personalize_DatasetSchemaSummary]

A list of schemas.


=head2 _request_id => Str


=cut

1;