
package Paws::CustomerProfiles::PutIntegrationResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', required => 1);
  has ObjectTypeName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');
  has Uri => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::PutIntegrationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when the domain was created.


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.


=head2 B<REQUIRED> LastUpdatedAt => Str

The timestamp of when the domain was most recently edited.


=head2 B<REQUIRED> ObjectTypeName => Str

The name of the profile object type.


=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.


=head2 B<REQUIRED> Uri => Str

The URI of the S3 bucket or any other type of data source.


=head2 _request_id => Str


=cut

