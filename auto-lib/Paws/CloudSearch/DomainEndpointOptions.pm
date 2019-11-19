# Generated from default/object.tt
package Paws::CloudSearch::DomainEndpointOptions;
  use Moo;
  use Types::Standard qw/Bool Str/;
  use Paws::CloudSearch::Types qw//;
  has EnforceHTTPS => (is => 'ro', isa => Bool);
  has TLSSecurityPolicy => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TLSSecurityPolicy' => {
                                        'type' => 'Str'
                                      },
               'EnforceHTTPS' => {
                                   'type' => 'Bool'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DomainEndpointOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearch::DomainEndpointOptions object:

  $service_obj->Method(Att1 => { EnforceHTTPS => $value, ..., TLSSecurityPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearch::DomainEndpointOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->EnforceHTTPS

=head1 DESCRIPTION

The domain's endpoint options.

=head1 ATTRIBUTES


=head2 EnforceHTTPS => Bool

  Whether the domain is HTTPS only enabled.


=head2 TLSSecurityPolicy => Str

  The minimum required TLS version



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

