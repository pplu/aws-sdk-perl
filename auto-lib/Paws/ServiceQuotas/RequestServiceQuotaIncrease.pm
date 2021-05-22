
package Paws::ServiceQuotas::RequestServiceQuotaIncrease;
  use Moose;
  has DesiredValue => (is => 'ro', isa => 'Num', required => 1);
  has QuotaCode => (is => 'ro', isa => 'Str', required => 1);
  has ServiceCode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RequestServiceQuotaIncrease');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceQuotas::RequestServiceQuotaIncreaseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::RequestServiceQuotaIncrease - Arguments for method RequestServiceQuotaIncrease on L<Paws::ServiceQuotas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RequestServiceQuotaIncrease on the
L<Service Quotas|Paws::ServiceQuotas> service. Use the attributes of this class
as arguments to method RequestServiceQuotaIncrease.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RequestServiceQuotaIncrease.

=head1 SYNOPSIS

    my $servicequotas = Paws->service('ServiceQuotas');
    my $RequestServiceQuotaIncreaseResponse =
      $servicequotas->RequestServiceQuotaIncrease(
      DesiredValue => 1,
      QuotaCode    => 'MyQuotaCode',
      ServiceCode  => 'MyServiceCode',

      );

    # Results:
    my $RequestedQuota = $RequestServiceQuotaIncreaseResponse->RequestedQuota;

 # Returns a L<Paws::ServiceQuotas::RequestServiceQuotaIncreaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicequotas/RequestServiceQuotaIncrease>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DesiredValue => Num

The new, increased value for the quota.



=head2 B<REQUIRED> QuotaCode => Str

The quota identifier.



=head2 B<REQUIRED> ServiceCode => Str

The service identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RequestServiceQuotaIncrease in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

