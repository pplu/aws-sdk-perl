
package Paws::RAM::ListPrincipalsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RAM::Types qw/RAM_Principal/;
  has NextToken => (is => 'ro', isa => Str);
  has Principals => (is => 'ro', isa => ArrayRef[RAM_Principal]);

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
               'Principals' => {
                                 'class' => 'Paws::RAM::Principal',
                                 'type' => 'ArrayRef[RAM_Principal]'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Principals' => 'principals'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListPrincipalsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Principals => ArrayRef[RAM_Principal]

The principals.


=head2 _request_id => Str


=cut

