# Generated by default/object.tt
package Paws::Macie2::ClassificationResultStatus;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', request_name => 'code', traits => ['NameInRequest']);
  has Reason => (is => 'ro', isa => 'Str', request_name => 'reason', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ClassificationResultStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::ClassificationResultStatus object:

  $service_obj->Method(Att1 => { Code => $value, ..., Reason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::ClassificationResultStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

Provides information about the status of a sensitive data finding.

=head1 ATTRIBUTES


=head2 Code => Str

The status of the finding. Possible values are:

=over

=item *

COMPLETE - Amazon Macie successfully completed its analysis of the S3
object that the finding applies to.

=item *

PARTIAL - Macie analyzed only a subset of the data in the S3 object
that the finding applies to. For example, the object is an archive file
that contains files in an unsupported format.

=item *

SKIPPED - Macie wasn't able to analyze the S3 object that the finding
applies to. For example, the object is a file in an unsupported format.

=back



=head2 Reason => Str

A brief description of the status of the finding. Amazon Macie uses
this value to notify you of any errors, warnings, or considerations
that might impact your analysis of the finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

