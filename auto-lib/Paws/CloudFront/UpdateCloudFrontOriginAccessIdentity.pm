
package Paws::CloudFront::UpdateCloudFrontOriginAccessIdentity;
  use Moose;
  has CloudFrontOriginAccessIdentityConfig => (is => 'ro', isa => 'Paws::CloudFront::CloudFrontOriginAccessIdentityConfig', required => 1);
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCloudFrontOriginAccessIdentity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2018-11-05/origin-access-identity/cloudfront/{Id}/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateCloudFrontOriginAccessIdentityResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateCloudFrontOriginAccessIdentity - Arguments for method UpdateCloudFrontOriginAccessIdentity on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCloudFrontOriginAccessIdentity2018_11_05 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateCloudFrontOriginAccessIdentity2018_11_05.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCloudFrontOriginAccessIdentity2018_11_05.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $UpdateCloudFrontOriginAccessIdentityResult =
      $cloudfront->UpdateCloudFrontOriginAccessIdentity(
      CloudFrontOriginAccessIdentityConfig => {
        CallerReference => 'Mystring',
        Comment         => 'Mystring',

      },
      Id      => 'Mystring',
      IfMatch => 'Mystring',    # OPTIONAL
      );

    # Results:
    my $CloudFrontOriginAccessIdentity =
      $UpdateCloudFrontOriginAccessIdentityResult
      ->CloudFrontOriginAccessIdentity;
    my $ETag = $UpdateCloudFrontOriginAccessIdentityResult->ETag;

# Returns a L<Paws::CloudFront::UpdateCloudFrontOriginAccessIdentityResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdateCloudFrontOriginAccessIdentity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CloudFrontOriginAccessIdentityConfig => L<Paws::CloudFront::CloudFrontOriginAccessIdentityConfig>

The identity's configuration information.



=head2 B<REQUIRED> Id => Str

The identity's id.



=head2 IfMatch => Str

The value of the C<ETag> header that you received when retrieving the
identity's configuration. For example: C<E2QWRUHAPOMQZL>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCloudFrontOriginAccessIdentity2018_11_05 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

