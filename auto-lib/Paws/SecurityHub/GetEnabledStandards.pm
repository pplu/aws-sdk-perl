
package Paws::SecurityHub::GetEnabledStandards;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StandardsSubscriptionArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEnabledStandards');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/standards/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::GetEnabledStandardsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetEnabledStandards - Arguments for method GetEnabledStandards on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEnabledStandards on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method GetEnabledStandards.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEnabledStandards.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $GetEnabledStandardsResponse = $securityhub->GetEnabledStandards(
      MaxResults                => 1,                              # OPTIONAL
      NextToken                 => 'MyNextToken',                  # OPTIONAL
      StandardsSubscriptionArns => [ 'MyNonEmptyString', ... ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $GetEnabledStandardsResponse->NextToken;
    my $StandardsSubscriptions =
      $GetEnabledStandardsResponse->StandardsSubscriptions;

    # Returns a L<Paws::SecurityHub::GetEnabledStandardsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/GetEnabledStandards>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

Paginates results. On your first call to the C<GetEnabledStandards>
operation, set the value of this parameter to C<NULL>. For subsequent
calls to the operation, fill C<nextToken> in the request with the value
of C<nextToken> from the previous response to continue listing data.



=head2 StandardsSubscriptionArns => ArrayRef[Str|Undef]

A list of the standards subscription ARNs for the standards to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEnabledStandards in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

