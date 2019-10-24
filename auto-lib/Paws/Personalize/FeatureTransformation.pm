# Generated from default/object.tt
package Paws::Personalize::FeatureTransformation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_FeaturizationParameters/;
  has CreationDateTime => (is => 'ro', isa => Str);
  has DefaultParameters => (is => 'ro', isa => Personalize_FeaturizationParameters);
  has FeatureTransformationArn => (is => 'ro', isa => Str);
  has LastUpdatedDateTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'LastUpdatedDateTime' => {
                                          'type' => 'Str'
                                        },
               'DefaultParameters' => {
                                        'class' => 'Paws::Personalize::FeaturizationParameters',
                                        'type' => 'Personalize_FeaturizationParameters'
                                      },
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     },
               'Name' => {
                           'type' => 'Str'
                         },
               'FeatureTransformationArn' => {
                                               'type' => 'Str'
                                             }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'LastUpdatedDateTime' => 'lastUpdatedDateTime',
                       'DefaultParameters' => 'defaultParameters',
                       'CreationDateTime' => 'creationDateTime',
                       'Name' => 'name',
                       'FeatureTransformationArn' => 'featureTransformationArn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::FeatureTransformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::FeatureTransformation object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::FeatureTransformation object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

Provides feature transformation information. Feature transformation is
the process of modifying raw input data into a form more suitable for
model training.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The creation date and time (in Unix time) of the feature
transformation.


=head2 DefaultParameters => Personalize_FeaturizationParameters

  Provides the default parameters for feature transformation.


=head2 FeatureTransformationArn => Str

  The Amazon Resource Name (ARN) of the FeatureTransformation object.


=head2 LastUpdatedDateTime => Str

  The last update date and time (in Unix time) of the feature
transformation.


=head2 Name => Str

  The name of the feature transformation.


=head2 Status => Str

  The status of the feature transformation.

A feature transformation can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

