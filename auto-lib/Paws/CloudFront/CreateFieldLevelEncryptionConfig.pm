
package Paws::CloudFront::CreateFieldLevelEncryptionConfig;
  use Moose;
  has FieldLevelEncryptionConfig => (is => 'ro', isa => 'Paws::CloudFront::FieldLevelEncryptionConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFieldLevelEncryptionConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2018-11-05/field-level-encryption');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateFieldLevelEncryptionConfigResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateFieldLevelEncryptionConfig - Arguments for method CreateFieldLevelEncryptionConfig on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFieldLevelEncryptionConfig2018_11_05 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateFieldLevelEncryptionConfig2018_11_05.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFieldLevelEncryptionConfig2018_11_05.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateFieldLevelEncryptionConfigResult =
      $cloudfront->CreateFieldLevelEncryptionConfig(
      FieldLevelEncryptionConfig => {
        CallerReference          => 'Mystring',
        Comment                  => 'Mystring',
        ContentTypeProfileConfig => {
          ForwardWhenContentTypeIsUnknown => 1,
          ContentTypeProfiles             => {
            Quantity => 1,
            Items    => [
              {
                ContentType => 'Mystring',
                Format      => 'URLEncoded',    # values: URLEncoded
                ProfileId   => 'Mystring',
              },
              ...
            ],                                  # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        QueryArgProfileConfig => {
          ForwardWhenQueryArgProfileIsUnknown => 1,
          QueryArgProfiles                    => {
            Quantity => 1,
            Items    => [
              {
                ProfileId => 'Mystring',
                QueryArg  => 'Mystring',

              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },

      );

    # Results:
    my $ETag = $CreateFieldLevelEncryptionConfigResult->ETag;
    my $FieldLevelEncryption =
      $CreateFieldLevelEncryptionConfigResult->FieldLevelEncryption;
    my $Location = $CreateFieldLevelEncryptionConfigResult->Location;

 # Returns a L<Paws::CloudFront::CreateFieldLevelEncryptionConfigResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateFieldLevelEncryptionConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldLevelEncryptionConfig => L<Paws::CloudFront::FieldLevelEncryptionConfig>

The request to create a new field-level encryption configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFieldLevelEncryptionConfig2018_11_05 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

