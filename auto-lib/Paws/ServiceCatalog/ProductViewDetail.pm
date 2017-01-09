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

Detailed product view information.

=head1 ATTRIBUTES


=head2 CreatedTime => Str

  The UTC timestamp of the creation time.


=head2 ProductARN => Str

  The ARN associated with the product.


=head2 ProductViewSummary => L<Paws::ServiceCatalog::ProductViewSummary>

  The summary metadata about the specified product view.


=head2 Status => Str

  Current status of the product.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

