# Generated from callresult_class.tt

package Paws::CloudSearch::IndexDocumentsResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::CloudSearch::Types qw//;
  has FieldNames => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FieldNames' => {
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

Paws::CloudSearch::IndexDocumentsResponse

=head1 ATTRIBUTES


=head2 FieldNames => ArrayRef[Str|Undef]

The names of the fields that are currently being indexed.


=head2 _request_id => Str


=cut

