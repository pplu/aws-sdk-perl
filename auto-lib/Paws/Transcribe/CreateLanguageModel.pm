
package Paws::Transcribe::CreateLanguageModel;
  use Moose;
  has BaseModelName => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::Transcribe::InputDataConfig', required => 1);
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has ModelName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLanguageModel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::CreateLanguageModelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::CreateLanguageModel - Arguments for method CreateLanguageModel on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLanguageModel on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method CreateLanguageModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLanguageModel.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $CreateLanguageModelResponse = $transcribe->CreateLanguageModel(
      BaseModelName   => 'NarrowBand',
      InputDataConfig => {
        DataAccessRoleArn => 'MyDataAccessRoleArn',    # min: 20, max: 2048
        S3Uri             => 'MyUri',                  # min: 1, max: 2000
        TuningDataS3Uri   => 'MyUri',                  # min: 1, max: 2000
      },
      LanguageCode => 'en-US',
      ModelName    => 'MyModelName',

    );

    # Results:
    my $BaseModelName   = $CreateLanguageModelResponse->BaseModelName;
    my $InputDataConfig = $CreateLanguageModelResponse->InputDataConfig;
    my $LanguageCode    = $CreateLanguageModelResponse->LanguageCode;
    my $ModelName       = $CreateLanguageModelResponse->ModelName;
    my $ModelStatus     = $CreateLanguageModelResponse->ModelStatus;

    # Returns a L<Paws::Transcribe::CreateLanguageModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/CreateLanguageModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaseModelName => Str

The Amazon Transcribe standard language model, or base model used to
create your custom language model.

If you want to use your custom language model to transcribe audio with
a sample rate of 16 kHz or greater, choose C<Wideband>.

If you want to use your custom language model to transcribe audio with
a sample rate that is less than 16 kHz, choose C<Narrowband>.

Valid values are: C<"NarrowBand">, C<"WideBand">

=head2 B<REQUIRED> InputDataConfig => L<Paws::Transcribe::InputDataConfig>

Contains the data access role and the Amazon S3 prefixes to read the
required input files to create a custom language model.



=head2 B<REQUIRED> LanguageCode => Str

The language of the input text you're using to train your custom
language model.

Valid values are: C<"en-US">, C<"hi-IN">, C<"es-US">, C<"en-GB">, C<"en-AU">

=head2 B<REQUIRED> ModelName => Str

The name you choose for your custom language model when you create it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLanguageModel in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

