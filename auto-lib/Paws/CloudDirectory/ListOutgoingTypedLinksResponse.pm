
package Paws::CloudDirectory::ListOutgoingTypedLinksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_TypedLinkSpecifier/;
  has NextToken => (is => 'ro', isa => Str);
  has TypedLinkSpecifiers => (is => 'ro', isa => ArrayRef[CloudDirectory_TypedLinkSpecifier]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TypedLinkSpecifiers' => {
                                          'class' => 'Paws::CloudDirectory::TypedLinkSpecifier',
                                          'type' => 'ArrayRef[CloudDirectory_TypedLinkSpecifier]'
                                        },
               'NextToken' => {
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

Paws::CloudDirectory::ListOutgoingTypedLinksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 TypedLinkSpecifiers => ArrayRef[CloudDirectory_TypedLinkSpecifier]

Returns a typed link specifier as output.


=head2 _request_id => Str


=cut

