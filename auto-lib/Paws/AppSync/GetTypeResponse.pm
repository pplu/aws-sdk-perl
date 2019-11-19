
package Paws::AppSync::GetTypeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_Type/;
  has Type => (is => 'ro', isa => AppSync_Type);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Type' => {
                           'type' => 'AppSync_Type',
                           'class' => 'Paws::AppSync::Type'
                         }
             },
  'NameInRequest' => {
                       'Type' => 'type'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GetTypeResponse

=head1 ATTRIBUTES


=head2 Type => AppSync_Type

The C<Type> object.


=head2 _request_id => Str


=cut

