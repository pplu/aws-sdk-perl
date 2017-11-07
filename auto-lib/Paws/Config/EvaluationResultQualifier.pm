package Paws::Config::EvaluationResultQualifier;
  use Moose;
  has ConfigRuleName => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::EvaluationResultQualifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::EvaluationResultQualifier object:

  $service_obj->Method(Att1 => { ConfigRuleName => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::EvaluationResultQualifier object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigRuleName

=head1 DESCRIPTION

Identifies an AWS Config rule that evaluated an AWS resource, and
provides the type and ID of the resource that the rule evaluated.

=head1 ATTRIBUTES


=head2 ConfigRuleName => Str

  The name of the AWS Config rule that was used in the evaluation.


=head2 ResourceId => Str

  The ID of the evaluated AWS resource.


=head2 ResourceType => Str

  The type of AWS resource that was evaluated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

