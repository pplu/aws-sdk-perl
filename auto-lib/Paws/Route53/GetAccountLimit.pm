
package Paws::Route53::GetAccountLimit;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', uri_name => 'Type', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountLimit');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/accountlimit/{Type}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetAccountLimitResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetAccountLimit - Arguments for method GetAccountLimit on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccountLimit on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method GetAccountLimit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccountLimit.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $GetAccountLimitResponse = $route53->GetAccountLimit(
      Type => 'MAX_HEALTH_CHECKS_BY_OWNER',

    );

    # Results:
    my $Count = $GetAccountLimitResponse->Count;
    my $Limit = $GetAccountLimitResponse->Limit;

    # Returns a L<Paws::Route53::GetAccountLimitResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/GetAccountLimit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Type => Str

The limit that you want to get. Valid values include the following:

=over

=item *

B<MAX_HEALTH_CHECKS_BY_OWNER>: The maximum number of health checks that
you can create using the current account.

=item *

B<MAX_HOSTED_ZONES_BY_OWNER>: The maximum number of hosted zones that
you can create using the current account.

=item *

B<MAX_REUSABLE_DELEGATION_SETS_BY_OWNER>: The maximum number of
reusable delegation sets that you can create using the current account.

=item *

B<MAX_TRAFFIC_POLICIES_BY_OWNER>: The maximum number of traffic
policies that you can create using the current account.

=item *

B<MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER>: The maximum number of traffic
policy instances that you can create using the current account.
(Traffic policy instances are referred to as traffic flow policy
records in the Amazon Route 53 console.)

=back


Valid values are: C<"MAX_HEALTH_CHECKS_BY_OWNER">, C<"MAX_HOSTED_ZONES_BY_OWNER">, C<"MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER">, C<"MAX_REUSABLE_DELEGATION_SETS_BY_OWNER">, C<"MAX_TRAFFIC_POLICIES_BY_OWNER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccountLimit in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

