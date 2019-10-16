
package Paws::ES::ListElasticsearchVersionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ES::Types qw//;
  has ElasticsearchVersions => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ElasticsearchVersions' => {
                                            'type' => 'ArrayRef[Str|Undef]'
                                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ListElasticsearchVersionsResponse

=head1 ATTRIBUTES


=head2 ElasticsearchVersions => ArrayRef[Str|Undef]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

