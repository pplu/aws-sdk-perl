package Paws::WorkDocs::User;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has EmailAddress => (is => 'ro', isa => 'Str');
  has GivenName => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Locale => (is => 'ro', isa => 'Str');
  has ModifiedTimestamp => (is => 'ro', isa => 'Str');
  has OrganizationId => (is => 'ro', isa => 'Str');
  has RecycleBinFolderId => (is => 'ro', isa => 'Str');
  has RootFolderId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Storage => (is => 'ro', isa => 'Paws::WorkDocs::UserStorageMetadata');
  has Surname => (is => 'ro', isa => 'Str');
  has TimeZoneId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::User

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::User object:

  $service_obj->Method(Att1 => { CreatedTimestamp => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::User object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTimestamp

=head1 DESCRIPTION

Describes a user.

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

  The time when the user was created.


=head2 EmailAddress => Str

  The email address of the user.


=head2 GivenName => Str

  The given name of the user.


=head2 Id => Str

  The ID of the user.


=head2 Locale => Str

  The locale of the user.


=head2 ModifiedTimestamp => Str

  The time when the user was modified.


=head2 OrganizationId => Str

  The ID of the organization.


=head2 RecycleBinFolderId => Str

  The ID of the recycle bin folder.


=head2 RootFolderId => Str

  The ID of the root folder.


=head2 Status => Str

  The status of the user.


=head2 Storage => L<Paws::WorkDocs::UserStorageMetadata>

  The storage for the user.


=head2 Surname => Str

  The surname of the user.


=head2 TimeZoneId => Str

  The time zone ID of the user.


=head2 Type => Str

  The type of user.


=head2 Username => Str

  The login name of the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

