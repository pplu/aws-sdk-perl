package Paws::Route53Resolver::ResolverRule;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OwnerId => (is => 'ro', isa => 'Str');
  has ResolverEndpointId => (is => 'ro', isa => 'Str');
  has RuleType => (is => 'ro', isa => 'Str');
  has ShareStatus => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has TargetIps => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::TargetAddress]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ResolverRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Resolver::ResolverRule object:

  $service_obj->Method(Att1 => { Arn => $value, ..., TargetIps => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Resolver::ResolverRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

For queries that originate in your VPC, detailed information about a
resolver rule, which specifies how to route DNS queries out of the VPC.
The C<ResolverRule> parameter appears in the response to a
CreateResolverRule, DeleteResolverRule, GetResolverRule,
ListResolverRules, or UpdateResolverRule request.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN (Amazon Resource Name) for the resolver rule specified by
C<Id>.


=head2 CreatorRequestId => Str

  A unique string that you specified when you created the resolver rule.
C<CreatorRequestId>identifies the request and allows failed requests to
be retried without the risk of executing the operation twice.


=head2 DomainName => Str

  DNS queries for this domain name are forwarded to the IP addresses that
are specified in C<TargetIps>. If a query matches multiple resolver
rules (example.com and www.example.com), the query is routed using the
resolver rule that contains the most specific domain name
(www.example.com).


=head2 Id => Str

  The ID that Resolver assigned to the resolver rule when you created it.


=head2 Name => Str

  The name for the resolver rule, which you specified when you created
the resolver rule.


=head2 OwnerId => Str

  When a rule is shared with another AWS account, the account ID of the
account that the rule is shared with.


=head2 ResolverEndpointId => Str

  The ID of the endpoint that the rule is associated with.


=head2 RuleType => Str

  This value is always C<FORWARD>. Other resolver rule types aren't
supported.


=head2 ShareStatus => Str

  Whether the rules is shared and, if so, whether the current account is
sharing the rule with another account, or another account is sharing
the rule with the current account.


=head2 Status => Str

  A code that specifies the current status of the resolver rule.


=head2 StatusMessage => Str

  A detailed description of the status of a resolver rule.


=head2 TargetIps => ArrayRef[L<Paws::Route53Resolver::TargetAddress>]

  An array that contains the IP addresses and ports that you want to
forward



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

