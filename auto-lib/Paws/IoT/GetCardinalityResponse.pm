
package Paws::IoT::GetCardinalityResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw//;
  has Cardinality => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Cardinality' => 'cardinality'
                     },
  'types' => {
               'Cardinality' => {
                                  'type' => 'Int'
                                },
               '_request_id' => {
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

Paws::IoT::GetCardinalityResponse

=head1 ATTRIBUTES


=head2 Cardinality => Int

The approximate count of unique values that match the query.


=head2 _request_id => Str


=cut

