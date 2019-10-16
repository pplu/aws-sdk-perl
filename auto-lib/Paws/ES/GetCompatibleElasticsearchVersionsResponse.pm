
package Paws::ES::GetCompatibleElasticsearchVersionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ES::Types qw/ES_CompatibleVersionsMap/;
  has CompatibleElasticsearchVersions => (is => 'ro', isa => ArrayRef[ES_CompatibleVersionsMap]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CompatibleElasticsearchVersions' => {
                                                      'class' => 'Paws::ES::CompatibleVersionsMap',
                                                      'type' => 'ArrayRef[ES_CompatibleVersionsMap]'
                                                    }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::GetCompatibleElasticsearchVersionsResponse

=head1 ATTRIBUTES


=head2 CompatibleElasticsearchVersions => ArrayRef[ES_CompatibleVersionsMap]

A map of compatible Elasticsearch versions returned as part of the C<
GetCompatibleElasticsearchVersions > operation.


=head2 _request_id => Str


=cut

