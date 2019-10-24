# Generated from default/object.tt
package Paws::Inspector::ExclusionPreview;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::Inspector::Types qw/Inspector_Scope Inspector_Attribute/;
  has Attributes => (is => 'ro', isa => ArrayRef[Inspector_Attribute]);
  has Description => (is => 'ro', isa => Str, required => 1);
  has Recommendation => (is => 'ro', isa => Str, required => 1);
  has Scopes => (is => 'ro', isa => ArrayRef[Inspector_Scope], required => 1);
  has Title => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Scopes' => {
                             'class' => 'Paws::Inspector::Scope',
                             'type' => 'ArrayRef[Inspector_Scope]'
                           },
               'Attributes' => {
                                 'class' => 'Paws::Inspector::Attribute',
                                 'type' => 'ArrayRef[Inspector_Attribute]'
                               },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Title' => {
                            'type' => 'Str'
                          },
               'Recommendation' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'Scopes' => 'scopes',
                       'Attributes' => 'attributes',
                       'Description' => 'description',
                       'Title' => 'title',
                       'Recommendation' => 'recommendation'
                     },
  'IsRequired' => {
                    'Scopes' => 1,
                    'Description' => 1,
                    'Title' => 1,
                    'Recommendation' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ExclusionPreview

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::ExclusionPreview object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::ExclusionPreview object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

Contains information about what is excluded from an assessment run
given the current state of the assessment template.

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[Inspector_Attribute]

  The system-defined attributes for the exclusion preview.


=head2 B<REQUIRED> Description => Str

  The description of the exclusion preview.


=head2 B<REQUIRED> Recommendation => Str

  The recommendation for the exclusion preview.


=head2 B<REQUIRED> Scopes => ArrayRef[Inspector_Scope]

  The AWS resources for which the exclusion preview pertains.


=head2 B<REQUIRED> Title => Str

  The name of the exclusion preview.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

