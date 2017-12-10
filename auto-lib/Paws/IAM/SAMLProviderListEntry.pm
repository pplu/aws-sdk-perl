package Paws::IAM::SAMLProviderListEntry;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::SAMLProviderListEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::SAMLProviderListEntry object:

  $service_obj->Method(Att1 => { Arn => $value, ..., ValidUntil => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::SAMLProviderListEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains the list of SAML providers for this account.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the SAML provider.


=head2 CreateDate => Str

  The date and time when the SAML provider was created.


=head2 ValidUntil => Str

  The expiration date and time for the SAML provider.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

