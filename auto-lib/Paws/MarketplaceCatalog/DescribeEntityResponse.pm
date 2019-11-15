
package Paws::MarketplaceCatalog::DescribeEntityResponse;
  use Moose;
  has Details => (is => 'ro', isa => 'Str');
  has EntityArn => (is => 'ro', isa => 'Str');
  has EntityIdentifier => (is => 'ro', isa => 'Str');
  has EntityType => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::DescribeEntityResponse

=head1 ATTRIBUTES


=head2 Details => Str

This stringified JSON object includes the details of the entity.


=head2 EntityArn => Str

The ARN associated to the unique identifier for the change set
referenced in this request.


=head2 EntityIdentifier => Str

The identifier of the entity, in the format of C<EntityId@RevisionId>.


=head2 EntityType => Str

The named type of the entity, in the format of C<EntityType@Version>.


=head2 LastModifiedDate => Str

The last modified date of the entity, in ISO 8601 format
(2018-02-27T13:45:22Z).


=head2 _request_id => Str


=cut

