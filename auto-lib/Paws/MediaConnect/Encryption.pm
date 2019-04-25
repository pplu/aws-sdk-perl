package Paws::MediaConnect::Encryption;
  use Moose;
  has Algorithm => (is => 'ro', isa => 'Str', request_name => 'algorithm', traits => ['NameInRequest'], required => 1);
  has KeyType => (is => 'ro', isa => 'Str', request_name => 'keyType', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
  has SecretArn => (is => 'ro', isa => 'Str', request_name => 'secretArn', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::Encryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::Encryption object:

  $service_obj->Method(Att1 => { Algorithm => $value, ..., SecretArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::Encryption object:

  $result = $service_obj->Method(...);
  $result->Att1->Algorithm

=head1 DESCRIPTION

Information about the encryption of the flow.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Algorithm => Str

  The type of algorithm that is used for the encryption (such as aes128,
aes192, or aes256).


=head2 KeyType => Str

  The type of key that is used for the encryption. If no keyType is
provided, the service will use the default setting (static-key).


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the role that you created during setup (when you set up AWS
Elemental MediaConnect as a trusted entity).


=head2 B<REQUIRED> SecretArn => Str

  The ARN that was assigned to the secret that you created in AWS Secrets
Manager to store the encryption key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

