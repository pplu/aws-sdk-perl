
package Paws::IoT::ListThingPrincipalsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IoT::Types qw//;
  has Principals => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Principals' => 'principals'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Principals' => {
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

Paws::IoT::ListThingPrincipalsResponse

=head1 ATTRIBUTES


=head2 Principals => ArrayRef[Str|Undef]

The principals associated with the thing.


=head2 _request_id => Str


=cut

