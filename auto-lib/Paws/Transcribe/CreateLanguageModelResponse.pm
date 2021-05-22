
package Paws::Transcribe::CreateLanguageModelResponse;
  use Moose;
  has BaseModelName => (is => 'ro', isa => 'Str');
  has InputDataConfig => (is => 'ro', isa => 'Paws::Transcribe::InputDataConfig');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has ModelName => (is => 'ro', isa => 'Str');
  has ModelStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::CreateLanguageModelResponse

=head1 ATTRIBUTES


=head2 BaseModelName => Str

The Amazon Transcribe standard language model, or base model you've
used to create a custom language model.

Valid values are: C<"NarrowBand">, C<"WideBand">
=head2 InputDataConfig => L<Paws::Transcribe::InputDataConfig>

The data access role and Amazon S3 prefixes you've chosen to create
your custom language model.


=head2 LanguageCode => Str

The language code of the text you've used to create a custom language
model.

Valid values are: C<"en-US">, C<"hi-IN">, C<"es-US">, C<"en-GB">, C<"en-AU">
=head2 ModelName => Str

The name you've chosen for your custom language model.


=head2 ModelStatus => Str

The status of the custom language model. When the status is
C<COMPLETED> the model is ready to use.

Valid values are: C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">
=head2 _request_id => Str


=cut

1;