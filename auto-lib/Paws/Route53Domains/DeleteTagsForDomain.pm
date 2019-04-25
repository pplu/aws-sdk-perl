
package Paws::Route53Domains::DeleteTagsForDomain;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has TagsToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTagsForDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::DeleteTagsForDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::DeleteTagsForDomain - Arguments for method DeleteTagsForDomain on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTagsForDomain on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method DeleteTagsForDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTagsForDomain.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $DeleteTagsForDomainResponse = $route53domains->DeleteTagsForDomain(
      DomainName   => 'MyDomainName',
      TagsToDelete => [ 'MyTagKey', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/DeleteTagsForDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The domain for which you want to delete one or more tags.



=head2 B<REQUIRED> TagsToDelete => ArrayRef[Str|Undef]

A list of tag keys to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTagsForDomain in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

