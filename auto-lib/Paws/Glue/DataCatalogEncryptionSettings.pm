package Paws::Glue::DataCatalogEncryptionSettings;
  use Moose;
  has ConnectionPasswordEncryption => (is => 'ro', isa => 'Paws::Glue::ConnectionPasswordEncryption');
  has EncryptionAtRest => (is => 'ro', isa => 'Paws::Glue::EncryptionAtRest');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DataCatalogEncryptionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::DataCatalogEncryptionSettings object:

  $service_obj->Method(Att1 => { ConnectionPasswordEncryption => $value, ..., EncryptionAtRest => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::DataCatalogEncryptionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionPasswordEncryption

=head1 DESCRIPTION

Contains configuration information for maintaining Data Catalog
security.

=head1 ATTRIBUTES


=head2 ConnectionPasswordEncryption => L<Paws::Glue::ConnectionPasswordEncryption>

  When password protection is enabled, the Data Catalog uses a
customer-provided key to encrypt the password as part of
C<CreateConnection> or C<UpdateConnection> and store it in the
C<ENCRYPTED_PASSWORD> field in the connection properties. You can
enable catalog encryption or only password encryption.


=head2 EncryptionAtRest => L<Paws::Glue::EncryptionAtRest>

  Specifies encryption-at-rest configuration for the Data Catalog.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

