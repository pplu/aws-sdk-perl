
package Paws::LexModelsV2::CreateUploadUrl;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUploadUrl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createuploadurl/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::CreateUploadUrlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateUploadUrl - Arguments for method CreateUploadUrl on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUploadUrl on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method CreateUploadUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUploadUrl.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $CreateUploadUrlResponse = $models - v2 -lex->CreateUploadUrl();

    # Results:
    my $ImportId  = $CreateUploadUrlResponse->ImportId;
    my $UploadUrl = $CreateUploadUrlResponse->UploadUrl;

    # Returns a L<Paws::LexModelsV2::CreateUploadUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/CreateUploadUrl>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUploadUrl in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

