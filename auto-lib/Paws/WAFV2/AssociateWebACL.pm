
package Paws::WAFV2::AssociateWebACL;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has WebACLArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateWebACL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::AssociateWebACLResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::AssociateWebACL - Arguments for method AssociateWebACL on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateWebACL on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method AssociateWebACL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateWebACL.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $AssociateWebACLResponse = $wafv2->AssociateWebACL(
      ResourceArn => 'MyResourceArn',
      WebACLArn   => 'MyResourceArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/AssociateWebACL>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource to associate with the
web ACL.

The ARN must be in one of the following formats:

=over

=item *

For an Application Load Balancer:
C<arn:aws:elasticloadbalancing:I<region>:I<account-id>:loadbalancer/app/I<load-balancer-name>/I<load-balancer-id>>

=item *

For an Amazon API Gateway REST API:
C<arn:aws:apigateway:I<region>::/restapis/I<api-id>/stages/I<stage-name>>

=item *

For an AppSync GraphQL API:
C<arn:aws:appsync:I<region>:I<account-id>:apis/I<GraphQLApiId>>

=back




=head2 B<REQUIRED> WebACLArn => Str

The Amazon Resource Name (ARN) of the web ACL that you want to
associate with the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateWebACL in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

