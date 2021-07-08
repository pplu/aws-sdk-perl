
package Paws::Route53::ListHostedZonesByVPC;
  use Moose;
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'maxitems', traits => ['ParamInQuery']);
  has NextToken => (is => 'ro', isa => 'Str', query_name => 'nexttoken', traits => ['ParamInQuery']);
  has VPCId => (is => 'ro', isa => 'Str', query_name => 'vpcid', traits => ['ParamInQuery'], required => 1);
  has VPCRegion => (is => 'ro', isa => 'Str', query_name => 'vpcregion', traits => ['ParamInQuery'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHostedZonesByVPC');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzonesbyvpc');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListHostedZonesByVPCResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListHostedZonesByVPC - Arguments for method ListHostedZonesByVPC on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHostedZonesByVPC on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ListHostedZonesByVPC.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHostedZonesByVPC.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ListHostedZonesByVPCResponse = $route53->ListHostedZonesByVPC(
      VPCId     => 'MyVPCId',
      VPCRegion => 'us-east-1',
      MaxItems  => 'MyPageMaxItems',       # OPTIONAL
      NextToken => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $HostedZoneSummaries =
      $ListHostedZonesByVPCResponse->HostedZoneSummaries;
    my $MaxItems  = $ListHostedZonesByVPCResponse->MaxItems;
    my $NextToken = $ListHostedZonesByVPCResponse->NextToken;

    # Returns a L<Paws::Route53::ListHostedZonesByVPCResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ListHostedZonesByVPC>

=head1 ATTRIBUTES


=head2 MaxItems => Str

(Optional) The maximum number of hosted zones that you want Amazon
Route 53 to return. If the specified VPC is associated with more than
C<MaxItems> hosted zones, the response includes a C<NextToken> element.
C<NextToken> contains an encrypted token that identifies the first
hosted zone that Route 53 will return if you submit another request.



=head2 NextToken => Str

If the previous response included a C<NextToken> element, the specified
VPC is associated with more hosted zones. To get more hosted zones,
submit another C<ListHostedZonesByVPC> request.

For the value of C<NextToken>, specify the value of C<NextToken> from
the previous response.

If the previous response didn't include a C<NextToken> element, there
are no more hosted zones to get.



=head2 B<REQUIRED> VPCId => Str

The ID of the Amazon VPC that you want to list hosted zones for.



=head2 B<REQUIRED> VPCRegion => Str

For the Amazon VPC that you specified for C<VPCId>, the AWS Region that
you created the VPC in.

Valid values are: C<"us-east-1">, C<"us-east-2">, C<"us-west-1">, C<"us-west-2">, C<"eu-west-1">, C<"eu-west-2">, C<"eu-west-3">, C<"eu-central-1">, C<"ap-east-1">, C<"me-south-1">, C<"us-gov-west-1">, C<"us-gov-east-1">, C<"us-iso-east-1">, C<"us-isob-east-1">, C<"ap-southeast-1">, C<"ap-southeast-2">, C<"ap-south-1">, C<"ap-northeast-1">, C<"ap-northeast-2">, C<"ap-northeast-3">, C<"eu-north-1">, C<"sa-east-1">, C<"ca-central-1">, C<"cn-north-1">, C<"af-south-1">, C<"eu-south-1">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHostedZonesByVPC in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

