# Generated from default/object.tt
package Paws::Inspector::InspectorServiceAttributes;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Inspector::Types qw//;
  has AssessmentRunArn => (is => 'ro', isa => Str);
  has RulesPackageArn => (is => 'ro', isa => Str);
  has SchemaVersion => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SchemaVersion' => {
                                    'type' => 'Int'
                                  },
               'AssessmentRunArn' => {
                                       'type' => 'Str'
                                     },
               'RulesPackageArn' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'SchemaVersion' => 'schemaVersion',
                       'AssessmentRunArn' => 'assessmentRunArn',
                       'RulesPackageArn' => 'rulesPackageArn'
                     },
  'IsRequired' => {
                    'SchemaVersion' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::InspectorServiceAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::InspectorServiceAttributes object:

  $service_obj->Method(Att1 => { AssessmentRunArn => $value, ..., SchemaVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::InspectorServiceAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->AssessmentRunArn

=head1 DESCRIPTION

This data type is used in the Finding data type.

=head1 ATTRIBUTES


=head2 AssessmentRunArn => Str

  The ARN of the assessment run during which the finding is generated.


=head2 RulesPackageArn => Str

  The ARN of the rules package that is used to generate the finding.


=head2 B<REQUIRED> SchemaVersion => Int

  The schema version of this data type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

