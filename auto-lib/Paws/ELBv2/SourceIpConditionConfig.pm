# Generated from default/object.tt
package Paws::ELBv2::SourceIpConditionConfig;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::ELBv2::Types qw//;
  has Values => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Values' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SourceIpConditionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::SourceIpConditionConfig object:

  $service_obj->Method(Att1 => { Values => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::SourceIpConditionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Values

=head1 DESCRIPTION

Information about a source IP condition.

You can use this condition to route based on the IP address of the
source that connects to the load balancer. If a client is behind a
proxy, this is the IP address of the proxy not the IP address of the
client.

=head1 ATTRIBUTES


=head2 Values => ArrayRef[Str|Undef]

  One or more source IP addresses, in CIDR format. You can use both IPv4
and IPv6 addresses. Wildcards are not supported.

If you specify multiple addresses, the condition is satisfied if the
source IP address of the request matches one of the CIDR blocks. This
condition is not satisfied by the addresses in the X-Forwarded-For
header. To search for addresses in the X-Forwarded-For header, use
HttpHeaderConditionConfig.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

