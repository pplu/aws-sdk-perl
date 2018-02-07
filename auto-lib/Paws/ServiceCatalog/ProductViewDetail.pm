package Paws::ServiceCatalog::ProductViewDetail;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str');
  has ProductARN => (is => 'ro', isa => 'Str');
  has ProductViewSummary => (is => 'ro', isa => 'Paws::ServiceCatalog::ProductViewSummary');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProductViewDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProductViewDetail object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProductViewDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

Information about a product view.

=head1 ATTRIBUTES


=head2 CreatedTime => Str

  The UTC time stamp of the creation time.


=head2 ProductARN => Str

  The ARN of the product.


=head2 ProductViewSummary => L<Paws::ServiceCatalog::ProductViewSummary>

  Summary information about the product view.


=head2 Status => Str

  The status of the product.

=over

=item *

C<AVAILABLE> - The product is ready for use.

=item *

C<CREATING> - Product creation has started; the product is not ready
for use.

=item *

C<FAILED> - An action failed.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

