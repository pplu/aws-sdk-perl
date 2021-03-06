# Generated by default/object.tt
package Paws::SecurityHub::Compliance;
  use Moose;
  has RelatedRequirements => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReasons => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StatusReason]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::Compliance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::Compliance object:

  $service_obj->Method(Att1 => { RelatedRequirements => $value, ..., StatusReasons => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::Compliance object:

  $result = $service_obj->Method(...);
  $result->Att1->RelatedRequirements

=head1 DESCRIPTION

Contains finding details that are specific to control-based findings.
Only returned for findings generated from controls.

=head1 ATTRIBUTES


=head2 RelatedRequirements => ArrayRef[Str|Undef]

For a control, the industry or regulatory framework requirements that
are related to the control. The check for that control is aligned with
these requirements.


=head2 Status => Str

The result of a standards check.

The valid values for C<Status> are as follows.

=over

=item *

=over

=item *

C<PASSED> - Standards check passed for all evaluated resources.

=item *

C<WARNING> - Some information is missing or this check is not supported
for your configuration.

=item *

C<FAILED> - Standards check failed for at least one evaluated resource.

=item *

C<NOT_AVAILABLE> - Check could not be performed due to a service
outage, API error, or because the result of the AWS Config evaluation
was C<NOT_APPLICABLE>. If the AWS Config evaluation result was
C<NOT_APPLICABLE>, then after 3 days, Security Hub automatically
archives the finding.

=back

=back



=head2 StatusReasons => ArrayRef[L<Paws::SecurityHub::StatusReason>]

For findings generated from controls, a list of reasons behind the
value of C<Status>. For the list of status reason codes and their
meanings, see Standards-related information in the ASFF
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-results.html#securityhub-standards-results-asff)
in the I<AWS Security Hub User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

