
package Paws::WAFV2::ListResourcesForWebACL;
  use Moose;
  has ResourceType => (is => 'ro', isa => 'Str');
  has WebACLArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourcesForWebACL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::ListResourcesForWebACLResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::ListResourcesForWebACL - Arguments for method ListResourcesForWebACL on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourcesForWebACL on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method ListResourcesForWebACL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourcesForWebACL.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $ListResourcesForWebACLResponse = $wafv2->ListResourcesForWebACL(
      WebACLArn    => 'MyResourceArn',
      ResourceType => 'APPLICATION_LOAD_BALANCER',    # OPTIONAL
    );

    # Results:
    my $ResourceArns = $ListResourcesForWebACLResponse->ResourceArns;

    # Returns a L<Paws::WAFV2::ListResourcesForWebACLResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/ListResourcesForWebACL>

=head1 ATTRIBUTES


=head2 ResourceType => Str

Used for web ACLs that are scoped for regional applications. A regional
application can be an Application Load Balancer (ALB), an Amazon API
Gateway REST API, or an AppSync GraphQL API.

Valid values are: C<"APPLICATION_LOAD_BALANCER">, C<"API_GATEWAY">, C<"APPSYNC">

=head2 B<REQUIRED> WebACLArn => Str

The Amazon Resource Name (ARN) of the web ACL.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourcesForWebACL in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

