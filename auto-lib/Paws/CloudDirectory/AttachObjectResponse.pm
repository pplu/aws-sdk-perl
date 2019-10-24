
package Paws::CloudDirectory::AttachObjectResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw//;
  has AttachedObjectIdentifier => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AttachedObjectIdentifier' => {
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

Paws::CloudDirectory::AttachObjectResponse

=head1 ATTRIBUTES


=head2 AttachedObjectIdentifier => Str

The attached C<ObjectIdentifier>, which is the child
C<ObjectIdentifier>.


=head2 _request_id => Str


=cut

