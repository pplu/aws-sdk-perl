
package Paws::Route53Domains::GetContactReachabilityStatus;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContactReachabilityStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::GetContactReachabilityStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::GetContactReachabilityStatus - Arguments for method GetContactReachabilityStatus on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContactReachabilityStatus on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method GetContactReachabilityStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContactReachabilityStatus.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $GetContactReachabilityStatusResponse =
      $route53domains->GetContactReachabilityStatus(
      DomainName => 'MyDomainName',    # OPTIONAL
      );

    # Results:
    my $DomainName = $GetContactReachabilityStatusResponse->DomainName;
    my $Status     = $GetContactReachabilityStatusResponse->Status;

# Returns a L<Paws::Route53Domains::GetContactReachabilityStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/GetContactReachabilityStatus>

=head1 ATTRIBUTES


=head2 DomainName => Str

The name of the domain for which you want to know whether the
registrant contact has confirmed that the email address is valid.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContactReachabilityStatus in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

