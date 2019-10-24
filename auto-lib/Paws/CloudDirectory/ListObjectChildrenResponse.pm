
package Paws::CloudDirectory::ListObjectChildrenResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_LinkNameToObjectIdentifierMap/;
  has Children => (is => 'ro', isa => CloudDirectory_LinkNameToObjectIdentifierMap);
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
               'Children' => {
                               'class' => 'Paws::CloudDirectory::LinkNameToObjectIdentifierMap',
                               'type' => 'CloudDirectory_LinkNameToObjectIdentifierMap'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListObjectChildrenResponse

=head1 ATTRIBUTES


=head2 Children => CloudDirectory_LinkNameToObjectIdentifierMap

Children structure, which is a map with key as the C<LinkName> and
C<ObjectIdentifier> as the value.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

