# Generated by default/object.tt
package Paws::Transcribe::LanguageModel;
  use Moose;
  has BaseModelName => (is => 'ro', isa => 'Str');
  has CreateTime => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has InputDataConfig => (is => 'ro', isa => 'Paws::Transcribe::InputDataConfig');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has ModelName => (is => 'ro', isa => 'Str');
  has ModelStatus => (is => 'ro', isa => 'Str');
  has UpgradeAvailability => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::LanguageModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transcribe::LanguageModel object:

  $service_obj->Method(Att1 => { BaseModelName => $value, ..., UpgradeAvailability => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transcribe::LanguageModel object:

  $result = $service_obj->Method(...);
  $result->Att1->BaseModelName

=head1 DESCRIPTION

The structure used to describe a custom language model.

=head1 ATTRIBUTES


=head2 BaseModelName => Str

The Amazon Transcribe standard language model, or base model used to
create the custom language model.


=head2 CreateTime => Str

The time the custom language model was created.


=head2 FailureReason => Str

The reason why the custom language model couldn't be created.


=head2 InputDataConfig => L<Paws::Transcribe::InputDataConfig>

The data access role and Amazon S3 prefixes for the input files used to
train the custom language model.


=head2 LanguageCode => Str

The language code you used to create your custom language model.


=head2 LastModifiedTime => Str

The most recent time the custom language model was modified.


=head2 ModelName => Str

The name of the custom language model.


=head2 ModelStatus => Str

The creation status of a custom language model. When the status is
C<COMPLETED> the model is ready for use.


=head2 UpgradeAvailability => Bool

Whether the base model used for the custom language model is up to
date. If this field is C<true> then you are running the most up-to-date
version of the base model in your custom language model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

