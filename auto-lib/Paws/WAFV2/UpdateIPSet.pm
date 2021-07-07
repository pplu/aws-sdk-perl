
package Paws::WAFV2::UpdateIPSet;
  use Moose;
  has Addresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LockToken => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Scope => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIPSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::UpdateIPSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::UpdateIPSet - Arguments for method UpdateIPSet on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIPSet on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method UpdateIPSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIPSet.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $UpdateIPSetResponse = $wafv2->UpdateIPSet(
      Addresses => [
        'MyIPAddress', ...    # min: 1, max: 50
      ],
      Id          => 'MyEntityId',
      LockToken   => 'MyLockToken',
      Name        => 'MyEntityName',
      Scope       => 'CLOUDFRONT',
      Description => 'MyEntityDescription',    # OPTIONAL
    );

    # Results:
    my $NextLockToken = $UpdateIPSetResponse->NextLockToken;

    # Returns a L<Paws::WAFV2::UpdateIPSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/UpdateIPSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Addresses => ArrayRef[Str|Undef]

Contains an array of strings that specify one or more IP addresses or
blocks of IP addresses in Classless Inter-Domain Routing (CIDR)
notation. WAF supports all IPv4 and IPv6 CIDR ranges except for /0.

Examples:

=over

=item *

To configure WAF to allow, block, or count requests that originated
from the IP address 192.0.2.44, specify C<192.0.2.44/32>.

=item *

To configure WAF to allow, block, or count requests that originated
from IP addresses from 192.0.2.0 to 192.0.2.255, specify
C<192.0.2.0/24>.

=item *

To configure WAF to allow, block, or count requests that originated
from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify
C<1111:0000:0000:0000:0000:0000:0000:0111/128>.

=item *

To configure WAF to allow, block, or count requests that originated
from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to
1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
C<1111:0000:0000:0000:0000:0000:0000:0000/64>.

=back

For more information about CIDR notation, see the Wikipedia entry
Classless Inter-Domain Routing
(https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).



=head2 Description => Str

A description of the IP set that helps with identification.



=head2 B<REQUIRED> Id => Str

A unique identifier for the set. This ID is returned in the responses
to create and list commands. You provide it to operations like update
and delete.



=head2 B<REQUIRED> LockToken => Str

A token used for optimistic locking. WAF returns a token to your get
and list requests, to mark the state of the entity at the time of the
request. To make changes to the entity associated with the token, you
provide the token to operations like update and delete. WAF uses the
token to ensure that no changes have been made to the entity since you
last retrieved it. If a change has been made, the update fails with a
C<WAFOptimisticLockException>. If this happens, perform another get,
and use the new token returned by that operation.



=head2 B<REQUIRED> Name => Str

The name of the IP set. You cannot change the name of an C<IPSet> after
you create it.



=head2 B<REQUIRED> Scope => Str

Specifies whether this is for an Amazon CloudFront distribution or for
a regional application. A regional application can be an Application
Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync
GraphQL API.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:

=over

=item *

CLI - Specify the Region when you use the CloudFront scope:
C<--scope=CLOUDFRONT --region=us-east-1>.

=item *

API and SDKs - For all calls, use the Region endpoint us-east-1.

=back


Valid values are: C<"CLOUDFRONT">, C<"REGIONAL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIPSet in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

