package Paws::MediaPackage::Authorization;
  use Moose;
  has CdnIdentifierSecret => (is => 'ro', isa => 'Str', request_name => 'cdnIdentifierSecret', traits => ['NameInRequest'], required => 1);
  has SecretsRoleArn => (is => 'ro', isa => 'Str', request_name => 'secretsRoleArn', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::Authorization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::Authorization object:

  $service_obj->Method(Att1 => { CdnIdentifierSecret => $value, ..., SecretsRoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::Authorization object:

  $result = $service_obj->Method(...);
  $result->Att1->CdnIdentifierSecret

=head1 DESCRIPTION

CDN Authorization credentials

=head1 ATTRIBUTES


=head2 B<REQUIRED> CdnIdentifierSecret => Str

  The Amazon Resource Name (ARN) for the secret in Secrets Manager that
your Content Distribution Network (CDN) uses for authorization to
access your endpoint.


=head2 B<REQUIRED> SecretsRoleArn => Str

  The Amazon Resource Name (ARN) for the IAM role that allows
MediaPackage to communicate with AWS Secrets Manager.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

