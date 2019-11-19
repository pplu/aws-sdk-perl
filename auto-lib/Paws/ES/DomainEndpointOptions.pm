# Generated from default/object.tt
package Paws::ES::DomainEndpointOptions;
  use Moo;
  use Types::Standard qw/Bool Str/;
  use Paws::ES::Types qw//;
  has EnforceHTTPS => (is => 'ro', isa => Bool);
  has TLSSecurityPolicy => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EnforceHTTPS' => {
                                   'type' => 'Bool'
                                 },
               'TLSSecurityPolicy' => {
                                        'type' => 'Str'
                                      }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DomainEndpointOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::DomainEndpointOptions object:

  $service_obj->Method(Att1 => { EnforceHTTPS => $value, ..., TLSSecurityPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::DomainEndpointOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->EnforceHTTPS

=head1 DESCRIPTION

Options to configure endpoint for the Elasticsearch domain.

=head1 ATTRIBUTES


=head2 EnforceHTTPS => Bool

  Specify if only HTTPS endpoint should be enabled for the Elasticsearch
domain.


=head2 TLSSecurityPolicy => Str

  Specify the TLS security policy that needs to be applied to the HTTPS
endpoint of Elasticsearch domain.

It can be one of the following values:

=over

=item * B<Policy-Min-TLS-1-0-2019-07: > TLS security policy which
supports TLSv1.0 and higher.

=item * B<Policy-Min-TLS-1-2-2019-07: > TLS security policy which
supports only TLSv1.2

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

