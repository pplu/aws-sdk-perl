package Paws::S3::SseKmsEncryptedObjects;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::SseKmsEncryptedObjects

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::SseKmsEncryptedObjects object:

  $service_obj->Method(Att1 => { Status => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::SseKmsEncryptedObjects object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

Container for filter information of selection of KMS Encrypted S3
objects.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

  The replication for KMS encrypted S3 objects is disabled if status is
not Enabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

