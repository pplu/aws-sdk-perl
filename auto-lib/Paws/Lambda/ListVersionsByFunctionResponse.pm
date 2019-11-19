
package Paws::Lambda::ListVersionsByFunctionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lambda::Types qw/Lambda_FunctionConfiguration/;
  has NextMarker => (is => 'ro', isa => Str);
  has Versions => (is => 'ro', isa => ArrayRef[Lambda_FunctionConfiguration]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'Versions' => {
                               'type' => 'ArrayRef[Lambda_FunctionConfiguration]',
                               'class' => 'Paws::Lambda::FunctionConfiguration'
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

Paws::Lambda::ListVersionsByFunctionResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

The pagination token that's included if more results are available.


=head2 Versions => ArrayRef[Lambda_FunctionConfiguration]

A list of Lambda function versions.


=head2 _request_id => Str


=cut

