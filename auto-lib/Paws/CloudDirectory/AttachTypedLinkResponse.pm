
package Paws::CloudDirectory::AttachTypedLinkResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_TypedLinkSpecifier/;
  has TypedLinkSpecifier => (is => 'ro', isa => CloudDirectory_TypedLinkSpecifier);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TypedLinkSpecifier' => {
                                         'class' => 'Paws::CloudDirectory::TypedLinkSpecifier',
                                         'type' => 'CloudDirectory_TypedLinkSpecifier'
                                       }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::AttachTypedLinkResponse

=head1 ATTRIBUTES


=head2 TypedLinkSpecifier => CloudDirectory_TypedLinkSpecifier

Returns a typed link specifier as output.


=head2 _request_id => Str


=cut

