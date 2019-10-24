# Generated from default/object.tt
package Paws::ComprehendMedical::Entity;
  use Moo;
  use Types::Standard qw/ArrayRef Int Str Num/;
  use Paws::ComprehendMedical::Types qw/ComprehendMedical_Trait ComprehendMedical_Attribute/;
  has Attributes => (is => 'ro', isa => ArrayRef[ComprehendMedical_Attribute]);
  has BeginOffset => (is => 'ro', isa => Int);
  has Category => (is => 'ro', isa => Str);
  has EndOffset => (is => 'ro', isa => Int);
  has Id => (is => 'ro', isa => Int);
  has Score => (is => 'ro', isa => Num);
  has Text => (is => 'ro', isa => Str);
  has Traits => (is => 'ro', isa => ArrayRef[ComprehendMedical_Trait]);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Traits' => {
                             'class' => 'Paws::ComprehendMedical::Trait',
                             'type' => 'ArrayRef[ComprehendMedical_Trait]'
                           },
               'EndOffset' => {
                                'type' => 'Int'
                              },
               'Id' => {
                         'type' => 'Int'
                       },
               'BeginOffset' => {
                                  'type' => 'Int'
                                },
               'Text' => {
                           'type' => 'Str'
                         },
               'Type' => {
                           'type' => 'Str'
                         },
               'Score' => {
                            'type' => 'Num'
                          },
               'Attributes' => {
                                 'class' => 'Paws::ComprehendMedical::Attribute',
                                 'type' => 'ArrayRef[ComprehendMedical_Attribute]'
                               },
               'Category' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::Entity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComprehendMedical::Entity object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComprehendMedical::Entity object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

Provides information about an extracted medical entity.

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[ComprehendMedical_Attribute]

  The extracted attributes that relate to this entity.


=head2 BeginOffset => Int

  The 0-based character offset in the input text that shows where the
entity begins. The offset returns the UTF-8 code point in the string.


=head2 Category => Str

  The category of the entity.


=head2 EndOffset => Int

  The 0-based character offset in the input text that shows where the
entity ends. The offset returns the UTF-8 code point in the string.


=head2 Id => Int

  The numeric identifier for the entity. This is a monotonically
increasing id unique within this response rather than a global unique
identifier.


=head2 Score => Num

  The level of confidence that Comprehend Medical has in the accuracy of
the detection.


=head2 Text => Str

  The segment of input text extracted as this entity.


=head2 Traits => ArrayRef[ComprehendMedical_Trait]

  Contextual information for the entity


=head2 Type => Str

  Describes the specific type of entity with category of entities.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

