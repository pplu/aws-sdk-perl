
package Paws::Polly::DescribeVoicesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Polly::Types qw/Polly_Voice/;
  has NextToken => (is => 'ro', isa => Str);
  has Voices => (is => 'ro', isa => ArrayRef[Polly_Voice]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Voices' => {
                             'type' => 'ArrayRef[Polly_Voice]',
                             'class' => 'Paws::Polly::Voice'
                           },
               'NextToken' => {
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

Paws::Polly::DescribeVoicesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use in the next request to continue the listing
of voices. C<NextToken> is returned only if the response is truncated.


=head2 Voices => ArrayRef[Polly_Voice]

A list of voices with their properties.


=head2 _request_id => Str


=cut

