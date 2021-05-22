
package Paws::Route53Resolver::PutResolverQueryLogConfigPolicy;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ResolverQueryLogConfigPolicy => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResolverQueryLogConfigPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::PutResolverQueryLogConfigPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::PutResolverQueryLogConfigPolicy - Arguments for method PutResolverQueryLogConfigPolicy on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResolverQueryLogConfigPolicy on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method PutResolverQueryLogConfigPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResolverQueryLogConfigPolicy.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $PutResolverQueryLogConfigPolicyResponse =
      $route53resolver->PutResolverQueryLogConfigPolicy(
      Arn                          => 'MyArn',
      ResolverQueryLogConfigPolicy => 'MyResolverQueryLogConfigPolicy',

      );

    # Results:
    my $ReturnValue = $PutResolverQueryLogConfigPolicyResponse->ReturnValue;

# Returns a L<Paws::Route53Resolver::PutResolverQueryLogConfigPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/PutResolverQueryLogConfigPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the account that you want to share
rules with.



=head2 B<REQUIRED> ResolverQueryLogConfigPolicy => Str

An AWS Identity and Access Management policy statement that lists the
query logging configurations that you want to share with another AWS
account and the operations that you want the account to be able to
perform. You can specify the following operations in the C<Actions>
section of the statement:

=over

=item *

C<route53resolver:AssociateResolverQueryLogConfig>

=item *

C<route53resolver:DisassociateResolverQueryLogConfig>

=item *

C<route53resolver:ListResolverQueryLogConfigAssociations>

=item *

C<route53resolver:ListResolverQueryLogConfigs>

=back

In the C<Resource> section of the statement, you specify the ARNs for
the query logging configurations that you want to share with the
account that you specified in C<Arn>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResolverQueryLogConfigPolicy in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

