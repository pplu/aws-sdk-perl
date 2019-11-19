
package Paws::IoT::ListIndicesResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::IoT::Types qw//;
  has IndexNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'IndexNames' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'IndexNames' => 'indexNames'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListIndicesResponse

=head1 ATTRIBUTES


=head2 IndexNames => ArrayRef[Str|Undef]

The index names.


=head2 NextToken => Str

The token used to get the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

