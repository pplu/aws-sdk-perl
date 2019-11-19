
package Paws::Lambda::ListFunctionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lambda::Types qw/Lambda_FunctionConfiguration/;
  has Functions => (is => 'ro', isa => ArrayRef[Lambda_FunctionConfiguration]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Functions' => {
                                'class' => 'Paws::Lambda::FunctionConfiguration',
                                'type' => 'ArrayRef[Lambda_FunctionConfiguration]'
                              },
               'NextMarker' => {
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

Paws::Lambda::ListFunctionsResponse

=head1 ATTRIBUTES


=head2 Functions => ArrayRef[Lambda_FunctionConfiguration]

A list of Lambda functions.


=head2 NextMarker => Str

The pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

