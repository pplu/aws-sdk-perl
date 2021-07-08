
package Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistory;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceCode => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRequestedServiceQuotaChangeHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistory - Arguments for method ListRequestedServiceQuotaChangeHistory on L<Paws::ServiceQuotas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRequestedServiceQuotaChangeHistory on the
L<Service Quotas|Paws::ServiceQuotas> service. Use the attributes of this class
as arguments to method ListRequestedServiceQuotaChangeHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRequestedServiceQuotaChangeHistory.

=head1 SYNOPSIS

    my $servicequotas = Paws->service('ServiceQuotas');
    my $ListRequestedServiceQuotaChangeHistoryResponse =
      $servicequotas->ListRequestedServiceQuotaChangeHistory(
      MaxResults  => 1,                  # OPTIONAL
      NextToken   => 'MyNextToken',      # OPTIONAL
      ServiceCode => 'MyServiceCode',    # OPTIONAL
      Status      => 'PENDING',          # OPTIONAL
      );

    # Results:
    my $NextToken = $ListRequestedServiceQuotaChangeHistoryResponse->NextToken;
    my $RequestedQuotas =
      $ListRequestedServiceQuotaChangeHistoryResponse->RequestedQuotas;

# Returns a L<Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicequotas/ListRequestedServiceQuotaChangeHistory>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, if any, make another call with the token
returned from this call.



=head2 NextToken => Str

The token for the next page of results.



=head2 ServiceCode => Str

The service identifier.



=head2 Status => Str

The status of the quota increase request.

Valid values are: C<"PENDING">, C<"CASE_OPENED">, C<"APPROVED">, C<"DENIED">, C<"CASE_CLOSED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRequestedServiceQuotaChangeHistory in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

