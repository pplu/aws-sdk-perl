
package Paws::MediaConvert::UpdatePreset;
  use Moose;
  has Category => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'category');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Settings => (is => 'ro', isa => 'Paws::MediaConvert::PresetSettings', traits => ['NameInRequest'], request_name => 'settings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePreset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/presets/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::UpdatePresetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::UpdatePreset - Arguments for method UpdatePreset on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePreset on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method UpdatePreset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePreset.

As an example:

  $service_obj->UpdatePreset(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/UpdatePreset>

=head1 ATTRIBUTES


=head2 Category => Str

The new category for the preset, if you are changing it.



=head2 Description => Str

The new description for the preset, if you are changing it.



=head2 B<REQUIRED> Name => Str

The name of the preset you are modifying.



=head2 Settings => L<Paws::MediaConvert::PresetSettings>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePreset in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

