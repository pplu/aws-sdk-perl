package Paws::ES::EncryptionAtRestOptions;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::EncryptionAtRestOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::EncryptionAtRestOptions object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., KmsKeyId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::EncryptionAtRestOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Specifies the Encryption At Rest Options.

=head1 ATTRIBUTES


=head2 Enabled => Bool

  Specifies the option to enable Encryption At Rest.


=head2 KmsKeyId => Str

  Specifies the KMS Key ID for Encryption At Rest options.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

