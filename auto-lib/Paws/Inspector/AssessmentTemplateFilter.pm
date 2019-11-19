# Generated from default/object.tt
package Paws::Inspector::AssessmentTemplateFilter;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_DurationRange/;
  has DurationRange => (is => 'ro', isa => Inspector_DurationRange);
  has NamePattern => (is => 'ro', isa => Str);
  has RulesPackageArns => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NamePattern' => 'namePattern',
                       'RulesPackageArns' => 'rulesPackageArns',
                       'DurationRange' => 'durationRange'
                     },
  'types' => {
               'DurationRange' => {
                                    'class' => 'Paws::Inspector::DurationRange',
                                    'type' => 'Inspector_DurationRange'
                                  },
               'RulesPackageArns' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'NamePattern' => {
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

Paws::Inspector::AssessmentTemplateFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AssessmentTemplateFilter object:

  $service_obj->Method(Att1 => { DurationRange => $value, ..., RulesPackageArns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AssessmentTemplateFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->DurationRange

=head1 DESCRIPTION

Used as the request parameter in the ListAssessmentTemplates action.

=head1 ATTRIBUTES


=head2 DurationRange => Inspector_DurationRange

  For a record to match a filter, the value specified for this data type
property must inclusively match any value between the specified minimum
and maximum values of the B<durationInSeconds> property of the
AssessmentTemplate data type.


=head2 NamePattern => Str

  For a record to match a filter, an explicit value or a string that
contains a wildcard that is specified for this data type property must
match the value of the B<assessmentTemplateName> property of the
AssessmentTemplate data type.


=head2 RulesPackageArns => ArrayRef[Str|Undef]

  For a record to match a filter, the values that are specified for this
data type property must be contained in the list of values of the
B<rulesPackageArns> property of the AssessmentTemplate data type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

