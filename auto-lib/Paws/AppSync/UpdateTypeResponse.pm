
package Paws::AppSync::UpdateTypeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_Type/;
  has Type => (is => 'ro', isa => AppSync_Type);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'class' => 'Paws::AppSync::Type',
                           'type' => 'AppSync_Type'
                         },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::AppSync::UpdateTypeResponse

=head1 ATTRIBUTES


=head2 Type => AppSync_Type

The updated C<Type> object.


=head2 _request_id => Str


=cut

