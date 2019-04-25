
package Paws::ES::DeleteElasticsearchDomain;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteElasticsearchDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/domain/{DomainName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::DeleteElasticsearchDomainResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DeleteElasticsearchDomain - Arguments for method DeleteElasticsearchDomain on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteElasticsearchDomain on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method DeleteElasticsearchDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteElasticsearchDomain.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $DeleteElasticsearchDomainResponse = $es->DeleteElasticsearchDomain(
      DomainName => 'MyDomainName',

    );

    # Results:
    my $DomainStatus = $DeleteElasticsearchDomainResponse->DomainStatus;

    # Returns a L<Paws::ES::DeleteElasticsearchDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/DeleteElasticsearchDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The name of the Elasticsearch domain that you want to permanently
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteElasticsearchDomain in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

