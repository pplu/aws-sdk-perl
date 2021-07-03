
package Paws::WAFv2::UpdateRegexPatternSet;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LockToken => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RegularExpressionList => (is => 'ro', isa => 'ArrayRef[Paws::WAFv2::Regex]', required => 1);
  has Scope => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRegexPatternSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFv2::UpdateRegexPatternSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::UpdateRegexPatternSet - Arguments for method UpdateRegexPatternSet on L<Paws::WAFv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRegexPatternSet on the
L<AWS WAFV2|Paws::WAFv2> service. Use the attributes of this class
as arguments to method UpdateRegexPatternSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRegexPatternSet.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFv2');
    my $UpdateRegexPatternSetResponse = $wafv2->UpdateRegexPatternSet(
      Id                    => 'MyEntityId',
      LockToken             => 'MyLockToken',
      Name                  => 'MyEntityName',
      RegularExpressionList => [
        {
          RegexString => 'MyRegexPatternString',    # min: 1, max: 512; OPTIONAL
        },
        ...
      ],
      Scope       => 'CLOUDFRONT',
      Description => 'MyEntityDescription',    # OPTIONAL
    );

    # Results:
    my $NextLockToken = $UpdateRegexPatternSetResponse->NextLockToken;

    # Returns a L<Paws::WAFv2::UpdateRegexPatternSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/UpdateRegexPatternSet>

=head1 ATTRIBUTES


=head2 Description => Str

A friendly description of the set. You cannot change the description of
a set after you create it.



=head2 B<REQUIRED> Id => Str

A unique identifier for the set. This ID is returned in the responses
to create and list commands. You provide it to operations like update
and delete.



=head2 B<REQUIRED> LockToken => Str

A token used for optimistic locking. AWS WAF returns a token to your
get and list requests, to mark the state of the entity at the time of
the request. To make changes to the entity associated with the token,
you provide the token to operations like update and delete. AWS WAF
uses the token to ensure that no changes have been made to the entity
since you last retrieved it. If a change has been made, the update
fails with a C<WAFOptimisticLockException>. If this happens, perform
another get, and use the new token returned by that operation.



=head2 B<REQUIRED> Name => Str

A friendly name of the set. You cannot change the name after you create
the set.



=head2 B<REQUIRED> RegularExpressionList => ArrayRef[L<Paws::WAFv2::Regex>]





=head2 B<REQUIRED> Scope => Str

Specifies whether this is for an AWS CloudFront distribution or for a
regional application. A regional application can be an Application Load
Balancer (ALB) or an API Gateway stage.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:

=over

=item *

CLI - Specify the region when you use the CloudFront scope:
C<--scope=CLOUDFRONT --region=us-east-1>.

=item *

API and SDKs - For all calls, use the Region endpoint us-east-1.

=back


Valid values are: C<"CLOUDFRONT">, C<"REGIONAL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRegexPatternSet in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

