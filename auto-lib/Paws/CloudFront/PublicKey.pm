package Paws::CloudFront::PublicKey;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has PublicKeyConfig => (is => 'ro', isa => 'Paws::CloudFront::PublicKeyConfig', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::PublicKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::PublicKey object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., PublicKeyConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::PublicKey object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

A complex data type of public keys you add to CloudFront to use with
features like field-level encryption.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedTime => Str

  A time you added a public key to CloudFront.


=head2 B<REQUIRED> Id => Str

  A unique ID assigned to a public key you've added to CloudFront.


=head2 B<REQUIRED> PublicKeyConfig => L<Paws::CloudFront::PublicKeyConfig>

  A complex data type for a public key you add to CloudFront to use with
features like field-level encryption.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

