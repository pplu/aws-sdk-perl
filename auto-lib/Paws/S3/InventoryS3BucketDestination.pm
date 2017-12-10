package Paws::S3::InventoryS3BucketDestination;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Encryption => (is => 'ro', isa => 'Paws::S3::InventoryEncryption');
  has Format => (is => 'ro', isa => 'Str', required => 1);
  has Prefix => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::InventoryS3BucketDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::InventoryS3BucketDestination object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::InventoryS3BucketDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AccountId => Str

  The ID of the account that owns the destination bucket.


=head2 B<REQUIRED> Bucket => Str

  The Amazon resource name (ARN) of the bucket where inventory results
will be published.


=head2 Encryption => L<Paws::S3::InventoryEncryption>

  Contains the type of server-side encryption used to encrypt the
inventory results.


=head2 B<REQUIRED> Format => Str

  Specifies the output format of the inventory results.


=head2 Prefix => Str

  The prefix that is prepended to all inventory results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

