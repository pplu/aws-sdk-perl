package Paws::IAM::LoginProfile;
  use Moose;
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has PasswordResetRequired => (is => 'ro', isa => 'Bool');
  has UserName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::LoginProfile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::LoginProfile object:

  $service_obj->Method(Att1 => { CreateDate => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::LoginProfile object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateDate

=head1 DESCRIPTION

Contains the user name and password create date for a user.

This data type is used as a response element in the CreateLoginProfile
and GetLoginProfile operations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateDate => Str

  The date when the password for the user was created.


=head2 PasswordResetRequired => Bool

  Specifies whether the user is required to set a new password on next
sign-in.


=head2 B<REQUIRED> UserName => Str

  The name of the user, which can be used for signing in to the AWS
Management Console.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

