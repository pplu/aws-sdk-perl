package Paws::EMR::FailureDetails;
  use Moose;
  has LogFile => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Reason => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::FailureDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::FailureDetails object:

  $service_obj->Method(Att1 => { LogFile => $value, ..., Reason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::FailureDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->LogFile

=head1 DESCRIPTION

The details of the step failure. The service attempts to detect the
root cause for many common failures.

=head1 ATTRIBUTES


=head2 LogFile => Str

  The path to the log file where the step failure root cause was
originally recorded.


=head2 Message => Str

  The descriptive message including the error the EMR service has
identified as the cause of step failure. This is text from an error log
that describes the root cause of the failure.


=head2 Reason => Str

  The reason for the step failure. In the case where the service cannot
successfully determine the root cause of the failure, it returns
"Unknown Error" as a reason.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

