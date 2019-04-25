
package Paws::Route53Domains::ViewBilling;
  use Moose;
  has End => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has Start => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ViewBilling');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::ViewBillingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ViewBilling - Arguments for method ViewBilling on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ViewBilling on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method ViewBilling.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ViewBilling.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $ViewBillingResponse = $route53domains->ViewBilling(
      End      => '1970-01-01T01:00:00',    # OPTIONAL
      Marker   => 'MyPageMarker',           # OPTIONAL
      MaxItems => 1,                        # OPTIONAL
      Start    => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $BillingRecords = $ViewBillingResponse->BillingRecords;
    my $NextPageMarker = $ViewBillingResponse->NextPageMarker;

    # Returns a L<Paws::Route53Domains::ViewBillingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/ViewBilling>

=head1 ATTRIBUTES


=head2 End => Str

The end date and time for the time period for which you want a list of
billing records. Specify the date and time in Coordinated Universal
time (UTC).



=head2 Marker => Str

For an initial request for a list of billing records, omit this
element. If the number of billing records that are associated with the
current AWS account during the specified period is greater than the
value that you specified for C<MaxItems>, you can use C<Marker> to
return additional billing records. Get the value of C<NextPageMarker>
from the previous response, and submit another request that includes
the value of C<NextPageMarker> in the C<Marker> element.

Constraints: The marker must match the value of C<NextPageMarker> that
was returned in the previous response.



=head2 MaxItems => Int

The number of billing records to be returned.

Default: 20



=head2 Start => Str

The beginning date and time for the time period for which you want a
list of billing records. Specify the date and time in Coordinated
Universal time (UTC).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ViewBilling in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

