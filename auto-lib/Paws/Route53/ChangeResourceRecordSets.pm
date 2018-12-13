
package Paws::Route53::ChangeResourceRecordSets;
  use Moose;
  has ChangeBatch => (is => 'ro', isa => 'Paws::Route53::ChangeBatch', required => 1);
  has HostedZoneId => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeResourceRecordSets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone/{Id}/rrset/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ChangeResourceRecordSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ChangeResourceRecordSets - Arguments for method ChangeResourceRecordSets on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ChangeResourceRecordSets on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ChangeResourceRecordSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ChangeResourceRecordSets.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ChangeResourceRecordSetsResponse = $route53->ChangeResourceRecordSets(
      ChangeBatch => {
        Changes => [
          {
            Action            => 'CREATE',    # values: CREATE, DELETE, UPSERT
            ResourceRecordSet => {
              Name => 'MyDNSName',            # max: 1024
              Type => 'SOA'
              , # values: SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA, CAA
              AliasTarget => {
                DNSName              => 'MyDNSName',       # max: 1024
                EvaluateTargetHealth => 1,
                HostedZoneId         => 'MyResourceId',    # max: 32

              },    # OPTIONAL
              Failover    => 'PRIMARY',   # values: PRIMARY, SECONDARY; OPTIONAL
              GeoLocation => {
                ContinentCode =>
                  'MyGeoLocationContinentCode',    # min: 2, max: 2; OPTIONAL
                CountryCode =>
                  'MyGeoLocationCountryCode',      # min: 1, max: 2; OPTIONAL
                SubdivisionCode =>
                  'MyGeoLocationSubdivisionCode',    # min: 1, max: 3; OPTIONAL
              },    # OPTIONAL
              HealthCheckId    => 'MyHealthCheckId',    # max: 64; OPTIONAL
              MultiValueAnswer => 1,                    # OPTIONAL
              Region           => 'us-east-1'
              , # values: us-east-1, us-east-2, us-west-1, us-west-2, ca-central-1, eu-west-1, eu-west-2, eu-west-3, eu-central-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, ap-northeast-3, eu-north-1, sa-east-1, cn-north-1, cn-northwest-1, ap-south-1min: 1, max: 64; OPTIONAL
              ResourceRecords => [
                {
                  Value => 'MyRData',    # max: 4000

                },
                ...
              ],                         # min: 1; OPTIONAL
              SetIdentifier =>
                'MyResourceRecordSetIdentifier',    # min: 1, max: 128; OPTIONAL
              TTL => 1,                             # max: 2147483647; OPTIONAL
              TrafficPolicyInstanceId =>
                'MyTrafficPolicyInstanceId',        # min: 1, max: 36; OPTIONAL
              Weight => 1,                          # max: 255; OPTIONAL
            },

          },
          ...
        ],                                          # min: 1
        Comment => 'MyResourceDescription',         # max: 256; OPTIONAL
      },
      HostedZoneId => 'MyResourceId',

    );

    # Results:
    my $ChangeInfo = $ChangeResourceRecordSetsResponse->ChangeInfo;

    # Returns a L<Paws::Route53::ChangeResourceRecordSetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ChangeResourceRecordSets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeBatch => L<Paws::Route53::ChangeBatch>

A complex type that contains an optional comment and the C<Changes>
element.



=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone that contains the resource record sets that
you want to change.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ChangeResourceRecordSets in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

