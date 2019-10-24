# Generated from json/callresult_class.tt

package Paws::DataPipeline::QueryObjectsOutput;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::DataPipeline::Types qw//;
  has HasMoreResults => (is => 'ro', isa => Bool);
  has Ids => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HasMoreResults' => {
                                     'type' => 'Bool'
                                   },
               'Ids' => {
                          'type' => 'ArrayRef[Str|Undef]'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'HasMoreResults' => 'hasMoreResults',
                       'Ids' => 'ids',
                       'Marker' => 'marker'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::QueryObjectsOutput

=head1 ATTRIBUTES


=head2 HasMoreResults => Bool

Indicates whether there are more results that can be obtained by a
subsequent call.


=head2 Ids => ArrayRef[Str|Undef]

The identifiers that match the query selectors.


=head2 Marker => Str

The starting point for the next page of results. To view the next page
of results, call C<QueryObjects> again with this marker value. If the
value is null, there are no more results.


=head2 _request_id => Str


=cut

1;