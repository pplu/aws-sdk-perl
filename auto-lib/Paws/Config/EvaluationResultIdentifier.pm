package Paws::Config::EvaluationResultIdentifier;
  use Moose;
  has EvaluationResultQualifier => (is => 'ro', isa => 'Paws::Config::EvaluationResultQualifier');
  has OrderingTimestamp => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::EvaluationResultIdentifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::EvaluationResultIdentifier object:

  $service_obj->Method(Att1 => { EvaluationResultQualifier => $value, ..., OrderingTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::EvaluationResultIdentifier object:

  $result = $service_obj->Method(...);
  $result->Att1->EvaluationResultQualifier

=head1 DESCRIPTION

Uniquely identifies an evaluation result.

=head1 ATTRIBUTES


=head2 EvaluationResultQualifier => L<Paws::Config::EvaluationResultQualifier>

  Identifies an AWS Config rule used to evaluate an AWS resource, and
provides the type and ID of the evaluated resource.


=head2 OrderingTimestamp => Str

  The time of the event that triggered the evaluation of your AWS
resources. The time can indicate when AWS Config delivered a
configuration item change notification, or it can indicate when AWS
Config delivered the configuration snapshot, depending on which event
triggered the evaluation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

