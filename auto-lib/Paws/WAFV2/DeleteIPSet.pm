
package Paws::WAFV2::DeleteIPSet;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LockToken => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Scope => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIPSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::DeleteIPSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::DeleteIPSet - Arguments for method DeleteIPSet on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIPSet on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method DeleteIPSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIPSet.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $DeleteIPSetResponse = $wafv2->DeleteIPSet(
      Id        => 'MyEntityId',
      LockToken => 'MyLockToken',
      Name      => 'MyEntityName',
      Scope     => 'CLOUDFRONT',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/DeleteIPSet>

=head1 ATTRIBUTES


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

This class forms part of L<Paws>, documenting arguments for method DeleteIPSet in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

