
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

Paws::Route53::CreateHostedZone - Arguments for method CreateHostedZone on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHostedZone on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method CreateHostedZone.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHostedZone.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $CreateHostedZoneResponse = $route53->CreateHostedZone(
      CallerReference  => 'MyNonce',
      Name             => 'MyDNSName',
      DelegationSetId  => 'MyResourceId',    # OPTIONAL
      HostedZoneConfig => {
        Comment     => 'MyResourceDescription',    # max: 256; OPTIONAL
        PrivateZone => 1,                          # OPTIONAL
      },    # OPTIONAL
      VPC => {
        VPCId     => 'MyVPCId',    # max: 1024; OPTIONAL
        VPCRegion => 'us-east-1'
        , # values: us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-west-2, eu-west-3, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, ap-northeast-3, eu-north-1, sa-east-1, ca-central-1, cn-north-1min: 1, max: 64; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ChangeInfo    = $CreateHostedZoneResponse->ChangeInfo;
    my $DelegationSet = $CreateHostedZoneResponse->DelegationSet;
    my $HostedZone    = $CreateHostedZoneResponse->HostedZone;
    my $Location      = $CreateHostedZoneResponse->Location;
    my $VPC           = $CreateHostedZoneResponse->VPC;

    # Returns a L<Paws::Route53::CreateHostedZoneResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/CreateHostedZone>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

A unique string that identifies the request and that allows failed
C<CreateHostedZone> requests to be retried without the risk of
executing the operation twice. You must use a unique C<CallerReference>
string every time you submit a C<CreateHostedZone> request.
C<CallerReference> can be any unique string, for example, a date/time
stamp.



=head2 DelegationSetId => Str

If you want to associate a reusable delegation set with this hosted
zone, the ID that Amazon Route 53 assigned to the reusable delegation
set when you created it. For more information about reusable delegation
sets, see CreateReusableDelegationSet.



=head2 HostedZoneConfig => L<Paws::Route53::HostedZoneConfig>

(Optional) A complex type that contains the following optional values:

=over

=item *

For public and private hosted zones, an optional comment

=item *

For private hosted zones, an optional C<PrivateZone> element

=back

If you don't specify a comment or the C<PrivateZone> element, omit
C<HostedZoneConfig> and the other elements.



=head2 B<REQUIRED> Name => Str

The name of the domain. Specify a fully qualified domain name, for
example, I<www.example.com>. The trailing dot is optional; Amazon Route
53 assumes that the domain name is fully qualified. This means that
Route 53 treats I<www.example.com> (without a trailing dot) and
I<www.example.com.> (with a trailing dot) as identical.

If you're creating a public hosted zone, this is the name you have
registered with your DNS registrar. If your domain name is registered
with a registrar other than Route 53, change the name servers for your
domain to the set of C<NameServers> that C<CreateHostedZone> returns in
C<DelegationSet>.



=head2 VPC => L<Paws::Route53::VPC>

(Private hosted zones only) A complex type that contains information
about the Amazon VPC that you're associating with this hosted zone.

You can specify only one Amazon VPC when you create a private hosted
zone. To associate additional Amazon VPCs with the hosted zone, use
AssociateVPCWithHostedZone after you create a hosted zone.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHostedZone in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

