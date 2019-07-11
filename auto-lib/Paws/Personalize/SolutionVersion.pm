package Paws::Personalize::SolutionVersion;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str', request_name => 'creationDateTime', traits => ['NameInRequest']);
  has DatasetGroupArn => (is => 'ro', isa => 'Str', request_name => 'datasetGroupArn', traits => ['NameInRequest']);
  has EventType => (is => 'ro', isa => 'Str', request_name => 'eventType', traits => ['NameInRequest']);
  has FailureReason => (is => 'ro', isa => 'Str', request_name => 'failureReason', traits => ['NameInRequest']);
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedDateTime', traits => ['NameInRequest']);
  has PerformAutoML => (is => 'ro', isa => 'Bool', request_name => 'performAutoML', traits => ['NameInRequest']);
  has PerformHPO => (is => 'ro', isa => 'Bool', request_name => 'performHPO', traits => ['NameInRequest']);
  has RecipeArn => (is => 'ro', isa => 'Str', request_name => 'recipeArn', traits => ['NameInRequest']);
  has SolutionArn => (is => 'ro', isa => 'Str', request_name => 'solutionArn', traits => ['NameInRequest']);
  has SolutionConfig => (is => 'ro', isa => 'Paws::Personalize::SolutionConfig', request_name => 'solutionConfig', traits => ['NameInRequest']);
  has SolutionVersionArn => (is => 'ro', isa => 'Str', request_name => 'solutionVersionArn', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
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

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., Status => $value  });

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

  If training a solution version fails, the reason behind the failure.


=head2 LastUpdatedDateTime => Str

  The date and time (in Unix time) that the solution was last updated.


=head2 PerformAutoML => Bool

  When true, Amazon Personalize performs a search for the most optimal
recipe according to the solution configuration. When false (the
default), Amazon Personalize uses C<recipeArn>.


=head2 PerformHPO => Bool

  Whether to perform hyperparameter optimization (HPO) on the chosen
recipe. The default is C<false>.


=head2 RecipeArn => Str

  The ARN of the recipe used in the solution.


=head2 SolutionArn => Str

  The ARN of the solution.


=head2 SolutionConfig => L<Paws::Personalize::SolutionConfig>

  Describes the configuration properties for the solution.


=head2 SolutionVersionArn => Str

  The ARN of the solution version.


=head2 Status => Str

  The status of the solution version.

A solution version can be in one of the following states:

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

