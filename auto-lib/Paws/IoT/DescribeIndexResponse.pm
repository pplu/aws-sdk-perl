
package Paws::IoT::DescribeIndexResponse;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexName');
  has IndexStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexStatus');
  has Schema => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schema');

  has _request_id => (is => 'ro', isa => 'Str');
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

=item 1.

REGISTRY E<ndash> Your thing index will contain only registry data.

=item 2.

REGISTRY_AND_SHADOW - Your thing index will contain registry and shadow
data.

=back



=head2 _request_id => Str


=cut

