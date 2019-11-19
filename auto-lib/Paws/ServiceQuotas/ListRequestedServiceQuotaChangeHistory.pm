# Generated from json/callargs_class.tt

package Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistory;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ServiceQuotas::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ServiceCode => (is => 'ro', isa => Str, predicate => 1);
  has Status => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListRequestedServiceQuotaChangeHistory');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ServiceCode' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

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

(Optional) Limits the number of results that you want to include in the
response. If you don't include this parameter, the response defaults to
a value that's specific to the operation. If additional items exist
beyond the specified maximum, the C<NextToken> element is present and
has a value (isn't null). Include that value as the C<NextToken>
request parameter in the call to the operation to get the next part of
the results. You should check C<NextToken> after every operation to
ensure that you receive all of the results.



=head2 NextToken => Str

(Optional) Use this parameter in a request if you receive a
C<NextToken> response in a previous request that indicates that there's
more output available. In a subsequent call, set it to the value of the
previous call's C<NextToken> response to indicate where the output
should continue from.



=head2 ServiceCode => Str

Specifies the service that you want to use.



=head2 Status => Str

Specifies the status value of the quota increase request.

Valid values are: C<"PENDING">, C<"CASE_OPENED">, C<"APPROVED">, C<"DENIED">, C<"CASE_CLOSED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRequestedServiceQuotaChangeHistory in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

