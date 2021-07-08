
package Paws::CloudFront::CreateOriginRequestPolicy;
  use Moose;
  has OriginRequestPolicyConfig => (is => 'ro', isa => 'Paws::CloudFront::OriginRequestPolicyConfig', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOriginRequestPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/origin-request-policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateOriginRequestPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateOriginRequestPolicy - Arguments for method CreateOriginRequestPolicy on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOriginRequestPolicy2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateOriginRequestPolicy2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOriginRequestPolicy2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateOriginRequestPolicyResult =
      $cloudfront->CreateOriginRequestPolicy(
      OriginRequestPolicyConfig => {
        CookiesConfig => {
          CookieBehavior => 'none',    # values: none, whitelist, all
          Cookies        => {
            Quantity => 1,
            Items    => [ 'Mystring', ... ],    # OPTIONAL
          },    # OPTIONAL
        },
        HeadersConfig => {
          HeaderBehavior => 'none'
          , # values: none, whitelist, allViewer, allViewerAndWhitelistCloudFront
          Headers => {
            Quantity => 1,
            Items    => [ 'Mystring', ... ],    # OPTIONAL
          },    # OPTIONAL
        },
        Name               => 'Mystring',
        QueryStringsConfig => {
          QueryStringBehavior => 'none',    # values: none, whitelist, all
          QueryStrings        => {
            Quantity => 1,
            Items    => [ 'Mystring', ... ],    # OPTIONAL
          },    # OPTIONAL
        },
        Comment => 'Mystring',
      },

      );

    # Results:
    my $ETag     = $CreateOriginRequestPolicyResult->ETag;
    my $Location = $CreateOriginRequestPolicyResult->Location;
    my $OriginRequestPolicy =
      $CreateOriginRequestPolicyResult->OriginRequestPolicy;

    # Returns a L<Paws::CloudFront::CreateOriginRequestPolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateOriginRequestPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OriginRequestPolicyConfig => L<Paws::CloudFront::OriginRequestPolicyConfig>

An origin request policy configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOriginRequestPolicy2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

