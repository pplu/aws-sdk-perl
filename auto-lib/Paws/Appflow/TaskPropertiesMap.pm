package Paws::Appflow::TaskPropertiesMap;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has CONCAT_FORMAT => (is => 'ro', isa => 'Str');
  has DATA_TYPE => (is => 'ro', isa => 'Str');
  has DESTINATION_DATA_TYPE => (is => 'ro', isa => 'Str');
  has LOWER_BOUND => (is => 'ro', isa => 'Str');
  has MASK_LENGTH => (is => 'ro', isa => 'Str');
  has MASK_VALUE => (is => 'ro', isa => 'Str');
  has MATH_OPERATION_FIELDS_ORDER => (is => 'ro', isa => 'Str');
  has SOURCE_DATA_TYPE => (is => 'ro', isa => 'Str');
  has SUBFIELD_CATEGORY_MAP => (is => 'ro', isa => 'Str');
  has TRUNCATE_LENGTH => (is => 'ro', isa => 'Str');
  has UPPER_BOUND => (is => 'ro', isa => 'Str');
  has VALIDATION_ACTION => (is => 'ro', isa => 'Str');
  has VALUE => (is => 'ro', isa => 'Str');
  has VALUES => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::TaskPropertiesMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Appflow::TaskPropertiesMap object:

  $service_obj->Method(Att1 => { CONCAT_FORMAT => $value, ..., VALUES => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Appflow::TaskPropertiesMap object:

  $result = $service_obj->Method(...);
  $result->Att1->CONCAT_FORMAT

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CONCAT_FORMAT => Str


=head2 DATA_TYPE => Str


=head2 DESTINATION_DATA_TYPE => Str


=head2 LOWER_BOUND => Str


=head2 MASK_LENGTH => Str


=head2 MASK_VALUE => Str


=head2 MATH_OPERATION_FIELDS_ORDER => Str


=head2 SOURCE_DATA_TYPE => Str


=head2 SUBFIELD_CATEGORY_MAP => Str


=head2 TRUNCATE_LENGTH => Str


=head2 UPPER_BOUND => Str


=head2 VALIDATION_ACTION => Str


=head2 VALUE => Str


=head2 VALUES => Str



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

