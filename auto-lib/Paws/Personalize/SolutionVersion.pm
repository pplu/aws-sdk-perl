# Generated from default/object.tt
package Paws::Personalize::SolutionVersion;
  use Moo;
  use Types::Standard qw/Str Bool Num/;
  use Paws::Personalize::Types qw/Personalize_SolutionConfig/;
  has CreationDateTime => (is => 'ro', isa => Str);
  has DatasetGroupArn => (is => 'ro', isa => Str);
  has EventType => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has LastUpdatedDateTime => (is => 'ro', isa => Str);
  has PerformAutoML => (is => 'ro', isa => Bool);
  has PerformHPO => (is => 'ro', isa => Bool);
  has RecipeArn => (is => 'ro', isa => Str);
  has SolutionArn => (is => 'ro', isa => Str);
  has SolutionConfig => (is => 'ro', isa => Personalize_SolutionConfig);
  has SolutionVersionArn => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has TrainingHours => (is => 'ro', isa => Num);
  has TrainingMode => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PerformHPO' => 'performHPO',
                       'RecipeArn' => 'recipeArn',
                       'FailureReason' => 'failureReason',
                       'SolutionVersionArn' => 'solutionVersionArn',
                       'LastUpdatedDateTime' => 'lastUpdatedDateTime',
                       'PerformAutoML' => 'performAutoML',
                       'CreationDateTime' => 'creationDateTime',
                       'SolutionArn' => 'solutionArn',
                       'Status' => 'status',
                       'SolutionConfig' => 'solutionConfig',
                       'TrainingHours' => 'trainingHours',
                       'EventType' => 'eventType',
                       'DatasetGroupArn' => 'datasetGroupArn',
                       'TrainingMode' => 'trainingMode'
                     },
  'types' => {
               'PerformAutoML' => {
                                    'type' => 'Bool'
                                  },
               'SolutionVersionArn' => {
                                         'type' => 'Str'
                                       },
               'LastUpdatedDateTime' => {
                                          'type' => 'Str'
                                        },
               'PerformHPO' => {
                                 'type' => 'Bool'
                               },
               'RecipeArn' => {
                                'type' => 'Str'
                              },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'Status' => {
                             'type' => 'Str'
                           },
               'SolutionArn' => {
                                  'type' => 'Str'
                                },
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     },
               'SolutionConfig' => {
                                     'class' => 'Paws::Personalize::SolutionConfig',
                                     'type' => 'Personalize_SolutionConfig'
                                   },
               'DatasetGroupArn' => {
                                      'type' => 'Str'
                                    },
               'TrainingMode' => {
                                   'type' => 'Str'
                                 },
               'EventType' => {
                                'type' => 'Str'
                              },
               'TrainingHours' => {
                                    'type' => 'Num'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::SolutionVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::SolutionVersion object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., TrainingMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::SolutionVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

An object that provides information about a specific version of a
Solution.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The date and time (in Unix time) that this version of the solution was
created.


=head2 DatasetGroupArn => Str

  The Amazon Resource Name (ARN) of the dataset group providing the
training data.


=head2 EventType => Str

  The event type (for example, 'click' or 'like') that is used for
training the model.


=head2 FailureReason => Str

  If training a solution version fails, the reason for the failure.


=head2 LastUpdatedDateTime => Str

  The date and time (in Unix time) that the solution was last updated.


=head2 PerformAutoML => Bool

  When true, Amazon Personalize searches for the most optimal recipe
according to the solution configuration. When false (the default),
Amazon Personalize uses C<recipeArn>.


=head2 PerformHPO => Bool

  Whether to perform hyperparameter optimization (HPO) on the chosen
recipe. The default is C<false>.


=head2 RecipeArn => Str

  The ARN of the recipe used in the solution.


=head2 SolutionArn => Str

  The ARN of the solution.


=head2 SolutionConfig => Personalize_SolutionConfig

  Describes the configuration properties for the solution.


=head2 SolutionVersionArn => Str

  The ARN of the solution version.


=head2 Status => Str

  The status of the solution version.

A solution version can be in one of the following states:

=over

=item *

CREATE PENDING

=item *

CREATE IN_PROGRESS

=item *

ACTIVE

=item *

CREATE FAILED

=back



=head2 TrainingHours => Num

  The time used to train the model. You are billed for the time it takes
to train a model. This field is visible only after Amazon Personalize
successfully trains a model.


=head2 TrainingMode => Str

  The scope of training used to create the solution version. The C<FULL>
option trains the solution version based on the entirety of the input
solution's training data, while the C<UPDATE> option processes only the
training data that has changed since the creation of the last solution
version. Choose C<UPDATE> when you want to start recommending items
added to the dataset without retraining the model.

The C<UPDATE> option can only be used after you've created a solution
version with the C<FULL> option and the training solution uses the
native-recipe-hrnn-coldstart.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

