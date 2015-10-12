package Paws::Support::Attachment;
  use Moose;
  has data => (is => 'ro', isa => 'Str');
  has fileName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::Attachment

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::Attachment object:

  $service_obj->Method(Att1 => { data => $value, ..., fileName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::Attachment object:

  $result = $service_obj->Method(...);
  $result->Att1->data

=head1 ATTRIBUTES

=head2 data => Str

  

The content of the attachment file.










=head2 fileName => Str

  

The name of the attachment file.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

