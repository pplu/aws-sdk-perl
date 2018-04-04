package Paws::IAM::AccessKey;
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str');
  has SecretAccessKey => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::AccessKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::AccessKey object:

  $service_obj->Method(Att1 => { AccessKeyId => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::AccessKey object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessKeyId

=head1 DESCRIPTION

Contains information about an AWS access key.

This data type is used as a response element in the CreateAccessKey and
ListAccessKeys operations.

The C<SecretAccessKey> value is returned only in response to
CreateAccessKey. You can get a secret access key only when you first
create an access key; you cannot recover the secret access key later.
If you lose a secret access key, you must create a new access key.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessKeyId => Str

  The ID for this access key.


=head2 CreateDate => Str

  The date when the access key was created.


=head2 B<REQUIRED> SecretAccessKey => Str

  The secret key used to sign requests.


=head2 B<REQUIRED> Status => Str

  The status of the access key. C<Active> means that the key is valid for
API calls, while C<Inactive> means it is not.


=head2 B<REQUIRED> UserName => Str

  The name of the IAM user that the access key is associated with.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

