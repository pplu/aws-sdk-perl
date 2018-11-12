package Paws::AppStream::User;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AuthenticationType => (is => 'ro', isa => 'Str', required => 1);
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has FirstName => (is => 'ro', isa => 'Str');
  has LastName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::User

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::User object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::User object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes a user in the user pool.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the user.


=head2 B<REQUIRED> AuthenticationType => Str

  The authentication type for the user.


=head2 CreatedTime => Str

  The date and time the user was created in the user pool.


=head2 Enabled => Bool

  Specifies whether the user in the user pool is enabled.


=head2 FirstName => Str

  The first name, or given name, of the user.


=head2 LastName => Str

  The last name, or surname, of the user.


=head2 Status => Str

  The status of the user in the user pool. The status can be one of the
following:

=over

=item *

UNCONFIRMED E<ndash> The user is created but not confirmed.

=item *

CONFIRMED E<ndash> The user is confirmed.

=item *

ARCHIVED E<ndash> The user is no longer active.

=item *

COMPROMISED E<ndash> The user is disabled because of a potential
security threat.

=item *

UNKNOWN E<ndash> The user status is not known.

=back



=head2 UserName => Str

  The email address of the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

