# Generated from default/object.tt
package Paws::SESv2::Body;
  use Moo;
  use Types::Standard qw//;
  use Paws::SESv2::Types qw/SESv2_Content/;
  has Html => (is => 'ro', isa => SESv2_Content);
  has Text => (is => 'ro', isa => SESv2_Content);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Text' => {
                           'class' => 'Paws::SESv2::Content',
                           'type' => 'SESv2_Content'
                         },
               'Html' => {
                           'type' => 'SESv2_Content',
                           'class' => 'Paws::SESv2::Content'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::Body

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::Body object:

  $service_obj->Method(Att1 => { Html => $value, ..., Text => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::Body object:

  $result = $service_obj->Method(...);
  $result->Att1->Html

=head1 DESCRIPTION

Represents the body of the email message.

=head1 ATTRIBUTES


=head2 Html => SESv2_Content

  An object that represents the version of the message that is displayed
in email clients that support HTML. HTML messages can include formatted
text, hyperlinks, images, and more.


=head2 Text => SESv2_Content

  An object that represents the version of the message that is displayed
in email clients that don't support HTML, or clients where the
recipient has disabled HTML rendering.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

