
package Paws::ServiceQuotas::GetRequestedServiceQuotaChange;
  use Moose;
  has RequestId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRequestedServiceQuotaChange');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceQuotas::GetRequestedServiceQuotaChangeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::GetRequestedServiceQuotaChange - Arguments for method GetRequestedServiceQuotaChange on L<Paws::ServiceQuotas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRequestedServiceQuotaChange on the
L<Service Quotas|Paws::ServiceQuotas> service. Use the attributes of this class
as arguments to method GetRequestedServiceQuotaChange.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRequestedServiceQuotaChange.

=head1 SYNOPSIS

    my $servicequotas = Paws->service('ServiceQuotas');
    my $GetRequestedServiceQuotaChangeResponse =
      $servicequotas->GetRequestedServiceQuotaChange(
      RequestId => 'MyRequestId',

      );

    # Results:
    my $RequestedQuota =
      $GetRequestedServiceQuotaChangeResponse->RequestedQuota;

# Returns a L<Paws::ServiceQuotas::GetRequestedServiceQuotaChangeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicequotas/GetRequestedServiceQuotaChange>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RequestId => Str

The ID of the quota increase request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRequestedServiceQuotaChange in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

