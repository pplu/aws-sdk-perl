package Paws::ACM::CertificateOptions;
  use Moose;
  has CertificateTransparencyLoggingPreference => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::CertificateOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACM::CertificateOptions object:

  $service_obj->Method(Att1 => { CertificateTransparencyLoggingPreference => $value, ..., CertificateTransparencyLoggingPreference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACM::CertificateOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateTransparencyLoggingPreference

=head1 DESCRIPTION

Structure that contains options for your certificate. Currently, you
can use this only to specify whether to opt in to or out of certificate
transparency logging. Some browsers require that public certificates
issued for your domain be recorded in a log. Certificates that are not
logged typically generate a browser error. Transparency makes it
possible for you to detect SSL/TLS certificates that have been
mistakenly or maliciously issued for your domain. For general
information, see Certificate Transparency Logging
(http://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency).

=head1 ATTRIBUTES


=head2 CertificateTransparencyLoggingPreference => Str

  You can opt out of certificate transparency logging by specifying the
C<DISABLED> option. Opt in by specifying C<ENABLED>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

