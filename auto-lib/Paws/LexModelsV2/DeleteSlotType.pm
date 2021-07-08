
package Paws::LexModelsV2::DeleteSlotType;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has SkipResourceInUseCheck => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'skipResourceInUseCheck');
  has SlotTypeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'slotTypeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSlotType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteSlotType - Arguments for method DeleteSlotType on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSlotType on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DeleteSlotType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSlotType.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    $models - v2 -lex->DeleteSlotType(
      BotId                  => 'MyId',
      BotVersion             => 'MyDraftBotVersion',
      LocaleId               => 'MyLocaleId',
      SlotTypeId             => 'MyId',
      SkipResourceInUseCheck => 1,                     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DeleteSlotType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot associated with the slot type.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot associated with the slot type.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale that the slot type will be
deleted from. The string must match one of the supported locales. For
more information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 SkipResourceInUseCheck => Bool

By default, the C<DeleteSlotType> operations throws a
C<ResourceInUseException> exception if you try to delete a slot type
used by a slot. Set the C<skipResourceInUseCheck> parameter to C<true>
to skip this check and remove the slot type even if a slot uses it.



=head2 B<REQUIRED> SlotTypeId => Str

The identifier of the slot type to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSlotType in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

