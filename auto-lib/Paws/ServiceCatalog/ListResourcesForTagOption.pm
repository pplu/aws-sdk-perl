
package Paws::ServiceCatalog::ListResourcesForTagOption;
  use Moose;
  has PageSize => (is => 'ro', isa => 'Int');
  has PageToken => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has TagOptionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourcesForTagOption');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::ListResourcesForTagOptionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListResourcesForTagOption - Arguments for method ListResourcesForTagOption on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourcesForTagOption on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method ListResourcesForTagOption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourcesForTagOption.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $ListResourcesForTagOptionOutput =
      $servicecatalog->ListResourcesForTagOption(
      TagOptionId  => 'MyTagOptionId',
      PageSize     => 1,                   # OPTIONAL
      PageToken    => 'MyPageToken',       # OPTIONAL
      ResourceType => 'MyResourceType',    # OPTIONAL
      );

    # Results:
    my $PageToken       = $ListResourcesForTagOptionOutput->PageToken;
    my $ResourceDetails = $ListResourcesForTagOptionOutput->ResourceDetails;

    # Returns a L<Paws::ServiceCatalog::ListResourcesForTagOptionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/ListResourcesForTagOption>

=head1 ATTRIBUTES


=head2 PageSize => Int

The maximum number of items to return with this call.



=head2 PageToken => Str

The page token for the next set of results. To retrieve the first set
of results, use null.



=head2 ResourceType => Str

The resource type.

=over

=item *

C<Portfolio>

=item *

C<Product>

=back




=head2 B<REQUIRED> TagOptionId => Str

The TagOption identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourcesForTagOption in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

