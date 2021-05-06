
package Paws::WAFv2::GetWebACL;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Scope => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWebACL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFv2::GetWebACLResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::GetWebACL - Arguments for method GetWebACL on L<Paws::WAFv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWebACL on the
L<AWS WAFV2|Paws::WAFv2> service. Use the attributes of this class
as arguments to method GetWebACL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWebACL.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFv2');
    my $GetWebACLResponse = $wafv2->GetWebACL(
      Id    => 'MyEntityId',
      Name  => 'MyEntityName',
      Scope => 'CLOUDFRONT',

    );

    # Results:
    my $LockToken = $GetWebACLResponse->LockToken;
    my $WebACL    = $GetWebACLResponse->WebACL;

    # Returns a L<Paws::WAFv2::GetWebACLResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/GetWebACL>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier for the Web ACL. This ID is returned in the
responses to create and list commands. You provide it to operations
like update and delete.



=head2 B<REQUIRED> Name => Str

A friendly name of the Web ACL. You cannot change the name of a Web ACL
after you create it.



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

This class forms part of L<Paws>, documenting arguments for method GetWebACL in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

