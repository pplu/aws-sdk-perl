
package Paws::CloudDirectory::ListIncomingTypedLinksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_TypedLinkSpecifier/;
  has LinkSpecifiers => (is => 'ro', isa => ArrayRef[CloudDirectory_TypedLinkSpecifier]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LinkSpecifiers' => {
                                     'class' => 'Paws::CloudDirectory::TypedLinkSpecifier',
                                     'type' => 'ArrayRef[CloudDirectory_TypedLinkSpecifier]'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListIncomingTypedLinksResponse

=head1 ATTRIBUTES


=head2 LinkSpecifiers => ArrayRef[CloudDirectory_TypedLinkSpecifier]

Returns one or more typed link specifiers as output.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

