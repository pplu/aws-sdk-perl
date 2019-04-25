
package Paws::ServiceCatalog::DisassociateTagOptionFromResource;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has TagOptionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateTagOptionFromResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::DisassociateTagOptionFromResourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DisassociateTagOptionFromResource - Arguments for method DisassociateTagOptionFromResource on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateTagOptionFromResource on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method DisassociateTagOptionFromResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateTagOptionFromResource.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $DisassociateTagOptionFromResourceOutput =
      $servicecatalog->DisassociateTagOptionFromResource(
      ResourceId  => 'MyResourceId',
      TagOptionId => 'MyTagOptionId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/DisassociateTagOptionFromResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The resource identifier.



=head2 B<REQUIRED> TagOptionId => Str

The TagOption identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateTagOptionFromResource in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

