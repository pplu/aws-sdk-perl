
package Paws::CloudFront::CreatePublicKey;
  use Moose;
  has PublicKeyConfig => (is => 'ro', isa => 'Paws::CloudFront::PublicKeyConfig', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePublicKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2019-03-26/public-key');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreatePublicKeyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreatePublicKey - Arguments for method CreatePublicKey on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePublicKey2019_03_26 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreatePublicKey2019_03_26.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePublicKey2019_03_26.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreatePublicKeyResult = $cloudfront->CreatePublicKey(
      PublicKeyConfig => {
        CallerReference => 'Mystring',
        EncodedKey      => 'Mystring',
        Name            => 'Mystring',
        Comment         => 'Mystring',
      },

    );

    # Results:
    my $ETag      = $CreatePublicKeyResult->ETag;
    my $Location  = $CreatePublicKeyResult->Location;
    my $PublicKey = $CreatePublicKeyResult->PublicKey;

    # Returns a L<Paws::CloudFront::CreatePublicKeyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreatePublicKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PublicKeyConfig => L<Paws::CloudFront::PublicKeyConfig>

The request to add a public key to CloudFront.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePublicKey2019_03_26 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

