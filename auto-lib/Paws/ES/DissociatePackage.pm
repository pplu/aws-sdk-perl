
package Paws::ES::DissociatePackage;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has PackageID => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PackageID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DissociatePackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/packages/dissociate/{PackageID}/{DomainName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::DissociatePackageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DissociatePackage - Arguments for method DissociatePackage on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DissociatePackage on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method DissociatePackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DissociatePackage.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $DissociatePackageResponse = $es->DissociatePackage(
      DomainName => 'MyDomainName',
      PackageID  => 'MyPackageID',

    );

    # Results:
    my $DomainPackageDetails = $DissociatePackageResponse->DomainPackageDetails;

    # Returns a L<Paws::ES::DissociatePackageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/DissociatePackage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

Name of the domain that you want to associate the package with.



=head2 B<REQUIRED> PackageID => Str

Internal ID of the package that you want to associate with a domain.
Use C<DescribePackages> to find this value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DissociatePackage in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

