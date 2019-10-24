
package Paws::Connect::GetContactAttributesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw/Connect_Attributes/;
  has Attributes => (is => 'ro', isa => Connect_Attributes);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::Connect::Attributes',
                                 'type' => 'Connect_Attributes'
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

Paws::Connect::GetContactAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => Connect_Attributes

The attributes to update.


=head2 _request_id => Str


=cut

