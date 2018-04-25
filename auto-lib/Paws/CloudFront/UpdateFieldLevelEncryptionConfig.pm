
package Paws::CloudFront::UpdateFieldLevelEncryptionConfig;
  use Moose;
  has FieldLevelEncryptionConfig => (is => 'ro', isa => 'Paws::CloudFront::FieldLevelEncryptionConfig', required => 1);
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFieldLevelEncryptionConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-10-30/field-level-encryption/{Id}/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateFieldLevelEncryptionConfigResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateFieldLevelEncryptionConfig - Arguments for method UpdateFieldLevelEncryptionConfig on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFieldLevelEncryptionConfig2017_10_30 on the 
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateFieldLevelEncryptionConfig2017_10_30.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFieldLevelEncryptionConfig2017_10_30.

As an example:

  $service_obj->UpdateFieldLevelEncryptionConfig2017_10_30(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldLevelEncryptionConfig => L<Paws::CloudFront::FieldLevelEncryptionConfig>

Request to update a field-level encryption configuration.



=head2 B<REQUIRED> Id => Str

The ID of the configuration you want to update.



=head2 IfMatch => Str

The value of the C<ETag> header that you received when retrieving the
configuration identity to update. For example: C<E2QWRUHAPOMQZL>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFieldLevelEncryptionConfig2017_10_30 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

