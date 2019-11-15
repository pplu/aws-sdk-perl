package Paws::Config::FailedRemediationExceptionBatch;
  use Moose;
  has FailedItems => (is => 'ro', isa => 'ArrayRef[Paws::Config::RemediationException]');
  has FailureMessage => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::FailedRemediationExceptionBatch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::FailedRemediationExceptionBatch object:

  $service_obj->Method(Att1 => { FailedItems => $value, ..., FailureMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::FailedRemediationExceptionBatch object:

  $result = $service_obj->Method(...);
  $result->Att1->FailedItems

=head1 DESCRIPTION

List of each of the failed remediation exceptions with specific
reasons.

=head1 ATTRIBUTES


=head2 FailedItems => ArrayRef[L<Paws::Config::RemediationException>]

  Returns remediation exception resource key object of the failed items.


=head2 FailureMessage => Str

  Returns a failure message. For example, the auto-remediation has
failed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

