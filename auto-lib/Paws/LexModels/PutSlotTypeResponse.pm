
package Paws::LexModels::PutSlotTypeResponse;
  use Moose;
  has Checksum => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnumerationValues => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::EnumerationValue]');
  has LastUpdatedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::PutSlotTypeResponse

=head1 ATTRIBUTES


=head2 Checksum => Str

Checksum of the C<$LATEST> version of the slot type.


=head2 CreatedDate => Str

The date that the slot type was created.


=head2 Description => Str

A description of the slot type.


=head2 EnumerationValues => ArrayRef[L<Paws::LexModels::EnumerationValue>]

A list of C<EnumerationValue> objects that defines the values that the
slot type can take.


=head2 LastUpdatedDate => Str

The date that the slot type was updated. When you create a slot type,
the creation date and last update date are the same.


=head2 Name => Str

The name of the slot type.


=head2 Version => Str

The version of the slot type. For a new slot type, the version is
always C<$LATEST>.


=head2 _request_id => Str


=cut

