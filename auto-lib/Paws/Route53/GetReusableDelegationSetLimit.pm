
package Paws::Route53::GetReusableDelegationSetLimit;
  use Moose;
  has DelegationSetId => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has Type => (is => 'ro', isa => 'Str', uri_name => 'Type', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReusableDelegationSetLimit');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/reusabledelegationsetlimit/{Id}/{Type}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetReusableDelegationSetLimitResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetReusableDelegationSetLimit - Arguments for method GetReusableDelegationSetLimit on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReusableDelegationSetLimit on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method GetReusableDelegationSetLimit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReusableDelegationSetLimit.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $GetReusableDelegationSetLimitResponse =
      $route53->GetReusableDelegationSetLimit(
      DelegationSetId => 'MyResourceId',
      Type            => 'MAX_ZONES_BY_REUSABLE_DELEGATION_SET',

      );

    # Results:
    my $Count = $GetReusableDelegationSetLimitResponse->Count;
    my $Limit = $GetReusableDelegationSetLimitResponse->Limit;

    # Returns a L<Paws::Route53::GetReusableDelegationSetLimitResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/GetReusableDelegationSetLimit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DelegationSetId => Str

The ID of the delegation set that you want to get the limit for.



=head2 B<REQUIRED> Type => Str

Specify C<MAX_ZONES_BY_REUSABLE_DELEGATION_SET> to get the maximum
number of hosted zones that you can associate with the specified
reusable delegation set.

Valid values are: C<"MAX_ZONES_BY_REUSABLE_DELEGATION_SET">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReusableDelegationSetLimit in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

