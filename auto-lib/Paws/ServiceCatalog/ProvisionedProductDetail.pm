package Paws::ServiceCatalog::ProvisionedProductDetail;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has LastRecordId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProvisionedProductDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProvisionedProductDetail object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProvisionedProductDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Detailed information about a ProvisionedProduct object.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN associated with the ProvisionedProduct object.


=head2 CreatedTime => Str

  The UTC timestamp of the creation time.


=head2 Id => Str

  The identifier of the ProvisionedProduct object.


=head2 IdempotencyToken => Str

  A token to disambiguate duplicate requests. You can create multiple
resources using the same input in multiple requests, provided that you
also specify a different idempotency token for each request.


=head2 LastRecordId => Str

  The record identifier of the last request performed on this
ProvisionedProduct object.


=head2 Name => Str

  The user-friendly name of the ProvisionedProduct object.


=head2 Status => Str

  The current status of the ProvisionedProduct.


=head2 StatusMessage => Str

  The current status message of the ProvisionedProduct.


=head2 Type => Str

  The type of the ProvisionedProduct object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

