package Paws::S3::Destination;
  use Moose;
  has AccessControlTranslation => (is => 'ro', isa => 'Paws::S3::AccessControlTranslation');
  has Account => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::S3::EncryptionConfiguration');
  has StorageClass => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Destination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Destination object:

  $service_obj->Method(Att1 => { AccessControlTranslation => $value, ..., StorageClass => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Destination object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessControlTranslation

=head1 DESCRIPTION

Container for replication destination information.

=head1 ATTRIBUTES


=head2 AccessControlTranslation => L<Paws::S3::AccessControlTranslation>

  Container for information regarding the access control for replicas.


=head2 Account => Str

  Account ID of the destination bucket. Currently this is only being
verified if Access Control Translation is enabled


=head2 B<REQUIRED> Bucket => Str

  Amazon resource name (ARN) of the bucket where you want Amazon S3 to
store replicas of the object identified by the rule.


=head2 EncryptionConfiguration => L<Paws::S3::EncryptionConfiguration>

  Container for information regarding encryption based configuration for
replicas.


=head2 StorageClass => Str

  The class of storage used to store the object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

