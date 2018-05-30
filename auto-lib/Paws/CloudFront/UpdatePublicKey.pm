
package Paws::CloudFront::UpdatePublicKey;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);
  has PublicKeyConfig => (is => 'ro', isa => 'Paws::CloudFront::PublicKeyConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePublicKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-10-30/public-key/{Id}/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdatePublicKeyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdatePublicKey - Arguments for method UpdatePublicKey on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePublicKey2017_10_30 on the 
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdatePublicKey2017_10_30.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePublicKey2017_10_30.

As an example:

  $service_obj->UpdatePublicKey2017_10_30(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdatePublicKey>
=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

ID of the public key to be updated.



=head2 IfMatch => Str

The value of the C<ETag> header that you received when retrieving the
public key to update. For example: C<E2QWRUHAPOMQZL>.



=head2 B<REQUIRED> PublicKeyConfig => L<Paws::CloudFront::PublicKeyConfig>

Request to update public key information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePublicKey2017_10_30 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

