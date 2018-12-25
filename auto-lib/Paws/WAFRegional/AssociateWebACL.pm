
package Paws::WAFRegional::AssociateWebACL;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has WebACLId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateWebACL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::AssociateWebACLResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::AssociateWebACL - Arguments for method AssociateWebACL on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateWebACL on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method AssociateWebACL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateWebACL.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    my $AssociateWebACLResponse = $waf -regional->AssociateWebACL(
      ResourceArn => 'MyResourceArn',
      WebACLId    => 'MyResourceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/AssociateWebACL>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN (Amazon Resource Name) of the resource to be protected, either
an application load balancer or Amazon API Gateway stage.

The ARN should be in one of the following formats:

=over

=item *

For an Application Load Balancer:
C<arn:aws:elasticloadbalancing:I<region>:I<account-id>:loadbalancer/app/I<load-balancer-name>/I<load-balancer-id>>

=item *

For an Amazon API Gateway stage:
C<arn:aws:apigateway:I<region>::/restapis/I<api-id>/stages/I<stage-name>>

=back




=head2 B<REQUIRED> WebACLId => Str

A unique identifier (ID) for the web ACL.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateWebACL in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

