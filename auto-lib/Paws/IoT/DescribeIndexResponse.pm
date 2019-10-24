
package Paws::IoT::DescribeIndexResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has IndexName => (is => 'ro', isa => Str);
  has IndexStatus => (is => 'ro', isa => Str);
  has Schema => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Schema' => {
                             'type' => 'Str'
                           },
               'IndexName' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IndexStatus' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Schema' => 'schema',
                       'IndexName' => 'indexName',
                       'IndexStatus' => 'indexStatus'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeIndexResponse

=head1 ATTRIBUTES


=head2 IndexName => Str

The index name.


=head2 IndexStatus => Str

The index status.

Valid values are: C<"ACTIVE">, C<"BUILDING">, C<"REBUILDING">
=head2 Schema => Str

Contains a value that specifies the type of indexing performed. Valid
values are:

=over

=item *

REGISTRY E<ndash> Your thing index contains only registry data.

=item *

REGISTRY_AND_SHADOW - Your thing index contains registry data and
shadow data.

=item *

REGISTRY_AND_CONNECTIVITY_STATUS - Your thing index contains registry
data and thing connectivity status data.

=item *

REGISTRY_AND_SHADOW_AND_CONNECTIVITY_STATUS - Your thing index contains
registry data, shadow data, and thing connectivity status data.

=back



=head2 _request_id => Str


=cut

