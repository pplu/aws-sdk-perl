package Paws::Support::Attachment;
  use Moose;
  has Data => (is => 'ro', isa => 'Str', request_name => 'data', traits => ['NameInRequest']);
  has FileName => (is => 'ro', isa => 'Str', request_name => 'fileName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::Attachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::Attachment object:

  $service_obj->Method(Att1 => { Data => $value, ..., FileName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::Attachment object:

  $result = $service_obj->Method(...);
  $result->Att1->Data

=head1 DESCRIPTION

An attachment to a case communication. The attachment consists of the
file name and the content of the file.

=head1 ATTRIBUTES


=head2 Data => Str

  The content of the attachment file.


=head2 FileName => Str

  The name of the attachment file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

