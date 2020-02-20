package Paws::SecurityHub::Compliance;
  use Moose;
  has RelatedRequirements => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Status => (is => 'ro', isa => 'Str');
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

  $service_obj->Method(Att1 => { RelatedRequirements => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::Compliance object:

  $result = $service_obj->Method(...);
  $result->Att1->RelatedRequirements

=head1 DESCRIPTION

Exclusive to findings that are generated as the result of a check run
against a specific rule in a supported standard, such as CIS AWS
Foundations. Contains compliance-related finding details.

Values include the following:

=over

=item *

Allowed values are the following:

=over

=item *

C<PASSED> - Compliance check passed for all evaluated resources.

=item *

C<WARNING> - Some information is missing or this check is not supported
given your configuration.

=item *

C<FAILED> - Compliance check failed for at least one evaluated
resource.

=item *

C<NOT_AVAILABLE> - Check could not be performed due to a service
outage, API error, or because the result of the AWS Config evaluation
was C<NOT_APPLICABLE>. If the AWS Config evaluation result was C<
NOT_APPLICABLE>, then after 3 days, Security Hub automatically archives
the finding.

=back

=back


=head1 ATTRIBUTES


=head2 RelatedRequirements => ArrayRef[Str|Undef]

  List of requirements that are related to a standards control.


=head2 Status => Str

  The result of a compliance check.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

