package Paws::Quicksight::User;
  use Moose;
  has Active => (is => 'ro', isa => 'Bool');
  has Arn => (is => 'ro', isa => 'Str');
  has Email => (is => 'ro', isa => 'Str');
  has IdentityType => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::User

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::User object:

  $service_obj->Method(Att1 => { Active => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::User object:

  $result = $service_obj->Method(...);
  $result->Att1->Active

=head1 DESCRIPTION

A registered user of Amazon QuickSight. Currently, an Amazon QuickSight
subscription can't contain more than 20 million users.

=head1 ATTRIBUTES


=head2 Active => Bool

  Active status of user. When you create an Amazon QuickSight user
thatE<rsquo>s not an IAM user or an AD user, that user is inactive
until they sign in and provide a password


=head2 Arn => Str

  The Amazon Resource Name (ARN) for the user.


=head2 Email => Str

  The user's email address.


=head2 IdentityType => Str

  The type of identity authentication used by the user.


=head2 Role => Str

  The Amazon QuickSight role for the user.


=head2 UserName => Str

  The user's user name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

