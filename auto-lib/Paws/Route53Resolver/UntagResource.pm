
package Paws::Route53Resolver::UntagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::UntagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UntagResource - Arguments for method UntagResource on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $UntagResourceResponse = $route53resolver->UntagResource(
      ResourceArn => 'MyArn',
      TagKeys     => [ 'MyTagKey', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) for the resource that you want to remove
tags from. To get the ARN for a resource, use the applicable C<Get> or
C<List> command:

=over

=item *

GetResolverEndpoint

=item *

GetResolverRule

=item *

GetResolverRuleAssociation

=item *

ListResolverEndpoints

=item *

ListResolverRuleAssociations

=item *

ListResolverRules

=back




=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The tags that you want to remove to the specified resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

