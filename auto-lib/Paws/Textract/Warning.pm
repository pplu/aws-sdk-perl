package Paws::Textract::Warning;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has Pages => (is => 'ro', isa => 'ArrayRef[Int]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::Warning

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Textract::Warning object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., Pages => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Textract::Warning object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

A warning about an issue that occurred during asynchronous text
analysis (StartDocumentAnalysis) or asynchronous document-text
detection (StartDocumentTextDetection).

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code for the warning.


=head2 Pages => ArrayRef[Int]

  A list of the pages that the warning applies to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

