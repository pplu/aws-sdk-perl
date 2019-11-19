
package Paws::AppSync::UpdateFunctionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_FunctionConfiguration/;
  has FunctionConfiguration => (is => 'ro', isa => AppSync_FunctionConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'FunctionConfiguration' => 'functionConfiguration'
                     },
  'types' => {
               'FunctionConfiguration' => {
                                            'type' => 'AppSync_FunctionConfiguration',
                                            'class' => 'Paws::AppSync::FunctionConfiguration'
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

Paws::AppSync::UpdateFunctionResponse

=head1 ATTRIBUTES


=head2 FunctionConfiguration => AppSync_FunctionConfiguration

The C<Function> object.


=head2 _request_id => Str


=cut

