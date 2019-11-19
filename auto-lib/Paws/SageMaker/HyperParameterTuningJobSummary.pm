# Generated from default/object.tt
package Paws::SageMaker::HyperParameterTuningJobSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw/SageMaker_ResourceLimits SageMaker_TrainingJobStatusCounters SageMaker_ObjectiveStatusCounters/;
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has HyperParameterTuningEndTime => (is => 'ro', isa => Str);
  has HyperParameterTuningJobArn => (is => 'ro', isa => Str, required => 1);
  has HyperParameterTuningJobName => (is => 'ro', isa => Str, required => 1);
  has HyperParameterTuningJobStatus => (is => 'ro', isa => Str, required => 1);
  has LastModifiedTime => (is => 'ro', isa => Str);
  has ObjectiveStatusCounters => (is => 'ro', isa => SageMaker_ObjectiveStatusCounters, required => 1);
  has ResourceLimits => (is => 'ro', isa => SageMaker_ResourceLimits);
  has Strategy => (is => 'ro', isa => Str, required => 1);
  has TrainingJobStatusCounters => (is => 'ro', isa => SageMaker_TrainingJobStatusCounters, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'ResourceLimits' => {
                                     'type' => 'SageMaker_ResourceLimits',
                                     'class' => 'Paws::SageMaker::ResourceLimits'
                                   },
               'HyperParameterTuningJobName' => {
                                                  'type' => 'Str'
                                                },
               'TrainingJobStatusCounters' => {
                                                'type' => 'SageMaker_TrainingJobStatusCounters',
                                                'class' => 'Paws::SageMaker::TrainingJobStatusCounters'
                                              },
               'HyperParameterTuningEndTime' => {
                                                  'type' => 'Str'
                                                },
               'ObjectiveStatusCounters' => {
                                              'class' => 'Paws::SageMaker::ObjectiveStatusCounters',
                                              'type' => 'SageMaker_ObjectiveStatusCounters'
                                            },
               'LastModifiedTime' => {
                                       'type' => 'Str'
                                     },
               'Strategy' => {
                               'type' => 'Str'
                             },
               'HyperParameterTuningJobArn' => {
                                                 'type' => 'Str'
                                               },
               'HyperParameterTuningJobStatus' => {
                                                    'type' => 'Str'
                                                  }
             },
  'IsRequired' => {
                    'TrainingJobStatusCounters' => 1,
                    'CreationTime' => 1,
                    'ObjectiveStatusCounters' => 1,
                    'Strategy' => 1,
                    'HyperParameterTuningJobArn' => 1,
                    'HyperParameterTuningJobStatus' => 1,
                    'HyperParameterTuningJobName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HyperParameterTuningJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HyperParameterTuningJobSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TrainingJobStatusCounters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HyperParameterTuningJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Provides summary information about a hyperparameter tuning job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  The date and time that the tuning job was created.


=head2 HyperParameterTuningEndTime => Str

  The date and time that the tuning job ended.


=head2 B<REQUIRED> HyperParameterTuningJobArn => Str

  The Amazon Resource Name (ARN) of the tuning job.


=head2 B<REQUIRED> HyperParameterTuningJobName => Str

  The name of the tuning job.


=head2 B<REQUIRED> HyperParameterTuningJobStatus => Str

  The status of the tuning job.


=head2 LastModifiedTime => Str

  The date and time that the tuning job was modified.


=head2 B<REQUIRED> ObjectiveStatusCounters => SageMaker_ObjectiveStatusCounters

  The ObjectiveStatusCounters object that specifies the numbers of
training jobs, categorized by objective metric status, that this tuning
job launched.


=head2 ResourceLimits => SageMaker_ResourceLimits

  The ResourceLimits object that specifies the maximum number of training
jobs and parallel training jobs allowed for this tuning job.


=head2 B<REQUIRED> Strategy => Str

  Specifies the search strategy hyperparameter tuning uses to choose
which hyperparameters to use for each iteration. Currently, the only
valid value is Bayesian.


=head2 B<REQUIRED> TrainingJobStatusCounters => SageMaker_TrainingJobStatusCounters

  The TrainingJobStatusCounters object that specifies the numbers of
training jobs, categorized by status, that this tuning job launched.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

