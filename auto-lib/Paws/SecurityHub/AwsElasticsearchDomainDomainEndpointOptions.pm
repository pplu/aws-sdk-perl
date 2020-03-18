package Paws::SecurityHub::AwsElasticsearchDomainDomainEndpointOptions;
  use Moose;
  has EnforceHTTPS => (is => 'ro', isa => 'Bool');
  has TLSSecurityPolicy => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsElasticsearchDomainDomainEndpointOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsElasticsearchDomainDomainEndpointOptions object:

  $service_obj->Method(Att1 => { EnforceHTTPS => $value, ..., TLSSecurityPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsElasticsearchDomainDomainEndpointOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->EnforceHTTPS

=head1 DESCRIPTION

Additional options for the domain endpoint, such as whether to require
HTTPS for all traffic.

=head1 ATTRIBUTES


=head2 EnforceHTTPS => Bool

  Whether to require that all traffic to the domain arrive over HTTPS.


=head2 TLSSecurityPolicy => Str

  The TLS security policy to apply to the HTTPS endpoint of the
Elasticsearch domain.

Valid values:

=over

=item *

C<Policy-Min-TLS-1-0-2019-07>, which supports TLSv1.0 and higher

=item *

C<Policy-Min-TLS-1-2-2019-07>, which only supports TLSv1.2

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

