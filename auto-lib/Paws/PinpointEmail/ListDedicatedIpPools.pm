
package Paws::PinpointEmail::ListDedicatedIpPools;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDedicatedIpPools');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/dedicated-ip-pools');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::ListDedicatedIpPoolsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::ListDedicatedIpPools - Arguments for method ListDedicatedIpPools on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDedicatedIpPools on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method ListDedicatedIpPools.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDedicatedIpPools.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $ListDedicatedIpPoolsResponse = $email->ListDedicatedIpPools(
      NextToken => 'MyNextToken',    # OPTIONAL
      PageSize  => 1,                # OPTIONAL
    );

    # Results:
    my $DedicatedIpPools = $ListDedicatedIpPoolsResponse->DedicatedIpPools;
    my $NextToken        = $ListDedicatedIpPoolsResponse->NextToken;

    # Returns a L<Paws::PinpointEmail::ListDedicatedIpPoolsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/ListDedicatedIpPools>

=head1 ATTRIBUTES


=head2 NextToken => Str

A token returned from a previous call to C<ListDedicatedIpPools> to
indicate the position in the list of dedicated IP pools.



=head2 PageSize => Int

The number of results to show in a single call to
C<ListDedicatedIpPools>. If the number of results is larger than the
number you specified in this parameter, then the response includes a
C<NextToken> element, which you can use to obtain additional results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDedicatedIpPools in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

