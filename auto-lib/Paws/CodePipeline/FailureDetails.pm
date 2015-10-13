package Paws::CodePipeline::FailureDetails;
  use Moose;
  has externalExecutionId => (is => 'ro', isa => 'Str');
  has message => (is => 'ro', isa => 'Str', required => 1);
  has type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::FailureDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::FailureDetails object:

  $service_obj->Method(Att1 => { externalExecutionId => $value, ..., type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::FailureDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->externalExecutionId

=head1 DESCRIPTION

Represents information about failure details.

=head1 ATTRIBUTES

=head2 externalExecutionId => Str

  The external ID of the run of the action that failed.

=head2 B<REQUIRED> message => Str

  The message about the failure.

=head2 B<REQUIRED> type => Str

  The type of the failure.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

