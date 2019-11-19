
package Paws::CloudDirectory::CreateObjectResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw//;
  has ObjectIdentifier => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ObjectIdentifier' => {
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

Paws::CloudDirectory::CreateObjectResponse

=head1 ATTRIBUTES


=head2 ObjectIdentifier => Str

The identifier that is associated with the object.


=head2 _request_id => Str


=cut

