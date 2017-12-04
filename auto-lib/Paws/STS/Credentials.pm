package Paws::STS::Credentials;
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has Expiration => (is => 'ro', isa => 'Str', required => 1);
  has SecretAccessKey => (is => 'ro', isa => 'Str', required => 1);
  has SessionToken => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::Credentials

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::STS::Credentials object:

  $service_obj->Method(Att1 => { AccessKeyId => $value, ..., SessionToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::STS::Credentials object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessKeyId

=head1 DESCRIPTION

AWS credentials for API authentication.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessKeyId => Str

  The access key ID that identifies the temporary security credentials.


=head2 B<REQUIRED> Expiration => Str

  The date on which the current credentials expire.


=head2 B<REQUIRED> SecretAccessKey => Str

  The secret access key that can be used to sign requests.


=head2 B<REQUIRED> SessionToken => Str

  The token that users must pass to the service API to use the temporary
credentials.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::STS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

