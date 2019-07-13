package Paws::CognitoIdp::CustomDomainConfigType;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CustomDomainConfigType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::CustomDomainConfigType object:

  $service_obj->Method(Att1 => { CertificateArn => $value, ..., CertificateArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::CustomDomainConfigType object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateArn

=head1 DESCRIPTION

The configuration for a custom domain that hosts the sign-up and
sign-in webpages for your application.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateArn => Str

  The Amazon Resource Name (ARN) of an AWS Certificate Manager SSL
certificate. You use this certificate for the subdomain of your custom
domain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

