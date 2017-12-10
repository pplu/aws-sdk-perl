package Paws::WorkDocs::UserMetadata;
  use Moose;
  has EmailAddress => (is => 'ro', isa => 'Str');
  has GivenName => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Surname => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::UserMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::UserMetadata object:

  $service_obj->Method(Att1 => { EmailAddress => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::UserMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->EmailAddress

=head1 DESCRIPTION

Describes the metadata of the user.

=head1 ATTRIBUTES


=head2 EmailAddress => Str

  The email address of the user.


=head2 GivenName => Str

  The given name of the user before a rename operation.


=head2 Id => Str

  The ID of the user.


=head2 Surname => Str

  The surname of the user.


=head2 Username => Str

  The name of the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

