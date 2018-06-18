
package Paws::Route53::GetHostedZoneLimit;
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has Type => (is => 'ro', isa => 'Str', uri_name => 'Type', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHostedZoneLimit');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzonelimit/{Id}/{Type}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetHostedZoneLimitResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHostedZoneLimit - Arguments for method GetHostedZoneLimit on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetHostedZoneLimit on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method GetHostedZoneLimit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetHostedZoneLimit.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $GetHostedZoneLimitResponse = $route53->GetHostedZoneLimit(
      HostedZoneId => 'MyResourceId',
      Type         => 'MAX_RRSETS_BY_ZONE',

    );

    # Results:
    my $Count = $GetHostedZoneLimitResponse->Count;
    my $Limit = $GetHostedZoneLimitResponse->Limit;

    # Returns a L<Paws::Route53::GetHostedZoneLimitResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/GetHostedZoneLimit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone that you want to get a limit for.



=head2 B<REQUIRED> Type => Str

The limit that you want to get. Valid values include the following:

=over

=item *

B<MAX_RRSETS_BY_ZONE>: The maximum number of records that you can
create in the specified hosted zone.

=item *

B<MAX_VPCS_ASSOCIATED_BY_ZONE>: The maximum number of Amazon VPCs that
you can associate with the specified private hosted zone.

=back


Valid values are: C<"MAX_RRSETS_BY_ZONE">, C<"MAX_VPCS_ASSOCIATED_BY_ZONE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetHostedZoneLimit in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

