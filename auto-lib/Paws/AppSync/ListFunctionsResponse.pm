
package Paws::AppSync::ListFunctionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppSync::Types qw/AppSync_FunctionConfiguration/;
  has Functions => (is => 'ro', isa => ArrayRef[AppSync_FunctionConfiguration]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Functions' => 'functions'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Functions' => {
                                'class' => 'Paws::AppSync::FunctionConfiguration',
                                'type' => 'ArrayRef[AppSync_FunctionConfiguration]'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListFunctionsResponse

=head1 ATTRIBUTES


=head2 Functions => ArrayRef[AppSync_FunctionConfiguration]

A list of C<Function> objects.


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 _request_id => Str


=cut

