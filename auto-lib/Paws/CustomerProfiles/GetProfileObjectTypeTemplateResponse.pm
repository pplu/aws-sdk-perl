
package Paws::CustomerProfiles::GetProfileObjectTypeTemplateResponse;
  use Moose;
  has AllowProfileCreation => (is => 'ro', isa => 'Bool');
  has Fields => (is => 'ro', isa => 'Paws::CustomerProfiles::FieldMap');
  has Keys => (is => 'ro', isa => 'Paws::CustomerProfiles::KeyMap');
  has SourceName => (is => 'ro', isa => 'Str');
  has SourceObject => (is => 'ro', isa => 'Str');
  has TemplateId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetProfileObjectTypeTemplateResponse

=head1 ATTRIBUTES


=head2 AllowProfileCreation => Bool

Indicates whether a profile should be created when data is received if
one doesnE<rsquo>t exist for an object of this type. The default is
C<FALSE>. If the AllowProfileCreation flag is set to C<FALSE>, then the
service tries to fetch a standard profile and associate this object
with the profile. If it is set to C<TRUE>, and if no match is found,
then the service creates a new standard profile.


=head2 Fields => L<Paws::CustomerProfiles::FieldMap>

A map of the name and ObjectType field.


=head2 Keys => L<Paws::CustomerProfiles::KeyMap>

A list of unique keys that can be used to map data to the profile.


=head2 SourceName => Str

The name of the source of the object template.


=head2 SourceObject => Str

The source of the object template.


=head2 TemplateId => Str

A unique identifier for the object template.


=head2 _request_id => Str


=cut

