
package Paws::CloudFront::UpdateFieldLevelEncryptionConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_FieldLevelEncryptionConfig/;
  has FieldLevelEncryptionConfig => (is => 'ro', isa => CloudFront_FieldLevelEncryptionConfig, required => 1, predicate => 1);
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IfMatch => (is => 'ro', isa => Str, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateFieldLevelEncryptionConfig');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2019-03-26/field-level-encryption/{Id}/config');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudFront::UpdateFieldLevelEncryptionConfigResult');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'IfMatch' => {
                              'type' => 'Str'
                            },
               'FieldLevelEncryptionConfig' => {
                                                 'type' => 'CloudFront_FieldLevelEncryptionConfig',
                                                 'class' => 'Paws::CloudFront::FieldLevelEncryptionConfig'
                                               }
             },
  'IsRequired' => {
                    'Id' => 1,
                    'FieldLevelEncryptionConfig' => 1
                  },
  'ParamInURI' => {
                    'Id' => 'Id'
                  },
  'ParamInHeader' => {
                       'IfMatch' => 'If-Match'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateFieldLevelEncryptionConfig - Arguments for method UpdateFieldLevelEncryptionConfig on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFieldLevelEncryptionConfig2019_03_26 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateFieldLevelEncryptionConfig2019_03_26.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFieldLevelEncryptionConfig2019_03_26.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $UpdateFieldLevelEncryptionConfigResult =
      $cloudfront->UpdateFieldLevelEncryptionConfig(
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
      Id      => 'Mystring',
      IfMatch => 'Mystring',    # OPTIONAL
      );

    # Results:
    my $ETag = $UpdateFieldLevelEncryptionConfigResult->ETag;
    my $FieldLevelEncryption =
      $UpdateFieldLevelEncryptionConfigResult->FieldLevelEncryption;

 # Returns a L<Paws::CloudFront::UpdateFieldLevelEncryptionConfigResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdateFieldLevelEncryptionConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldLevelEncryptionConfig => CloudFront_FieldLevelEncryptionConfig

Request to update a field-level encryption configuration.



=head2 B<REQUIRED> Id => Str

The ID of the configuration you want to update.



=head2 IfMatch => Str

The value of the C<ETag> header that you received when retrieving the
configuration identity to update. For example: C<E2QWRUHAPOMQZL>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFieldLevelEncryptionConfig2019_03_26 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

