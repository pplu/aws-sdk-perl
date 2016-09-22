
package Paws::Route53::CreateHostedZone;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has DelegationSetId => (is => 'ro', isa => 'Str');
  has HostedZoneConfig => (is => 'ro', isa => 'Paws::Route53::HostedZoneConfig');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has VPC => (is => 'ro', isa => 'Paws::Route53::VPC');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHostedZone');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateHostedZoneResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateHostedZone - Arguments for method CreateHostedZone on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHostedZone on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method CreateHostedZone.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHostedZone.

As an example:

  $service_obj->CreateHostedZone(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

A unique string that identifies the request and that allows failed
C<CreateHostedZone> requests to be retried without the risk of
executing the operation twice. You must use a unique C<CallerReference>
string every time you create a hosted zone. C<CallerReference> can be
any unique string, for example, a date/time stamp.



=head2 DelegationSetId => Str

If you want to associate a reusable delegation set with this hosted
zone, the ID that Amazon Route 53 assigned to the reusable delegation
set when you created it. For more information about reusable delegation
sets, see CreateReusableDelegationSet.

=over

=item Type

String

=item Default

None

=item Parent

C<CreatedHostedZoneRequest>

=back




=head2 HostedZoneConfig => L<Paws::Route53::HostedZoneConfig>

(Optional) A complex type that contains an optional comment about your
hosted zone. If you don't want to specify a comment, omit both the
C<HostedZoneConfig> and C<Comment> elements.



=head2 B<REQUIRED> Name => Str

The name of the domain. For resource record types that include a domain
name, specify a fully qualified domain name, for example,
I<www.example.com>. The trailing dot is optional; Amazon Route 53
assumes that the domain name is fully qualified. This means that Amazon
Route 53 treats I<www.example.com> (without a trailing dot) and
I<www.example.com.> (with a trailing dot) as identical.

If you're creating a public hosted zone, this is the name you have
registered with your DNS registrar. If your domain name is registered
with a registrar other than Amazon Route 53, change the name servers
for your domain to the set of C<NameServers> that C<CreateHostedZone>
returns in the DelegationSet element.



=head2 VPC => L<Paws::Route53::VPC>

The VPC that you want your hosted zone to be associated with. By
providing this parameter, your newly created hosted cannot be resolved
anywhere other than the given VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHostedZone in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

