package Paws::S3::InventoryEncryption;
  use Moose;
  has SSEKMS => (is => 'ro', isa => 'Paws::S3::SSEKMS', request_name => 'SSE-KMS', traits => ['NameInRequest']);
  has SSES3 => (is => 'ro', isa => 'Paws::S3::SSES3', request_name => 'SSE-S3', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::InventoryEncryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::InventoryEncryption object:

  $service_obj->Method(Att1 => { SSEKMS => $value, ..., SSES3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::InventoryEncryption object:

  $result = $service_obj->Method(...);
  $result->Att1->SSEKMS

=head1 DESCRIPTION

Contains the type of server-side encryption used to encrypt the
inventory results.

=head1 ATTRIBUTES


=head2 SSEKMS => L<Paws::S3::SSEKMS>

  Specifies the use of SSE-KMS to encrypt delivered Inventory reports.


=head2 SSES3 => L<Paws::S3::SSES3>

  Specifies the use of SSE-S3 to encrypt delivered Inventory reports.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

