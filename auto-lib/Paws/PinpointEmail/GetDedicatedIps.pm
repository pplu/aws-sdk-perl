
package Paws::PinpointEmail::GetDedicatedIps;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');
  has PoolName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDedicatedIps');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/dedicated-ips');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::GetDedicatedIpsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetDedicatedIps - Arguments for method GetDedicatedIps on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDedicatedIps on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method GetDedicatedIps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDedicatedIps.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $GetDedicatedIpsResponse = $email->GetDedicatedIps(
      NextToken => 'MyNextToken',    # OPTIONAL
      PageSize  => 1,                # OPTIONAL
      PoolName  => 'MyPoolName',     # OPTIONAL
    );

    # Results:
    my $DedicatedIps = $GetDedicatedIpsResponse->DedicatedIps;
    my $NextToken    = $GetDedicatedIpsResponse->NextToken;

    # Returns a L<Paws::PinpointEmail::GetDedicatedIpsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetDedicatedIps>

=head1 ATTRIBUTES


=head2 NextToken => Str

A token returned from a previous call to C<GetDedicatedIps> to indicate
the position of the dedicated IP pool in the list of IP pools.



=head2 PageSize => Int

The number of results to show in a single call to
C<GetDedicatedIpsRequest>. If the number of results is larger than the
number you specified in this parameter, then the response includes a
C<NextToken> element, which you can use to obtain additional results.



=head2 PoolName => Str

The name of the IP pool that the dedicated IP address is associated
with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDedicatedIps in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

