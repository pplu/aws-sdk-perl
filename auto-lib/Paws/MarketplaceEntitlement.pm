package Paws::MarketplaceEntitlement;
  use Moose;
  sub service { 'entitlement.marketplace' }
  sub signing_name { 'aws-marketplace' }
  sub version { '2017-01-11' }
  sub target_prefix { 'AWSMPEntitlementService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub GetEntitlements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceEntitlement::GetEntitlements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllEntitlements {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetEntitlements(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetEntitlements(@_, NextToken => $next_result->NextToken);
        push @{ $result->Entitlements }, @{ $next_result->Entitlements };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Entitlements') foreach (@{ $result->Entitlements });
        $result = $self->GetEntitlements(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Entitlements') foreach (@{ $result->Entitlements });
    }

    return undef
  }


  sub operations { qw/GetEntitlements / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceEntitlement - Perl Interface to AWS AWS Marketplace Entitlement Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MarketplaceEntitlement');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Marketplace Entitlement Service

This reference provides descriptions of the AWS Marketplace Entitlement
Service API.

AWS Marketplace Entitlement Service is used to determine the
entitlement of a customer to a given product. An entitlement represents
capacity in a product owned by the customer. For example, a customer
might own some number of users or seats in an SaaS application or some
amount of data capacity in a multi-tenant database.

B<Getting Entitlement Records>

=over

=item *

I<GetEntitlements>- Gets the entitlements for a Marketplace product.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/marketplaceentitlement/latest/APIReference/Welcome.html>


=head1 METHODS

=head2 GetEntitlements

=over

=item ProductCode => Str

=item [Filter => L<Paws::MarketplaceEntitlement::GetEntitlementFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MarketplaceEntitlement::GetEntitlements>

Returns: a L<Paws::MarketplaceEntitlement::GetEntitlementsResult> instance

GetEntitlements retrieves entitlement values for a given product. The
results can be filtered based on customer identifier or product
dimensions.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllEntitlements(sub { },ProductCode => Str, [Filter => L<Paws::MarketplaceEntitlement::GetEntitlementFilters>, MaxResults => Int, NextToken => Str])

=head2 GetAllEntitlements(ProductCode => Str, [Filter => L<Paws::MarketplaceEntitlement::GetEntitlementFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Entitlements, passing the object as the first parameter, and the string 'Entitlements' as the second parameter 

If not, it will return a a L<Paws::MarketplaceEntitlement::GetEntitlementsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

