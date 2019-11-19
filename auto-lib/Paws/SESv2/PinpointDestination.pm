# Generated from default/object.tt
package Paws::SESv2::PinpointDestination;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SESv2::Types qw//;
  has ApplicationArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationArn' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PinpointDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::PinpointDestination object:

  $service_obj->Method(Att1 => { ApplicationArn => $value, ..., ApplicationArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::PinpointDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationArn

=head1 DESCRIPTION

An object that defines an Amazon Pinpoint project destination for email
events. You can send email event data to a Amazon Pinpoint project to
view metrics using the Transactional Messaging dashboards that are
built in to Amazon Pinpoint. For more information, see Transactional
Messaging Charts
(https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html)
in the I<Amazon Pinpoint User Guide>.

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

  The Amazon Resource Name (ARN) of the Amazon Pinpoint project that you
want to send email events to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

