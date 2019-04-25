package Paws::Kafka::EncryptionInfo;
  use Moose;
  has EncryptionAtRest => (is => 'ro', isa => 'Paws::Kafka::EncryptionAtRest', request_name => 'encryptionAtRest', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::EncryptionInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::EncryptionInfo object:

  $service_obj->Method(Att1 => { EncryptionAtRest => $value, ..., EncryptionAtRest => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::EncryptionInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionAtRest

=head1 DESCRIPTION

Includes encryption-related information, such as the AWS KMS key used
for encrypting data at rest.

=head1 ATTRIBUTES


=head2 EncryptionAtRest => L<Paws::Kafka::EncryptionAtRest>

  The data volume encryption details.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

