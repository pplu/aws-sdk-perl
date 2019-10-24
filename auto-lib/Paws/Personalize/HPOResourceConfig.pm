# Generated from default/object.tt
package Paws::Personalize::HPOResourceConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has MaxNumberOfTrainingJobs => (is => 'ro', isa => Str);
  has MaxParallelTrainingJobs => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxParallelTrainingJobs' => {
                                              'type' => 'Str'
                                            },
               'MaxNumberOfTrainingJobs' => {
                                              'type' => 'Str'
                                            }
             },
  'NameInRequest' => {
                       'MaxParallelTrainingJobs' => 'maxParallelTrainingJobs',
                       'MaxNumberOfTrainingJobs' => 'maxNumberOfTrainingJobs'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::HPOResourceConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::HPOResourceConfig object:

  $service_obj->Method(Att1 => { MaxNumberOfTrainingJobs => $value, ..., MaxParallelTrainingJobs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::HPOResourceConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxNumberOfTrainingJobs

=head1 DESCRIPTION

Describes the resource configuration for hyperparameter optimization
(HPO).

=head1 ATTRIBUTES


=head2 MaxNumberOfTrainingJobs => Str

  The maximum number of training jobs.


=head2 MaxParallelTrainingJobs => Str

  The maximum number of parallel training jobs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

