package Paws::Support::AttachmentDetails;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', request_name => 'attachmentId', traits => ['NameInRequest']);
  has FileName => (is => 'ro', isa => 'Str', request_name => 'fileName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::AttachmentDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::AttachmentDetails object:

  $service_obj->Method(Att1 => { AttachmentId => $value, ..., FileName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::AttachmentDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachmentId

=head1 DESCRIPTION

The file name and ID of an attachment to a case communication. You can
use the ID to retrieve the attachment with the DescribeAttachment
operation.

=head1 ATTRIBUTES


=head2 AttachmentId => Str

  The ID of the attachment.


=head2 FileName => Str

  The file name of the attachment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

