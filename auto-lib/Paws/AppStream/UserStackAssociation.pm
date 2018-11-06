package Paws::AppStream::UserStackAssociation;
  use Moose;
  has AuthenticationType => (is => 'ro', isa => 'Str', required => 1);
  has SendEmailNotification => (is => 'ro', isa => 'Bool');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UserStackAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::UserStackAssociation object:

  $service_obj->Method(Att1 => { AuthenticationType => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::UserStackAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthenticationType

=head1 DESCRIPTION

Describes a user in the user pool and the associated stack.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthenticationType => Str

  The authentication type for the user.


=head2 SendEmailNotification => Bool

  Specifies whether a welcome email is sent to a user after the user is
created in the user pool.


=head2 B<REQUIRED> StackName => Str

  The name of the stack that is associated with the user.


=head2 B<REQUIRED> UserName => Str

  The email address of the user who is associated with the stack.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

