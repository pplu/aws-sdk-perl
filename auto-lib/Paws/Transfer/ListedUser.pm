package Paws::Transfer::ListedUser;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has HomeDirectory => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
  has SshPublicKeyCount => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListedUser

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::ListedUser object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::ListedUser object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Returns properties of the user that you specify.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  This property is the unique Amazon Resource Name (ARN) for the user
that you wish to learn about.


=head2 HomeDirectory => Str

  This value specifies the location that files are written to or read
from an Amazon S3 bucket for the user you specify by their ARN.


=head2 Role => Str

  The role in use by this user. A I<role> is an AWS Identity and Access
Management (IAM) entity that in this case allows the SFTP server to act
on a user's behalf. It allows the server to inherit the trust
relationship that enables that user to perform file operations to their
Amazon S3 bucket.


=head2 SshPublicKeyCount => Int

  This value is the number of SSH public keys stored for the user you
specified.


=head2 UserName => Str

  The name of the user whose ARN was specified. User names are used for
authentication purposes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

